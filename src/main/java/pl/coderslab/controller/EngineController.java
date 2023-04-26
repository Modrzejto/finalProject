package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.dao.EngineDao;
import pl.coderslab.model.Engine;

@Controller
public class EngineController {
    private final EngineDao engineDao;

    public EngineController(EngineDao engineDao) {
        this.engineDao = engineDao;
    }

    @GetMapping("/add/engine")
    public String viewForm(Model model) {
        Engine engine = new Engine();
        model.addAttribute("Engine", engine);
        return "/addEngine";
    }

    @PostMapping("/add/engine")
    public String addEngine(Engine engine) {
        engineDao.add(engine);
        return "redirect:/add/engine";
    }

    @GetMapping("/engine/list")
    public String listEngines(Model model) {
        model.addAttribute("engines", engineDao.findAllElements());
        return "engineList";
    }

    @GetMapping("/engine/edit/{engineId}")
    public String editEngine(@PathVariable Long engineId, Model model) {
        model.addAttribute("engine", engineDao.findById(engineId));
        return "engineEdit";
    }

    @PostMapping("/engine/edit/submit")
    public String editEngineSubmit(Engine engine) {
        engineDao.update(engine);
        return "redirect:/engine/list";
    }

    @PostMapping("/engine/delete/{engineId}")
    public String removeEngine(@PathVariable Long engineId) {
        engineDao.delete(engineDao.findById(engineId));
        return "redirect:/engine/list";
    }
}

package pl.coderslab.dao;

import org.apache.commons.math3.util.Precision;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Engine;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class EngineDao implements Dao<Engine> {
    @PersistenceContext
    EntityManager em;

    @Override
    public void add(Engine o) {
        o.setDisplacementFormatted(formatDisplacement(o.getDisplacement()));
        em.persist(o);
    }

    @Override
    public Engine findById(Long id) {
        return em.find(Engine.class, id);
    }

    @Override
    public void update(Engine o) {
        em.merge(o);
    }

    @Override
    public void delete(Engine o) {
        em.remove(o);
    }

    @Autowired
    EngineRepo engineRepo;

    public List<Engine> findAllElements() {
        return engineRepo.findAll();
    }

    public Double formatDisplacement(short displacement) {
        return Precision.round((double) displacement / 1000, 1);
    }
}

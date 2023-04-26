package pl.coderslab.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Engine;

@Repository
public interface EngineRepo extends JpaRepository<Engine, Long> { }
package pl.coderslab.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface Dao <O> {
    void add(O o);
    O findById(Long id);
    void update(O o);
    void delete(O o);
}

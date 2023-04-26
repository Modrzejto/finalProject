package pl.coderslab.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.User;

@Repository
public interface UserRepo extends JpaRepository<User, Long> {
    User findUserById(Long id);
    User findUserByUsername(String username);
}

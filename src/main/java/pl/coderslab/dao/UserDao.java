package pl.coderslab.dao;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.User;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class UserDao {
    @PersistenceContext
    EntityManager em;

    @Autowired
    UserRepo userRepo;

    public void addUser(User user) {
        for (User allUser : findAllUsers()) {
            if (user.equals(allUser)) {
                return;
            }
        }
        em.persist(user);
    }

    public void editUser(User user) {
        em.merge(user);
    }

    public void removeUser(User user) {
        em.remove(user);
    }

    public List<User> findAllUsers() {
        return userRepo.findAll();
    }

    public boolean validate(User userToValidate) {
        List<User> users = findAllUsers();
        for (User user : users) {
            if (user.getUsername().equalsIgnoreCase(userToValidate.getUsername()) &&
                    BCrypt.checkpw(userToValidate.getPassword(), user.getPassword())) {
                return true;
            }
        }
        return false;
    }

    public User findUserById(Long id) {
        return userRepo.findUserById(id);
    }

    public User findUserByUsername(String username) {
        return userRepo.findUserByUsername(username);
    }
}

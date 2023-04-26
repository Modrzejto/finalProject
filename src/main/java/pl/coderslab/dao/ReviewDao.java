package pl.coderslab.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Review;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class ReviewDao implements Dao<Review> {
    @PersistenceContext
    EntityManager em;

    @Autowired
    ReviewRepo reviewRepo;

    public List<Review> findAllReviewByCarId(Long carId) {
        return reviewRepo.findAllByCarId(carId);
    }

    @Override
    public void add(Review o) {
        em.persist(o);
    }

    @Override
    public Review findById(Long id) {
        return em.find(Review.class, id);
    }

    @Override
    public void update(Review o) {
        em.merge(o);
    }

    @Override
    public void delete(Review o) {
        em.remove(o);
    }
}

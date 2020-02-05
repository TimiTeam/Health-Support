package ua.unit.tbujalo.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ua.unit.tbujalo.dao.RemediesDAO;
import ua.unit.tbujalo.entity.Remedies;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
public class RemediesDAOImpl implements RemediesDAO {

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Remedies> getAllRemedies() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Remedies> criteriaQuery = criteriaBuilder.createQuery(Remedies.class);
        Root<Remedies> root = criteriaQuery.from(Remedies.class);
        criteriaQuery.select(root);
        Query query = session.createQuery(criteriaQuery);
        return  query.getResultList();
    }

    @Override
    public void addRemedies(Remedies remedies) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(remedies);
    }

    @Override
    public void deleteRemediesById(int remediesId) {
        Session session = sessionFactory.getCurrentSession();
        Remedies remedies = session.byId(Remedies.class).load(remediesId);
        session.delete(remedies);
    }

    @Override
    public Remedies getRemediesById(int remediesId) {
        return sessionFactory.getCurrentSession().byId(Remedies.class).load(remediesId);
    }
}

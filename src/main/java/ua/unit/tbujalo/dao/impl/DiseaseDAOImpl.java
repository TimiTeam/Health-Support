package ua.unit.tbujalo.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ua.unit.tbujalo.entity.Disease;
import ua.unit.tbujalo.dao.DiseaseDAO;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
public class DiseaseDAOImpl implements DiseaseDAO {

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Disease> getAllDisease() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Disease> criteriaQuery = criteriaBuilder.createQuery(Disease.class);
        Root<Disease> root = criteriaQuery.from(Disease.class);
        criteriaQuery.select(root);
        Query query = session.createQuery(criteriaQuery);
        return  query.getResultList();
    }

    @Override
    public void addDisease(Disease disease) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(disease);
    }


    @Override
    public void deleteDiseaseById(int diseaseId){
        Session session = sessionFactory.getCurrentSession();
        Disease disease = session.byId(Disease.class).load(diseaseId);
        session.delete(disease);
    }

    @Override
    public Disease getDiseaseById(int diseaseId) {
        Session session = sessionFactory.getCurrentSession();
        return session.byId(Disease.class).load(diseaseId);
    }

}

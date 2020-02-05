package ua.unit.tbujalo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.unit.tbujalo.dao.RemediesDAO;
import ua.unit.tbujalo.entity.Remedies;
import ua.unit.tbujalo.service.RemediesService;

import java.util.List;

@Service
public class RemediesServiceImpl implements RemediesService {

    @Autowired
    private RemediesDAO remediesDAO;

    @Override
    @Transactional
    public List<Remedies> getAllRemedies() {
        return remediesDAO.getAllRemedies();
    }

    @Override
    @Transactional
    public void addRemedies(Remedies remedies) {
        remediesDAO.addRemedies(remedies);
    }

    @Override
    @Transactional
    public void deleteRemediesById(int remediesId) {
        remediesDAO.deleteRemediesById(remediesId);
    }

    @Override
    @Transactional
    public Remedies getRemediesById(int remediesId) {
        return remediesDAO.getRemediesById(remediesId);
    }
}

package ua.unit.tbujalo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.unit.tbujalo.dao.DiseaseDAO;
import ua.unit.tbujalo.entity.Disease;
import ua.unit.tbujalo.service.DiseaseService;

import java.util.List;

@Service
public class DiseaseServiceImpl implements DiseaseService {

    @Autowired
    private DiseaseDAO diseaseDAO;

    @Override
    @Transactional
    public List<Disease> getAllDisease() {
        return diseaseDAO.getAllDisease();
    }

    @Override
    @Transactional
    public void addDisease(Disease disease) {
        diseaseDAO.addDisease(disease);
    }
}

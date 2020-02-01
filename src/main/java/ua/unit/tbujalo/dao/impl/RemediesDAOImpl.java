package ua.unit.tbujalo.dao.impl;

import ua.unit.tbujalo.dao.RemediesDAO;
import ua.unit.tbujalo.entity.Remedies;
import ua.unit.tbujalo.entity.RemediesType;

import java.util.List;

public class RemediesDAOImpl implements RemediesDAO {

    @Override
    public List<Remedies> getAllRemediesByDiseaseId(int diseaseId) {
        return null;
    }

    @Override
    public List<Remedies> getAllRemediesByRemediesType(RemediesType type) {
        return null;
    }

    @Override
    public List<Remedies> getAllRemediesByDiseaseIdAndRemediesType(int diseaseId, RemediesType type) {
        return null;
    }


}

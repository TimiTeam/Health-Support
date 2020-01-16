package ua.unit.tbujalo.dao;

import ua.unit.tbujalo.entity.Remedies;
import ua.unit.tbujalo.entity.RemediesType;

import java.util.List;

public interface RemediesRepositoryDAO {

    List<Remedies> getAllRemediesByDiseaseId(int diseaseId);

    List<Remedies> getAllRemediesByRemediesType(RemediesType type);

    List<Remedies> getAllRemediesByDiseaseIdAndRemediesType(int diseaseId, RemediesType type);

}

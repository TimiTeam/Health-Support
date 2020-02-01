package ua.unit.tbujalo.dao;

import ua.unit.tbujalo.entity.Disease;

import java.util.List;

public interface DiseaseDAO {

    List<Disease> getAllDisease();

    void addDisease(Disease disease);

    void deleteDiseaseById(int diseaseId);

    Disease getDiseaseById(int diseaseId);

}

package ua.unit.tbujalo.service;

import ua.unit.tbujalo.entity.Disease;

import java.util.List;

public interface DiseaseService {

    List<Disease> getAllDisease();

    void addDisease(Disease disease);

    void deleteDiseaseById(int diseaseId);

    Disease getDiseaseById(int diseaseId);

}

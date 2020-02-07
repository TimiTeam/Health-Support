package ua.unit.tbujalo.dao;

import ua.unit.tbujalo.entity.Remedies;

import java.util.List;

public interface RemediesDAO {

    List<Remedies> getAllRemedies();

    void addRemedies(Remedies remedies);


    void deleteRemediesById(int remediesId);

    Remedies getRemediesById(int remediesId);
}

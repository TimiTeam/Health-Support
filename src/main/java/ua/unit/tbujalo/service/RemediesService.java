package ua.unit.tbujalo.service;

import ua.unit.tbujalo.entity.Remedies;
import java.util.List;

public interface RemediesService {

    List<Remedies> getAllRemedies();

    void addRemedies(Remedies remedies);

    void deleteRemediesById(int remediesId);

    Remedies getRemediesById(int remediesId);
}

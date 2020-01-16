package ua.unit.tbujalo.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import ua.unit.tbujalo.entity.Disease;
import ua.unit.tbujalo.dao.DiseaseRepositoryDAO;

import javax.sql.DataSource;
import java.util.List;

public class DiseaseRepositoryDAOImpl implements DiseaseRepositoryDAO {

    @Autowired
    private DataSource dataSource;

    @Override
    public List<Disease> getAllDisease() {
        return null;
    }

}

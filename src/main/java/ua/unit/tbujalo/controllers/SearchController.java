package ua.unit.tbujalo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.unit.tbujalo.entity.Disease;
import ua.unit.tbujalo.service.DiseaseService;

import java.util.List;

@Controller
@RequestMapping("search/")
public class SearchController {

    @Autowired
    private DiseaseService diseaseService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getSearchPage(Model model){
        List<Disease> list = diseaseService.getAllDisease();
        model.addAttribute("allDisease", list);
        return "search";
    }
}

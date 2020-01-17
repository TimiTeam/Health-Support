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
public class DiseaseController {

    @Autowired
    private DiseaseService diseaseService;

    @RequestMapping(value = "search/", method = RequestMethod.GET)
    public String getSearchPage(Model model){
        List<Disease> list = diseaseService.getAllDisease();
        model.addAttribute("allDisease", list);
        return "search";
    }

    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public String updateDisease(Model model){
        List<Disease> list = diseaseService.getAllDisease();
        model.addAttribute("allDisease", list);
        return "diseaseUpdate";
    }

    @RequestMapping(value = "/update/add", method = RequestMethod.GET)
    public String addNewDisease(Model model){
        Disease disease = new Disease();
        model.addAttribute("newDisease", disease);
        return "addNewDisease";
    }


    @RequestMapping(value = "/update/add", method = RequestMethod.POST)
    public String saveNewDisease(Model model){
        Disease disease = new Disease();
        model.addAttribute("newDisease", disease);
        return "redirect:/update";
    }
}

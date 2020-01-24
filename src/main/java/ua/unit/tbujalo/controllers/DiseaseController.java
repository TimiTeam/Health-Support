package ua.unit.tbujalo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.unit.tbujalo.entity.Disease;
import ua.unit.tbujalo.service.DiseaseService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping(value = "/manage")
public class DiseaseController {

    @Autowired
    private DiseaseService diseaseService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String manageDisease(Model model){
        List<Disease> list = diseaseService.getAllDisease();
        model.addAttribute("allDisease", list);
        return "diseaseManage";
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newDisease(Model model){
        model.addAttribute("disease", new Disease());
        return "addNewDisease";
    }


    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public String updateDisease(Model model){
        Disease disease = new Disease();
        model.addAttribute("newDisease", disease);
        return "redirect:/update/";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String delateDisease(Model model){
        Disease disease = new Disease();
        model.addAttribute("newDisease", disease);
        return "redirect:/manage/";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addDisease(@Valid @ModelAttribute("disease")Disease disease,
                             BindingResult bindingResult, Model model){
        if(bindingResult.hasErrors()){
            return "error";
        }
        diseaseService.addDisease(disease);
        return "diseaseManage";
    }
}

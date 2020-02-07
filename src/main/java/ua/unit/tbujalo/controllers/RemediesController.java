package ua.unit.tbujalo.controllers;

import org.apache.log4j.Logger;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import ua.unit.tbujalo.entity.Disease;
import ua.unit.tbujalo.entity.Remedies;
import ua.unit.tbujalo.service.DiseaseService;
import ua.unit.tbujalo.service.RemediesService;

import javax.validation.Valid;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/remedies")
public class RemediesController {

    private static final Logger logger = Logger.getLogger(RemediesController.class);

    private List<Disease> diseaseList = new ArrayList<>();

    private DiseaseService diseaseService;

    private RemediesService remediesService;

    @Autowired
    public void setDiseaseService(DiseaseService diseaseService) {
        this.diseaseService = diseaseService;
    }

    @Autowired
    public void setRemediesService(RemediesService remediesService) {
        this.remediesService = remediesService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String manageRemedies(Model model){
        List<Remedies> allRemedies = remediesService.getAllRemedies();
        model.addAttribute("allRemedies", allRemedies);

        model.addAttribute("message", "");
        return "remediesManage";
    }


    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newRemedies(Model model){
        diseaseList = diseaseService.getAllDisease();

        model.addAttribute("remedies", new Remedies());
        return "addNewRemedies";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String delete(@RequestParam("id") int id,  Model model){
        remediesService.deleteRemediesById(id);

        model.addAttribute("message", "Success");
        return "redirect:/remedies/";
    }

    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public String update(@RequestParam("id") int id,  Model model){
        Remedies remedies = remediesService.getRemediesById(id);
        model.addAttribute("remedies", remedies);
        logger.debug("\tUPDATE id: "+remedies);
        return "addNewRemedies";
    }

    @RequestMapping(value = "/new/ajax", method = RequestMethod.POST)
    public @ResponseBody String ajaxMessage(@Valid @RequestParam(name = "text") String text){
        List<String> result = new ArrayList<>();

        diseaseList.forEach(disease -> {
            if (disease.getName().contains(text))
                result.add(disease.getName());
        });

        String jsonStr = "Error";
        try {
            jsonStr = new ObjectMapper().writeValueAsString(result);
        }
        catch (IOException e){
            logger.debug("Error creating json response"+e.getMessage());
        }
        return jsonStr;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addRemedies(@Valid @ModelAttribute("remedies")Remedies remedies,
                              BindingResult bindingResult, Model model){

        if(bindingResult.hasErrors()){
            return "error";
        }
        logger.debug("\tSAVE id: "+remedies);
        remediesService.addRemedies(remedies);
        model.addAttribute("message", "Success");
        return "redirect:/remedies/";
    }

}

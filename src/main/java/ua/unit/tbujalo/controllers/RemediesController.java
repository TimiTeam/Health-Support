package ua.unit.tbujalo.controllers;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import ua.unit.tbujalo.entity.Remedies;
import ua.unit.tbujalo.service.DiseaseService;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/remedies")
public class RemediesController {

    private static final Logger logger = Logger.getLogger(RemediesController.class);

    private DiseaseService diseaseService;

    @Autowired
    public void setDiseaseService(DiseaseService diseaseService) {
        this.diseaseService = diseaseService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String manageRemedies(Model model){
        return "remediesManage";
    }


    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newRemedies(Model model){
        model.addAttribute("remedies", new Remedies());
        return "addNewRemedies";
    }


    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addRemedies(@Valid @ModelAttribute("remedies")Remedies remedies, @RequestParam(name = "diseases") Map<String, String> selectDiseases,
                              BindingResult bindingResult, Model model){
        /*if(bindingResult.hasErrors()){
            return "error";
        }*/

        for(Map.Entry<String, String> e : selectDiseases.entrySet()){
            logger.debug("key: "+e.getKey()+" value: "+e.getValue());
        }

        return "redirect:/remedies/";
    }

    @ResponseBody
    @RequestMapping(value = "/ajax", method = RequestMethod.GET)
    public ResponseEntity<List<String>> ajaxMessage(@Valid @RequestParam(name = "text") String text){
        List<String> response = new ArrayList<>();
        if ("Hello".equals(text)){
            response.add("World");
        }
        response.add("Timur");
        logger.debug("in axaj");
        try {
            return new ResponseEntity<>(response, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }
}

package ua.unit.tbujalo.controllers;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class HomeController {
    private final Logger logger = Logger.getLogger(HomeController.class.getName());

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String homePage(Model model){
        model.addAttribute("message", "Hello dear guest!");
        if (model.containsAttribute("welcome")){
            logger.info("attribute is set");
        }else
            logger.error("attribute didn't set");
        return "home";
    }
}

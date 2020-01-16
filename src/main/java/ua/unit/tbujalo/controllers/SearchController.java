package ua.unit.tbujalo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("search/")
public class SearchController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getSearchPage(Model model){
        return "search";
    }
}

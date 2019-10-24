package edu.wctc;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class TravelController {
    @Value("#{gradeLevelsProp}")
    private Map<String, String> gradeLevelsMap;

    @RequestMapping("/")
    public String showForm(Model model){
        model.addAttribute("bill", new ExchangeStudent());
        model.addAttribute("countries", new CountryOptions());
        model.addAttribute("gradeLevelsAttr", gradeLevelsMap);
       return "travel-form";
    }

    @RequestMapping("/processForm")
    public String processForm(@ModelAttribute("bill") ExchangeStudent student){
        System.out.println(student.getHomeCountry());
        return "travel-confirmation";
    }

}

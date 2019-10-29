package edu.wctc;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.Map;

@Controller
public class TravelController {
    @Value("#{gradeLevelsProp}")
    private Map<String, String> gradeLevelsMap;

    @RequestMapping("/")
    public String showForm(Model model) {
        model.addAttribute("bill", new ExchangeStudent());
        model.addAttribute("countries", new CountryOptions());
        model.addAttribute("gradeLevelsAttr", gradeLevelsMap);
        model.addAttribute("travelsBy", TravelMethod.values());
        return "travel-form";
    }

    @RequestMapping("/processForm")
    public String processForm(@Valid @ModelAttribute("bill") ExchangeStudent student, BindingResult bindingResult, Model model) {
        System.out.println(student.getHomeCountry());
        if (bindingResult.hasErrors()) {
            return "travel-form";
        }
        return "travel-confirmation";
    }

    public void initBinder(WebDataBinder wdb) {
        StringTrimmerEditor ste = new StringTrimmerEditor(true);
        wdb.registerCustomEditor(String.class, ste);
    }


}

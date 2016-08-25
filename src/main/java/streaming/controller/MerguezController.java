/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import streaming.dto.MerguezDTO;

/**
 *
 * @author admin
 */
@Controller
public class MerguezController {
    
    @RequestMapping(value = "/merguez", method=RequestMethod.GET)
    public String merguezGET(Model m){
        
        
        
        m.addAttribute("merguez", new MerguezDTO());
        
        return "merguez_form";   
    }
    
    
    @RequestMapping(value = "/merguez", method=RequestMethod.POST)
    public String merguezPOST(@ModelAttribute ("merguez") @Valid MerguezDTO merguez, BindingResult result){
        
 //       initialisation d'une erreur
//        int a=0, b=2;
//        int c=b/a;
        
        if (result.hasErrors())
        return "merguez_form";   
        
        return "redirect:/home";
    }
}

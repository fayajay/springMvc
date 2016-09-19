/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import streaming.entity.Utilisateur;
import streaming.service.UserCrudService;

/**
 *
 * @author kellyleclerc
 */
@Controller
public class UserController {
    
    @Autowired
    private UserCrudService userService;
    
    @RequestMapping(value="/user_ajouter", method = RequestMethod.GET)
    public String ajourterUserGET(Model m) {
        
        m.addAttribute("titre", "YIPIHOUPIHOUPI-MOVIE");
        
        Utilisateur u = new Utilisateur();
        
        m.addAttribute("user", u);
        
        return "user_ajouter";   
    }
    
    @RequestMapping(value = "/user_ajouter", method = RequestMethod.POST)
    public String ajouterUserPOST (@ModelAttribute("user") Utilisateur u) {
        
        userService.save(u);
        
        return "redirect:/home";
    }
}

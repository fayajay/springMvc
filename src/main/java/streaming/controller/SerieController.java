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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import streaming.entity.Serie;
import streaming.service.SerieCrudService;

/**
 *
 * @author admin
 */
@Controller
public class SerieController {
    
    @Autowired
    private SerieCrudService serieService;
    
    @RequestMapping(value = "/serie_lister", method = RequestMethod.GET)
    public String listerSerie(Model m ){
        
        m.addAttribute("titre", "YIPIHOUPIHOUPI-MOVIE");
        
        
        Iterable<Serie> series = serieService.findAll();
        
        m.addAttribute("listSerie", series);
        
        return "liste_des_series";   
    }
    
    @RequestMapping(value = "/serie_ajouter", method = RequestMethod.POST)
    public String ajouterPOST( @ModelAttribute("serie") Serie s) {
        
        serieService.save(s);
        
        return "redirect:/serie_lister";
                
    }
    
    @RequestMapping(value = "/serie_ajouter", method = RequestMethod.GET)
    public String ajouterGET(Model m) {
        
        m.addAttribute("titre", "YIPIHOUPIHOUPI-MOVIE");
        
        Serie s = new Serie();
        
        m.addAttribute("serie", s);
        
        return "serie_ajouter";
    }
    
    @RequestMapping (value = "/supprimer_serie/{idSerie}", method = RequestMethod.GET)
    public String supprimer(@PathVariable("idSerie") Long idS) {
        
        serieService.delete(idS);
        
        return "redirect:/serie_lister";    
    }
    
    @RequestMapping (value = "/modifier_serie/{idSerie}", method = RequestMethod.GET)
   public String listerDansModifier(@PathVariable("idSerie") Long idS, Model m) {
       
       m.addAttribute("titre", "YIPIHOUPIHOUPI-MOVIE");
        
        m.addAttribute("serie", serieService.findOne(idS));
        
        return "modifier_serie";      
    }
   
   @RequestMapping (value = "/modifier_serie/{idSerie}", method = RequestMethod.POST)
   public String modifier(@PathVariable("idSerie") Long idS, @ModelAttribute("serie") Serie s) {
       
       s.setId(idS);
       serieService.save(s);
        
        return "redirect:/serie_lister";
    }
    
}

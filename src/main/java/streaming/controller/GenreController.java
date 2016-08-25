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
import streaming.entity.Genre;
import streaming.service.GenreCrudService;

/**
 *
 * @author admin
 */
@Controller
public class GenreController {
    
    @Autowired
    private GenreCrudService genreService;
    
    @RequestMapping(value = "/genre_lister", method = RequestMethod.GET)
    public String listerGenre(Model m) {
        
        m.addAttribute("titre", "YIPIHOUPIHOUPI-MOVIE");
        
        Iterable<Genre> genres = genreService.findAllByOrderByNom();
        
        m.addAttribute("listGenre", genres);
        
        return "liste_des_genres";
    }
    
    @RequestMapping(value = "/genre_ajouter", method = RequestMethod.POST)
    public String ajouterPOST( @ModelAttribute("genre") Genre g) {
        
        genreService.save(g);
        
        return "redirect:/genre_lister";
                
    }
    
    @RequestMapping(value = "/genre_ajouter", method = RequestMethod.GET)
    public String ajouterGET(Model m) {
        
        m.addAttribute("titre", "YIPIHOUPIHOUPI-MOVIE");
        
        Genre g = new Genre();
        
        m.addAttribute("genre", g);
        
        return "genre_ajouter";
    }
    
    @RequestMapping (value = "/supprimer_genre/{idGenre}", method = RequestMethod.GET)
    public String supprimer(@PathVariable("idGenre") Long idG) {
        
        genreService.delete(idG);
        
        return "redirect:/genre_lister";    
    }
    
    @RequestMapping (value = "/modifier_genre/{idGenre}", method = RequestMethod.GET)
   public String listerDansModifier(@PathVariable("idGenre") Long idG, Model m) {
       
       m.addAttribute("titre", "YIPIHOUPIHOUPI-MOVIE");
        
        m.addAttribute("genre", genreService.findOne(idG));
        
        return "modifier_genre";      
    }
   
   @RequestMapping (value = "/modifier_genre/{idGenre}", method = RequestMethod.POST)
   public String modifier(@PathVariable("idGenre") Long idG, @ModelAttribute("genre") Genre g) {
       
       g.setId(idG);
       genreService.save(g);
        
        return "redirect:/genre_lister";
    }
    
}

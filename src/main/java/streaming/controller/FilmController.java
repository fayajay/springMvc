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
import streaming.dto.Film3DTO;
import streaming.entity.Film;
import streaming.entity.Genre;
import streaming.service.FilmCrudService;
import streaming.service.GenreCrudService;

/**
 *
 * @author tom
 */
@Controller
public class FilmController {
    
    @Autowired
    private FilmCrudService filmService;
    @Autowired
    private GenreCrudService genreService;
    
    @RequestMapping(value = "/film_ajouter", method = RequestMethod.POST)
    public String ajouterPOST( @ModelAttribute("film") Film f) {
        
        // persist
        filmService.save(f);
        
        // forward vers la jsp
        return "redirect:/film_lister";
                
    }
    
    @RequestMapping(value = "/film_ajouter", method = RequestMethod.GET)
    public String ajouterGET(Model m) {
        
        m.addAttribute("titre", "YIPIHOUPIHOUPI-MOVIE");
        
        // initialise un nouveau film vide
        Film f = new Film();
        // ajoute film au model
        m.addAttribute("film", f);
        
        Iterable<Genre> genres = genreService.findAllByOrderByNom();
        m.addAttribute("genres", genres);
        
        
        //ajoute des valeurs par defaut
        //f.setAnneeProd(1998L);
        
        // forward vers jsp
        return "film_ajouter";
    }
    
    @RequestMapping(value = "/film_lister", method = RequestMethod.GET)
    public String listerTous(Model m) {
        
        m.addAttribute("titre", "YIPIHOUPIHOUPI-MOVIE");
        
        // recup liste des films
        Iterable<Film> films = filmService.findAll();
        // ajoute attribut au model
        m.addAttribute("listFilm", films);
        // retourne vers la jsp
        return "liste_des_films";
    }
    
    @RequestMapping (value = "/supprimer_film/{idFilm}", method = RequestMethod.GET)
    public String supprimer(@PathVariable("idFilm") Long idF) {
        
        filmService.delete(idF);
        
        return "redirect:/film_lister";    
    }
    
   @RequestMapping (value = "/modifier_film/{idFilm}", method = RequestMethod.GET)
   public String listerDansModifier(@PathVariable("idFilm") Long idF, Model m) {
       
       m.addAttribute("titre", "YIPIHOUPIHOUPI-MOVIE");
        
        m.addAttribute("film", filmService.findOne(idF));
        
        m.addAttribute("genres", genreService.findAllByOrderByNom());
        
        return "modifier_film";      
    }
   
   @RequestMapping (value = "/modifier_film/{idFilm}", method = RequestMethod.POST)
   public String modifier(@PathVariable("idFilm") Long idF, @ModelAttribute("film") Film f) {
       
       f.setId(idF);
       filmService.save(f);
        
        return "redirect:/film_lister";
    }
    
    @RequestMapping(value = "/ajouter_3_films", method =RequestMethod.GET)
   public String ajouter3FilmGET(Model m) {
       
        m.addAttribute("titre", "YIPIHOUPIHOUPI-MOVIE");
       
        m.addAttribute("dto", new Film3DTO());
        
        m.addAttribute("genres", genreService.findAllByOrderByNom());
        
       
       return "ajouter_3_films";
   }
   
   @RequestMapping(value = "/ajouter_3_films", method = RequestMethod.POST)
   public String ajouter3FilmPOST(@ModelAttribute("dto") Film3DTO monDto) {
   
       Film f1 = new Film();
       f1.setTitre(monDto.getFilm1().getTitre());
       f1.setAnneeProd(monDto.getFilm1().getAnneeProd());
       f1.setGenre(monDto.getFilm1().getGenre());
       filmService.save(f1);
       
       Film f2 = new Film();
       f2.setTitre(monDto.getFilm2().getTitre());
       f2.setAnneeProd(monDto.getFilm2().getAnneeProd());
       f2.setGenre(monDto.getFilm2().getGenre());
       filmService.save(f2);
       
       Film f3 = new Film();
       f3.setTitre(monDto.getFilm3().getTitre());
       f3.setAnneeProd(monDto.getFilm3().getAnneeProd());
       f3.setGenre(monDto.getFilm3().getGenre());
       filmService.save(f3);
           
       
       return "redirect:/film_lister";
   }
}
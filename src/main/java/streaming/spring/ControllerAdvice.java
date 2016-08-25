/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.spring;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author admin
 */
@org.springframework.web.bind.annotation.ControllerAdvice
public class ControllerAdvice {
    
    @ExceptionHandler(Exception.class)
    public ModelAndView exceptionHandler(Exception e) {
        
        ModelAndView mod = new ModelAndView();
        
        mod.getModel().put("messageErreur", e.getMessage());
        
        mod.setViewName("pageErreur");
        
        return mod;
        
    }
    
}

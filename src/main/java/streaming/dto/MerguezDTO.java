/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.dto;



import javax.validation.constraints.Size;

/**
 *
 * @author admin
 */
public class MerguezDTO {
    
    
    @Size(min = 3, max = 10, message="Entre 3 et 10 lettres CONNARD !!!!")
    private String saucisse;
    
    private String chipolata;
    
    private String brochette;

    public String getSaucisse() {
        return saucisse;
    }

    public void setSaucisse(String saucisse) {
        this.saucisse = saucisse;
    }

    public String getChipolata() {
        return chipolata;
    }

    public void setChipolata(String chipolata) {
        this.chipolata = chipolata;
    }

    public String getBrochette() {
        return brochette;
    }

    public void setBrochette(String brochette) {
        this.brochette = brochette;
    }
    
    
    
}

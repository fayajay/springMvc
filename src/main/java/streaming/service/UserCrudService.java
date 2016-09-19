/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.service;


import org.springframework.data.repository.CrudRepository;
import streaming.entity.Utilisateur;

/**
 *
 * @author kellyleclerc
 */
public interface UserCrudService extends CrudRepository<Utilisateur, Long>{
    
    public Utilisateur connexion(String login, String mdp);
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.service;

import java.util.List;
import projectebotigabio.domain.ComandaDetail;

/**
*       Definició de comandaDetailService
*       @Author Jonatan Barrio
*       @Version: 2.0 
*       Servei emprat guardar, esborrar, llistar o obtenir comandesDetail per id.
*       Actualment no es fa servir al projecte, pero es deixa aqui per si en un futur es vol continuar millorant l'aplicació.
*/
public interface ComandaDetailService {
    
     public boolean saveComandaDetail(ComandaDetail comandaDetail);
    	
    public boolean deleteComandaDetailById(Long id);                   
        
    ComandaDetail getComandaDetailById(Long id);   
        
    List<ComandaDetail> getAllComandesDetail(); 
    
}

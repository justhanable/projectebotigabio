/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.service;

import projectebotigabio.domain.Comanda;
import java.util.List;

/**
*       Definició de comandaService
*       @Author Grup3 DAW
*       @Version: 2.0 
*       Servei que implementa el repositori per tal de guardar, esborrar, llistar o obtenir comandes per id.
*/
public interface ComandaService {
    
    public boolean saveComanda(Comanda comanda);
    	
    public boolean deleteComandaById(Long id);                   
        
    Comanda getComandaById(Long id);   
        
    List<Comanda> getAllComandes(); 
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.service;

import projectebotigabio.domain.Comanda;
import java.util.List;


/**
 *
 * @author jonat
 */
public interface ComandaService {
    
    public boolean saveComanda(Comanda comanda);
    	
    public boolean deleteComandaById(Long id);                   
        
    Comanda getComandaById(Long id);   
        
    List<Comanda> getAllComandes(); 
    
    
}

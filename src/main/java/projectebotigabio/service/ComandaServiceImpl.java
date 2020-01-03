/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import projectebotigabio.domain.Comanda;
import projectebotigabio.repository.ComandaRepository;

/**
 *
 * @author jonat
 */
@Service
public class ComandaServiceImpl implements ComandaService {
    
    // injeccio dependencies repositori		
    private ComandaRepository repository;
		
    public ComandaServiceImpl() {		
		
    }
    
    @Autowired		
    public ComandaServiceImpl(ComandaRepository repository) {			
        super();			
        this.repository = repository;		
    }

    @Override
    public boolean saveComanda(Comanda comanda) {
         
        try {                                
            repository.save(comanda);                                
            return true;                        
        }catch(Exception ex) {                              
            return false;                      
        }
    }

    @Override
    public boolean deleteComandaById(Long id) {
                               
        try {                                                            
            repository.deleteById(id);                                                          
            return true;                        
        }catch(Exception ex) {                                                          
            return false;                       
        }               
    }
    

    @Override
    public Comanda getComandaById(Long id) {                         
        Comanda comanda = repository.findById(id).get();                   
        return comanda;
    }

    @Override
    public List<Comanda> getAllComandes() {
         List list = new ArrayList();                      
         repository.findAll().forEach(e -> list.add(e));                        
         return list;
    }
    
}

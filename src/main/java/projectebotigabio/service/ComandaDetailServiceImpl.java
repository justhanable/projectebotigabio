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
import projectebotigabio.domain.ComandaDetail;
import projectebotigabio.repository.ComandaDetailRepository;

/**
*       Definició de comandaDetailServiceImpl
*       @Author Jonatan Barrio
*       @Version: 2.0 
*       Servei que implementa el repositori per tal de guardar, esborrar, llistar o obtenir comandesDetail per id.
*       Actualment no es fa servir al projecte, pero es deixa aqui per si en un futur es vol continuar millorant l'aplicació.
*/
@Service
public class ComandaDetailServiceImpl implements ComandaDetailService{
    
// injeccio dependencies repositori		
    private ComandaDetailRepository repository;
		
    public ComandaDetailServiceImpl() {		
		
    }
    
    @Autowired		
    public ComandaDetailServiceImpl(ComandaDetailRepository repository) {			
        super();			
        this.repository = repository;		
    }
    @Override
    public boolean saveComandaDetail(ComandaDetail comandaDetail) {
        try {                                
            repository.save(comandaDetail);
            return true;                        
        }catch(Exception ex) {                              
            return false;                      
        }
    }

    @Override
    public boolean deleteComandaDetailById(Long id) {
                
        try {                                                            
            repository.deleteById(id);                                                          
            return true;                        
        }catch(Exception ex) {                                                          
            return false;                       
        } 
    }

    @Override
    public ComandaDetail getComandaDetailById(Long id) {
        ComandaDetail comandaDetail = repository.findById(id).get();                   
        return comandaDetail;
    }

    @Override
    public List<ComandaDetail> getAllComandesDetail() {
              
        List list = new ArrayList();                      
         repository.findAll().forEach(e -> list.add(e));                        
         return list;
    }
    
}

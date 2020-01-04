/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.service;

import java.util.List;
import projectebotigabio.domain.ComandaDetail;

/**
 *
 * @author jonat
 */
public interface ComandaDetailService {
    
     public boolean saveComandaDetail(ComandaDetail comandaDetail);
    	
    public boolean deleteComandaDetailById(Long id);                   
        
    ComandaDetail getComandaDetailById(Long id);   
        
    List<ComandaDetail> getAllComandesDetail(); 
    
}

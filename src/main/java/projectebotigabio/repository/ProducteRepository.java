/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.repository;

import java.util.List;
import org.jboss.logging.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import projectebotigabio.domain.Producte;

/**
 *
 * @author jonat
 */  

@Repository
public interface ProducteRepository  extends  JpaRepository<Producte, Long> {
    
//    Producte getProducteById(Long id);
//    
//    List<Producte> getAllProductes();  
//
      //List<Producte> getProductesByCategoria(String producteCategoria);
//    @Query("select * from producte c where c.producteCategoria = :producteCategoria")
//    List<Producte> findByproducteCategoria(String producteCategoria);
    List<Producte> findByproducteCategoria(String producteCategoria);
        
    
//  public boolean saveProducte(Producte producte);
//    
  // public boolean deleteProducteById(Long id);


}


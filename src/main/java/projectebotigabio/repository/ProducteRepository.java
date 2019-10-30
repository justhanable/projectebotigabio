/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import projectebotigabio.domain.Producte;

/**
 *
 * @author jonat
 */  

@Repository
public interface ProducteRepository extends CrudRepository<Producte, Long>{
	
}


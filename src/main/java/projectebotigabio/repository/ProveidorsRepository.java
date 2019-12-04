/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import projectebotigabio.domain.Proveidors;

/**
 *
 * @author Fran
 */  

@Repository
public interface ProveidorsRepository  extends  JpaRepository<Proveidors, Long> {
    

    List<Proveidors> findByproveidorCategoria(String proveidorCategoria);
        
    


}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import projectebotigabio.domain.ComandaDetail;

/**
 *
 * @author jonat
 */

@Repository
public interface ComandaDetailRepository  extends  JpaRepository<ComandaDetail, Long>{
    
}

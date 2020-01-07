/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import projectebotigabio.domain.Comanda;

/**
*       Definició de comandaRepository
*       @Author Jonatan Barrio
*       @Version: 2.0 
*       Repositori de comanda. Hereta els metodes del repositori JPA
*/

@Repository
public interface ComandaRepository  extends  JpaRepository<Comanda, Long> {
    
}

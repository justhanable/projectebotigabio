/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.repository;
/**
*       Definició de comandaDetail
*       @Author Jonatan Barrio
*       @Version: 2.0 
*       Repositori de comandaDetail. Hereta els metodes del repositori JPA
*       Actualment no es fa servir al projecte, pero es deixa aqui per si en un futur es vol continuar millorant l'aplicació.
*/

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import projectebotigabio.domain.ComandaDetail;



@Repository
public interface ComandaDetailRepository  extends  JpaRepository<ComandaDetail, Long>{
    
}

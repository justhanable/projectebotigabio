
package projectebotigabio.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import projectebotigabio.domain.Producte;

/**
 *
 * @author Jonatan Barrio
 */  

@Repository
public interface ProducteRepository  extends  JpaRepository<Producte, Long> {
    
    List<Producte> findByproducteCategoria(String producteCategoria);
      
    @Query(value="Select * from producte where producteNom like %:nom%", nativeQuery = true)
    List<Producte> findByproducteNom (@Param("nom")String nom);
    
}

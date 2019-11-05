
package projectebotigabio.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import projectebotigabio.domain.Producte;

/**
 *
 * @author Jonatan Barrio
 */  

@Repository
public interface ProducteRepository  extends  JpaRepository<Producte, Long> {
    

    List<Producte> findByproducteCategoria(String producteCategoria);
        
    


}




/**
*       Repositori de proveïdor, mostra proveïdors
*       @Author Grup3 DAW
*       @Version: 2.0 
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

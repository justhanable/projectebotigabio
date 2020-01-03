

/**
*       Repositori de producte, per tal de cercar per categoria i llistar
*       @Author Grup3 DAW
*       @Version: 2.0 
*       Cerca per categoria o per nom amb una consulta SQL a base de dades
*/

package projectebotigabio.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import projectebotigabio.domain.Producte;


@Repository
public interface ProducteRepository  extends  JpaRepository<Producte, Long> {
    
    List<Producte> findByproducteCategoria(String producteCategoria);
      
    @Query(value="Select * from producte where producteNom like %:producteNom% and producteCategoria like %:producteCategoria%", nativeQuery = true)
    List<Producte> search (@Param("producteNom")String producteNom, @Param("producteCategoria")String producteCategoria);
    
    @Query(value="Select * from producte where producteNom like %:producteNom%", nativeQuery = true)
    List<Producte> search (@Param("producteNom")String producteNom);

}

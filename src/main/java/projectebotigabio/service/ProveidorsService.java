

/**
*       Servei per tal de guardar, esborrar o llistar proveïdors
*       @Author Grup3 DAW
*       @Version: 2.0 
*       Permet llistar els proveidors de la botiga a nivell informatiu
*/


package projectebotigabio.service;


import java.util.List;
import projectebotigabio.domain.Proveidors;

    public interface ProveidorsService {

	
        List<Proveidors> getAllProveidors();  
        public boolean saveProveidors(Proveidors proveidors);
	public boolean deleteProveidorsById(Long id);                   
        Proveidors getProveidorsById(Long id);   
        List<Proveidors> getProveidorsByCategoria(String proveidorCategoria);

    }
    
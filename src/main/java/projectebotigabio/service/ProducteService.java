

/**
*       Servei per tal de guardar, esborrar o llistar productes
*       @Author Grup3 DAW
*       @Version: 2.0 
*/



package projectebotigabio.service;

import java.util.List;
import projectebotigabio.domain.Producte;

    public interface ProducteService {

	public boolean saveProducte(Producte producte);
	public boolean deleteProducteById(Long id);                   
        Producte getProducteById(Long id);   
        List<Producte> getAllProductes();  
        List<Producte> getProductesByCategoria(String producteCategoria);
        //List<Producte> getProducteByNom(String producteNom);
        public List <Producte> search(String producteNom, String producteCategoria);
        public List <Producte> search(String producteNom);


    }
    


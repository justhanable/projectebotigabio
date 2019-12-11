



/**
*       Servei que implementa el repositori per tal de guardar, esborrar o llistar productes
*       @Author Grup3 DAW
*       @Version: 2.0 
*/

package projectebotigabio.service;
import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import projectebotigabio.domain.Producte;
import projectebotigabio.repository.ProducteRepository;

@Service

public class ProducteServiceImpl implements ProducteService {

		// injeccio dependencies repositori
		private ProducteRepository repository;
		
		public ProducteServiceImpl() {		
		}
		
		@Autowired
		public ProducteServiceImpl(ProducteRepository repository) {
			super();
			this.repository = repository;
		}
		
                @Override
                public List getAllProductes() {
                        List list = new ArrayList();
                        repository.findAll().forEach(e -> list.add(e));
                        return list;
                }

                @Override
                public Producte getProducteById(Long id) {
                        Producte producte = repository.findById(id).get();
                        return producte;
                }

                @Override
                public boolean saveProducte(Producte producte) {
                        try {
                                repository.save(producte);
                                return true;
                        }catch(Exception ex) {
                                return false;
                        }
                }

                @Override
                public boolean deleteProducteById(Long id) {
                        try {                                
                            repository.deleteById(id);                              
                            return true;
                        }catch(Exception ex) {                              
                            return false;
                        }
                }

                @Override
                public List<Producte> getProductesByCategoria(String producteCategoria) {
                  return repository.findByproducteCategoria(producteCategoria);        
                }
                
                @Override
                public List<Producte> search(String producteNom, String producteCategoria){                      
                    return repository.search(producteNom, producteCategoria);
                }
                @Override
                public List<Producte> search(String producteNom){                      
                    return repository.search(producteNom);
                }

}
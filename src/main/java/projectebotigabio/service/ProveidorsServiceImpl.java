/**
*       Servei que implementa el repositori per tal de guardar, esborrar o llistar proveïdors
*       @Author Grup3 DAW
*       @Version: 2.0 
*/


package projectebotigabio.service;

import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import projectebotigabio.domain.Proveidors;
import projectebotigabio.repository.ProveidorsRepository;

@Service

public class ProveidorsServiceImpl implements ProveidorsService {

		// injeccio dependencies repositori
		private ProveidorsRepository repository;
		
		public ProveidorsServiceImpl() {		
		}
		
		@Autowired
		public ProveidorsServiceImpl(ProveidorsRepository repository) {
			super();
			this.repository = repository;
		}
		
                @Override
                public List getAllProveidors() {
                        List list = new ArrayList();
                        repository.findAll().forEach(e -> list.add(e));
                        return list;
                }
                  @Override
                public Proveidors getProveidorsById(Long id) {
                        Proveidors proveidors = repository.findById(id).get();
                        return proveidors;
                }

                @Override
                public boolean saveProveidors(Proveidors proveidors) {
                        try {
                                repository.save(proveidors);
                                return true;
                        }catch(Exception ex) {
                                return false;
                        }
                }

                @Override
                public boolean deleteProveidorsById(Long id) {
                        try {                                
                            repository.deleteById(id);                              
                            return true;
                        }catch(Exception ex) {                              
                            return false;
                        }
                }

                @Override
                public List<Proveidors> getProveidorsByCategoria(String proveidorCategoria) {
                  return repository.findByproveidorCategoria(proveidorCategoria);      
                  
                }

              
}
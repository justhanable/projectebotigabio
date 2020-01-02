

package projectebotigabio.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import projectebotigabio.domain.Producte;
import projectebotigabio.repository.ProducteRepository;


/**
 * SERVEI REST PER TAL DE MOSTRAR PRODUCTES
 * @author Grup 3 DAW
 * @version 3.0
 * 
 */

@RestController
@RequestMapping("/administracio/rest")
public class ApiController {
    
    @Autowired
    private ProducteRepository repository;
    
    @RequestMapping(method= RequestMethod.GET)
    public List<Producte> getAllProductes(){
        return repository.findAll();
        
    }
    
}



package projectebotigabio.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import projectebotigabio.domain.Producte;
import projectebotigabio.domain.Proveidors;
import projectebotigabio.repository.ProducteRepository;
import projectebotigabio.repository.ProveidorsRepository;


/**
 * SERVEI REST PER TAL DE MOSTRAR PRODUCTES
 * @author Grup 3 DAW
 * @version 3.0
 * Ens permet consultar productes per preu, així com els que tenen un stock inferior a "X"
 */

@RestController
@RequestMapping("/administracio/rest")
public class ApiController {
    
    @Autowired
    private ProducteRepository repository;
    private ProveidorsRepository proveidorepository;
    
    //Mostra tots els productes
    @RequestMapping(value="/productes",method= RequestMethod.GET)
    public List<Producte> getAllProductes(){
        return repository.findAll();
        
    }
    //Mostra els productes que tenen poc stock (menor a 70 )
    @RequestMapping(value="/stockbaix", method= RequestMethod.GET)
    public List<Producte> getProductesStockBaix(){
        
        List<Producte> productes = repository.findAll();
        List<Producte> stockBaix = new ArrayList<>();
        for (Producte product : productes){
            if(product.getProducteStock()<70){
                stockBaix.add(product);
            }
            
        }
        return stockBaix;
    }
    
    //Mostra productes amb preu menor al que passem per pàrametre
    @RequestMapping(value="/productepreu/{preu}", method= RequestMethod.GET)
    public List<Producte> getProductesPerPreu(@PathVariable Float preu){
        
        List<Producte> productes = repository.findAll();
        List<Producte> productesPreu = new ArrayList<>();
        for (Producte product : productes){
            if(product.getProductePreu()<= preu){
                productesPreu.add(product);
            }
            
        }
        return productesPreu;
    }
    //Mostra productes per categoria
    @RequestMapping(value="/productes/{categoria}", method= RequestMethod.GET)
    public List<Producte> getProductesPerCategoria(@PathVariable String categoria){
        return repository.findByproducteCategoria(categoria);
    }
        
    
    //Mostra els proveidors
    /*@RequestMapping(value="/proveidors", method= RequestMethod.GET)
    public List<Proveidors> getAllProveidors(){
        return proveidorepository.findAll();
        
    }
    */
}

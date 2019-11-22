/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import projectebotigabio.domain.Producte;
import projectebotigabio.repository.ProducteRepository;

/**
 *
 * @author Xavi
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

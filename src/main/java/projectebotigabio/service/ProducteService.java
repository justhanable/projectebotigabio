/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.service;

import java.util.List;
import projectebotigabio.domain.Producte;

/**
 *
 * @author Jonatan Barrio
 */
    public interface ProducteService {

	public boolean saveProducte(Producte producte);
	public boolean deleteProducteById(Long id);                   
        Producte getProducteById(Long id);   
        List<Producte> getAllProductes();  
        List<Producte> getProductesByCategoria(String producteCategoria);

    }
    


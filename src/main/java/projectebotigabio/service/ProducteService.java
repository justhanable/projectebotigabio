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
 * @author jonat
 */
public interface ProducteService {
    

	public List getAllProductes();
	public Producte getProducteById(Long id);
	public boolean saveProducte(Producte producte);
	public boolean deleteProducteById(Long id);
        List<Producte> getProductesByTipus(String tipus);

}
    


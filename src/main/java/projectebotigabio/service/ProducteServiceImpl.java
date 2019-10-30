/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.service;

/**
 *
 * @author jonat
 */

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import projectebotigabio.domain.Producte;
import projectebotigabio.repository.ProducteRepository;

@Service
@Transactional
public class ProducteServiceImpl implements ProducteService {

		// Implementing Constructor based DI
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
    public List<Producte> getProductesByTipus(String tipus) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

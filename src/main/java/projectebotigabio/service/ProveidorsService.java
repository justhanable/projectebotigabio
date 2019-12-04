/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.service;


import java.util.List;
import projectebotigabio.domain.Proveidors;

/**
 *
 * @author Fran
 */
    public interface ProveidorsService {

	
        List<Proveidors> getAllProveidors();  
        public boolean saveProveidors(Proveidors proveidors);
	public boolean deleteProveidorsById(Long id);                   
        Proveidors getProveidorsById(Long id);   
        List<Proveidors> getProveidorsByCategoria(String proveidorCategoria);

    }
    
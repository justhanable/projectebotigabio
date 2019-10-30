/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import projectebotigabio.domain.Producte;
import projectebotigabio.service.ProducteService;
/**
 *
 * @author jonat
 */

@Controller
public class ProducteController {
    
        private ProducteService producteService;

	public ProducteController() {

	}

	@Autowired
	public ProducteController(ProducteService producteService) {
		this.producteService = producteService;
	}


	// Get All Users
	@RequestMapping(value = "/allProductes", method = RequestMethod.GET)
	public ModelAndView displayAllProductes() {
		System.out.println("Productes Page Requested : All Productes");
		ModelAndView mv = new ModelAndView();
		List producteList = producteService.getAllProductes();
		mv.addObject("ProducteList", producteList);
		mv.setViewName("allProductes");
                		System.out.println(producteList + " !! aqui esta la productlist");

		return mv;
	}

	@RequestMapping(value = "/addProducte", method = RequestMethod.GET)
	public ModelAndView displayNewProducteForm() {
		ModelAndView mv = new ModelAndView("addProducte");
		mv.addObject("headerMessage", "Add producte Details");
		mv.addObject("producte", new Producte());
		return mv;
	}

	@RequestMapping(value = "/addProducte", method = RequestMethod.POST)
	public ModelAndView saveNewProducte(@ModelAttribute Producte producte, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/home");

		if (result.hasErrors()) {
			return new ModelAndView("error");
		}
		boolean isAdded = producteService.saveProducte(producte);
		if (isAdded) {
			mv.addObject("message", "New producte successfully added");
		} else {
			return new ModelAndView("error");
		}

		return mv;
	}

	@RequestMapping(value = "/editProducte/{id}", method = RequestMethod.GET)
	public ModelAndView displayEditUserForm(@PathVariable Long id) {
		ModelAndView mv = new ModelAndView("/editProducte");
		Producte producte = producteService.getProducteById(id);
		mv.addObject("headerMessage", "Edit Producte Details");
		mv.addObject("producte", producte);
		return mv;
	}

	@RequestMapping(value = "/editProducte/{id}", method = RequestMethod.POST)
	public ModelAndView saveEditedProducte(@ModelAttribute Producte producte, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/home");

		if (result.hasErrors()) {
			System.out.println(result.toString());
			return new ModelAndView("error");
		}
		boolean isSaved = producteService.saveProducte(producte);
		if (!isSaved) {

			return new ModelAndView("error");
		}

		return mv;
	}

	@RequestMapping(value = "/deleteProducte/{id}", method = RequestMethod.GET)
	public ModelAndView deleteProducteById(@PathVariable Long id) {
		boolean isDeleted = producteService.deleteProducteById(id);
		System.out.println("Producte deletion respone: " + isDeleted);
		ModelAndView mv = new ModelAndView("redirect:/home");
		return mv;

	}

}

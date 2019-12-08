package projectebotigabio.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import projectebotigabio.domain.Producte;
import projectebotigabio.service.ProducteService;

/**
 *
 * @author Jonatan Barrio
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

	// Obtenir tots els productes
	@RequestMapping(value = "/allProductes", method = RequestMethod.GET)
	public ModelAndView displayAllProductes() {
		System.out.println("Peticio de pagina sol.licitada : All Productes");
		ModelAndView mv = new ModelAndView();
		List producteList = producteService.getAllProductes();
		mv.addObject("ProducteList", producteList);
		mv.setViewName("allProductes");

		return mv;
	}

	@RequestMapping(value = "/administracio/addProducte", method = RequestMethod.GET)
	public ModelAndView displayNewProducteForm() {
		ModelAndView mv = new ModelAndView("addProducte");
		mv.addObject("headerMessage", "Afegir detalls al producte");
		mv.addObject("producte", new Producte());
		return mv;
	}

	@RequestMapping(value = "/administracio/addProducte", method = RequestMethod.POST)
	public ModelAndView saveNewProducte(@ModelAttribute Producte producte, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/administracio");

		if (result.hasErrors()) {
			return new ModelAndView("error");
		}
		boolean isAdded = producteService.saveProducte(producte);
		if (isAdded) {
			mv.addObject("message", "Nou producte correctament afegit");
		} else {
			return new ModelAndView("error");
		}

		return mv;
	}

	@RequestMapping(value = "/administracio/editProducte/{id}", method = RequestMethod.GET)
	public ModelAndView displayEditUserForm(@PathVariable Long id) {
		ModelAndView mv = new ModelAndView("/editProducte");
		Producte producte = producteService.getProducteById(id);
		mv.addObject("headerMessage", "Editar detalls del producte");
		mv.addObject("producte", producte);
		return mv;
	}

	@RequestMapping(value = "/administracio/editProducte/{id}", method = RequestMethod.POST)
	public ModelAndView saveEditedProducte(@ModelAttribute Producte producte, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/administracio");

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

	@RequestMapping(value = "/administracio/deleteProducte/{id}", method = RequestMethod.GET)
	public ModelAndView deleteProducteById(@PathVariable Long id) {
		boolean isDeleted = producteService.deleteProducteById(id);
		System.out.println("Eliminacio del producte: " + isDeleted);
		ModelAndView mv = new ModelAndView("redirect:/administracio");
		return mv;
	}
     
        @RequestMapping(value = "/producte/{producteCategoria}", method = RequestMethod.GET)
        public ModelAndView getProductesByCategoria(@PathVariable("producteCategoria") String producteCategoria) {

            ModelAndView modelview = new ModelAndView("/productes");     		
            List productesPerCategoria = producteService.getProductesByCategoria(producteCategoria);
            modelview.addObject("productesPerCategoria", productesPerCategoria);
            modelview.addObject("categoriaEscollida", producteCategoria);            
            return modelview;
        }      
               
        /**Mètode que permet cercar productes. Depenent de si té el parametre de la request per defecte 'tots' o no el té, farà la
         * crida a un metode del servei o un altre mitjançant un if:
         * 
         * 
         * @param producteNom 
         * @param producteCategoria
         * @return retorna la vista amb els resultats trobats.
         */
        @RequestMapping(value = "/search", method = RequestMethod.GET)
        public ModelAndView search(@RequestParam String producteNom, @RequestParam(defaultValue="tots") String producteCategoria) {
            
            if(producteCategoria.equals("tots")){
               
                List<Producte> result = producteService.search(producteNom);
                
                if(result.isEmpty()){
                    return new ModelAndView("errorNotFoundProducte");
                }
                
                ModelAndView mav = new ModelAndView("producteCercador");
                mav.addObject("result", result);
                return mav;               
                
            } else{
           
                List<Producte> result = producteService.search(producteNom, producteCategoria);
                ModelAndView mav = new ModelAndView("producteCercador");
                mav.addObject("result", result);
                return mav;
            }
        }
        

}

        




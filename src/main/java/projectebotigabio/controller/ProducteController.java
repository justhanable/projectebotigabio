/**
*       Controlador de productes, permet realitzar les diferents operacions 
*       @Author Grup3 DAW
*       @Version: 2.0 
*       Controlador de producte, permet afegir, editar i esborrar productes
*/


package projectebotigabio.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
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

import projectebotigabio.domain.Comanda;
import projectebotigabio.domain.ComandaDetail;
import projectebotigabio.domain.Producte;
import projectebotigabio.service.ComandaDetailService;
import projectebotigabio.service.ComandaService;
import projectebotigabio.service.ProducteService;


@Controller
public class ProducteController {
    
        private ProducteService producteService;
        private ComandaService comandaService;               
        //private ComandaDetailService comandaDetailService;


	public ProducteController() {
	}

	@Autowired
	public ProducteController(ProducteService producteService, ComandaService comandaService) {
		this.producteService = producteService;
                this.comandaService = comandaService;
                         
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
        
        @RequestMapping(value = {"/search", "/producte/search"}, method = RequestMethod.GET)
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
        
                
	@RequestMapping(value = "/comprar/compraProducte", method = RequestMethod.GET)
        public ModelAndView buyProducte() {

            ModelAndView modelview = new ModelAndView("compraProducte");  
            modelview.addObject("comanda", new Comanda());            
             
            return modelview;
        }      
        
        	
        @RequestMapping(value = "/comprar/compraProducte", method = RequestMethod.POST)
        public ModelAndView buyProducte(@ModelAttribute Comanda comanda, BindingResult result) {
             
            
             ModelAndView mv = new ModelAndView("redirect:/comprar/compraProducteFinal");

		if (result.hasErrors()) {
                    
			return new ModelAndView("error");
		}
                		
                boolean isAdded = comandaService.saveComanda(comanda);
               // boolean isAddedDetail = comandaDetailService.saveComandaDetail(comandaDetail);

		if (isAdded ) {                                                             
			mv.addObject("message", "Nova comanda correctament afegida");
		} else {
			return new ModelAndView("error");
		}

		return mv;
        }
        	
        @RequestMapping(value = "/comprar/compraProducteFinal", method = RequestMethod.GET)
        public ModelAndView buyProducteFinal() {

            ModelAndView modelview = new ModelAndView("compraProducteFinal");       
             
            return modelview;
        }   
        
}

        




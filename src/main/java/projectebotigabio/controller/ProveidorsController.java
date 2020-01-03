/**
*       Controlador de proveïdors, permet realitzar les diferents operacions 
*       @Author Grup3 DAW
*       @Version: 2.0 
*       Permet llistar els proveïdors de la Botiga, enllaçant amb la vista proveidors
*/

package projectebotigabio.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import projectebotigabio.domain.Proveidors;
import projectebotigabio.service.ProveidorsService;



@Controller
public class ProveidorsController {
    
        private ProveidorsService proveidorsService;

	public ProveidorsController() {
	}

	@Autowired
	public ProveidorsController(ProveidorsService proveidorsService) {
		this.proveidorsService = proveidorsService;
	}

	// Obtenir tots els proveidors
	@RequestMapping(value = "/allProveidors", method = RequestMethod.GET)
	public ModelAndView displayAllProveidors() {
		System.out.println("Peticio de pagina sol.licitada : All Proveidors");
		ModelAndView mv = new ModelAndView();
		List proveidorsList = proveidorsService.getAllProveidors();
		mv.addObject("ProveidorsList", proveidorsList);
		mv.setViewName("allProveidors");

		return mv;
	}
@RequestMapping(value = "/administracio/addProveidors", method = RequestMethod.GET)
	public ModelAndView displayNewProveidorsForm() {
		ModelAndView mv = new ModelAndView("addProveidors");
		mv.addObject("headerMessage", "Afegir detalls al proveïdor");
		mv.addObject("proveidors", new Proveidors());
		return mv;
	}

	@RequestMapping(value = "/administracio/addProveidors", method = RequestMethod.POST)
	public ModelAndView saveNewaddProveidors(@ModelAttribute Proveidors proveidors, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/administracio");

		if (result.hasErrors()) {
			return new ModelAndView("error");
		}
		boolean isAdded = proveidorsService.saveProveidors(proveidors);
		if (isAdded) {
			mv.addObject("message", "Nou proveïdor correctament afegit");
		} else {
			return new ModelAndView("error");
		}

		return mv;
	}
        @RequestMapping(value = "/administracio/editProveidors/{id}", method = RequestMethod.GET)
	public ModelAndView displayEditUserForm(@PathVariable Long id) {
		ModelAndView mv = new ModelAndView("/editProveidors");
		Proveidors proveidors = proveidorsService.getProveidorsById(id);
		mv.addObject("headerMessage", "Editar detalls del proveïdor");
		mv.addObject("proveidors", proveidors);
		return mv;
	}

	@RequestMapping(value = "/administracio/editProveidors/{id}", method = RequestMethod.POST)
	public ModelAndView saveEditedProveidors(@ModelAttribute Proveidors proveidors, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/administracio");

		if (result.hasErrors()) {
			System.out.println(result.toString());
			return new ModelAndView("error");
		}
		boolean isSaved = proveidorsService.saveProveidors(proveidors);
		if (!isSaved) {

			return new ModelAndView("error");
		}
		return mv;
	}

	@RequestMapping(value = "/administracio/deleteProveidors/{id}", method = RequestMethod.GET)
	public ModelAndView deleteProveidorsById(@PathVariable Long id) {
		boolean isDeleted = proveidorsService.deleteProveidorsById(id);
		System.out.println("Eliminacio del Proveidor: " + isDeleted);
		ModelAndView mv = new ModelAndView("redirect:/administracio");
		return mv;
	}
     
        @RequestMapping(value = "/proveidors/{proveidorCategoria}", method = RequestMethod.GET)
        public ModelAndView getProveidorsByCategoria(@PathVariable("proveidorCategoria") String proveidorCategoria) {
            System.out.println("Peticio de pagina sol.licitada : getProveidorsByCategoria "+ proveidorCategoria);
            ModelAndView modelview = new ModelAndView("/proveidors");     		
            List proveidorsPerCategoria = proveidorsService.getProveidorsByCategoria(proveidorCategoria);
            modelview.addObject("proveidorsPerCategoria", proveidorsPerCategoria);
            modelview.addObject("categoriaProveidorEscollida", proveidorCategoria);            
            return modelview;
        }   
        @RequestMapping(value = "/proveidors", method = RequestMethod.GET)
	public ModelAndView displayAllProveidors2() {
		System.out.println("Peticio de pagina sol.licitada : All Proveidors");
		ModelAndView mv = new ModelAndView();
		List proveidorsList = proveidorsService.getAllProveidors();
		mv.addObject("ProveidorsList", proveidorsList);
		//mv.setViewName("allProveidors");

		return mv;
	}
        
       
	
}
        



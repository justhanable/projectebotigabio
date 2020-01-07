/**
*       Controlador d'usuaris, permet realitzar les diferents operacions 
*       @Author Grup3 DAW
*       @Version: 2.0 
*       Controlador de la part d'usuari per tal de  verificar el login, així com els diferents rols.
*/


package projectebotigabio.controller;


import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import projectebotigabio.domain.User;
import projectebotigabio.service.ProducteService;
import projectebotigabio.service.ProveidorsService;
import projectebotigabio.service.UserService;

@Controller
public class UserController {
	
	private UserService userService;
        private ProducteService producteService;
        private ProveidorsService proveidorsService;
        
	public UserController() {

	}

	@Autowired
	public UserController(UserService userService, ProducteService producteService, ProveidorsService proveidorsService) {
		this.userService = userService;
                this.producteService = producteService;
                this.proveidorsService = proveidorsService;
	}

        //Pàgina home
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public ModelAndView hello(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
        
       
        //Pàgina d'administració, es mostren tots els usuaris i productes, es poden modificar i eliminar
        @RequestMapping(value = "/administracio", method = RequestMethod.GET)
	public ModelAndView administracio() {
            ModelAndView mv = new ModelAndView();
		List userList = userService.getAllUsers();
                List producteList = producteService.getAllProductes();
		mv.addObject("ProducteList", producteList);
                List proveidorsList = proveidorsService.getAllProveidors();
		mv.addObject("ProveidorsList", proveidorsList);
		mv.addObject("userList", userList);
		mv.setViewName("administracio");
		return mv;
            
        }

	// Mostra tots els usuaris
	@RequestMapping(value = "/administracio/allUsers", method = RequestMethod.GET)
	public ModelAndView displayAllUser() {
		System.out.println("User Page Requested : All Users");
		ModelAndView mv = new ModelAndView();
		List userList = userService.getAllUsers();
		mv.addObject("userList", userList);
		mv.setViewName("allUsers");
		return mv;
	}
        //Es mostra la pàgina de registre d'usuari
	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public ModelAndView displayNewUserForm() {
		ModelAndView mv = new ModelAndView("addUser");
		mv.addObject("headerMessage", "Registre d'usuari");
		mv.addObject("user", new User());
		return mv;
	}
        
        
        //Registre d'usuari
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String saveNewUser(@Valid @ModelAttribute User user, BindingResult result) {
		    
            if (result.hasErrors()) {
                    return "addUser";
            }
            //A l'hora del registre habilitem i fiquem rol d'usuari automàticament
            user.setEnabled(true);
            user.setRoles("ROLE_USER");
            userService.saveUser(user);

            return "redirect:/addUser.html?success=true";
	}
        
        
        //Es crea la pàgina de login
        @GetMapping("login")
        public String login(){
            return "login";
        }
	/*@RequestMapping(value = "/editUser/{id}", method = RequestMethod.GET)
        //Només l'admin o l'usuari especific pot modificar les seves dades
        //@PreAuthorize("hasRole('ADMIN') || @userServiceImpl.isUser(id)")
        //@PreAuthorize("hasRole('ADMIN') or #id == principal.username")
	public ModelAndView displayEditUserForm(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("/editUser");
		User user = userService.getUserById(id);
		mv.addObject("headerMessage", "Edit User Details");
		mv.addObject("user", user);
		return mv;
	}
        */
        
        
        
        //Es mostren les dades d'usuari i dona l'opcio de modificar-les
        @RequestMapping(value = "/usuari/{username}", method = RequestMethod.GET)
	public ModelAndView displayEditUserFormByUsername(@PathVariable String username) {
		ModelAndView mv = new ModelAndView("/usuari");
		User user = userService.getUserByUsername(username);
		mv.addObject("headerMessage", "Edit User Details");
		mv.addObject("user", user);
		return mv;
	}

        //Modifica les dades d'usuari
        //
	@RequestMapping(value = "/usuari/{username}", method = RequestMethod.POST)
	public ModelAndView saveEditedUser(@Valid @ModelAttribute User user, BindingResult result) {
            ModelAndView mv = new ModelAndView();
            //Només mirem si hi ha algun problema de validació en el camp de noms i cognoms i amb el password
            if (result.hasErrors()) {
                if(result.hasFieldErrors("name")||result.hasFieldErrors("password")){
                    mv.addObject("errors", result);
                    mv.setViewName("usuari");
                   return mv;    
                }else{
                    userService.saveUser(user);
                    mv.setViewName("redirect:/usuari/{username}.html?success=true");
                    return mv;
                    
                }
                 
            }
            boolean isSaved = userService.saveUser(user);
            mv.setViewName("redirect:/usuari/{username}.html?success=true");
            return mv;
           
	}
       

        //Mètode per eliminar usuaris
	@RequestMapping(value = "/administracio/deleteUser/{id}", method = RequestMethod.GET)
	public ModelAndView deleteUserByUsername(@PathVariable int id) {
		boolean isDeleted = userService.deleteUserById(id);
		ModelAndView mv = new ModelAndView("redirect:/administracio");
		return mv;

	}
        //Mostra la pàgina de contacte
        @RequestMapping(value = { "/contacte" }, method = RequestMethod.GET)
        public ModelAndView contacte() {
            ModelAndView mv = new ModelAndView("contacte");
            return mv;

        }
        //Mostra la pàgina contacteOk que enviará el formulari mitjançant mail
        @RequestMapping(value = { "/contacteOk" }, method = RequestMethod.POST)
        public ModelAndView contactePost() {
            ModelAndView mv = new ModelAndView("contacteOk");
            return mv;

        }
        
        //Mostra la pàgina d'Avís Legal
        @RequestMapping(value = { "/avisLegal" }, method = RequestMethod.GET)
        public ModelAndView avisLegal() {
            ModelAndView mv = new ModelAndView("avisLegal");
            return mv;

        }
        
        //Mostra la pàgina de Polítiques de privacitat
        @RequestMapping(value = { "/politica" }, method = RequestMethod.GET)
        public ModelAndView politiques() {
            ModelAndView mv = new ModelAndView("politica");
            return mv;

        }
        
        //Mostra la pàgina d'accessibilitat
        @RequestMapping(value = { "/accessibilitat" }, method = RequestMethod.GET)
        public ModelAndView accessibilitat() {
            ModelAndView mv = new ModelAndView("accessibilitat");
            return mv;

        }
        

}



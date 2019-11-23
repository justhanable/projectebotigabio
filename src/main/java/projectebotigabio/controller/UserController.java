/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.controller;

/**
 *
 * @author jonat
 */
import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

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
import projectebotigabio.service.UserService;

@Controller
public class UserController {
	// Constructor based Dependency Injection
	private UserService userService;
        private ProducteService producteService;
        
	public UserController() {

	}

	@Autowired
	public UserController(UserService userService, ProducteService producteService) {
		this.userService = userService;
                this.producteService = producteService;
	}


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
		mv.addObject("userList", userList);
		mv.setViewName("administracio");
		return mv;
            
        }

	// Get All Users
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
        //Es registra l'usuari i es torna a la pàgina home
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public ModelAndView saveNewUser(@ModelAttribute User user, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/home");

		if (result.hasErrors()) {
			return new ModelAndView("error");
		}
                //A l'hora del registre habilitem i fiquem rol d'usuari automàticament
                user.setEnabled(true);
                user.setRoles("ROLE_USER");
		boolean isAdded = userService.saveUser(user);
		if (isAdded) {
			mv.addObject("message", "Registre completat amb èxit.");
		} else {
			return new ModelAndView("error");
		}

		return mv;
	}
        /*
        @RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginFormDisplay() {
		ModelAndView mv = new ModelAndView("/login");
                
		return mv;
	}
        */
        
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
        
        //Només l'admin o l'usuari especific pot modificar les seves dades -- NO FUNCIONA
        //@PreAuthorize("hasRole('ADMIN') || @userServiceImpl.isUser(id)")
        //@PreAuthorize("hasRole('ADMIN') or #id == principal.username")
        @RequestMapping(value = "/usuari/{username}", method = RequestMethod.GET)
	public ModelAndView displayEditUserFormByUsername(@PathVariable String username) {
		ModelAndView mv = new ModelAndView("/usuari");
		User user = userService.getUserByUsername(username);
		mv.addObject("headerMessage", "Edit User Details");
		mv.addObject("user", user);
		return mv;
	}

        //Modifica les dades d'usuari
        
	@RequestMapping(value = "/usuari/{username}", method = RequestMethod.POST)
	public ModelAndView saveEditedUser(@ModelAttribute User user, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/home");

		if (result.hasErrors()) {
                        ModelAndView mav = new ModelAndView("error");
                        mav.addObject("errors",result.getAllErrors());
			System.out.println(result.toString());
			return mav;
		}
		boolean isSaved = userService.saveUser(user);
		if (!isSaved) {
                        ModelAndView mav = new ModelAndView("error");
                        mav.addObject("errors",result.getAllErrors());
			System.out.println(result.toString());
			return mav;
			
		}

		return mv;
	}
        
        

        //Mètode per eliminar usuaris
	@RequestMapping(value = "/administracio/deleteUser/{username}", method = RequestMethod.GET)
	public ModelAndView deleteUserByUsername(@PathVariable String username) {
		boolean isDeleted = userService.deleteUserByUsername(username);
		System.out.println("User deletion respone: " + isDeleted);
		ModelAndView mv = new ModelAndView("redirect:/home");
		return mv;

	}

}



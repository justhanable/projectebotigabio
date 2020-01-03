/**
*       Historia de la botiga BIO i consells saludables
*       @Author Grup3 DAW
*       @Version: 2.0 
*       Controlador per mostrar la vista de la història de la botiga BIO, redirigeix a la vista historia.jsp
*/

package projectebotigabio.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class Historia {
    

	public Historia() {
	}

	@Autowired


	// La nostra història
        
	@RequestMapping(value = "/Historia", method = RequestMethod.GET)
	public ModelAndView Historia() {
		System.out.println("Peticio de pagina sol.licitada : Historia");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Historia");

		return mv;
	}
}
        



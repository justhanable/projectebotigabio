
/**
*       Inicialitza servlet 
*       @Author Grup3 DAW
*       @Version: 2.0 
*       Agafa la ruta relativa per tal de poder mapejar amb el servlet.
*/


package projectebotigabio.config;


import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;


public class ServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { HibernateConfig.class , WebSecurityConfig.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] { WebMvcConfig.class };
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}


}
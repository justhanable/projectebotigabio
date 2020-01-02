/**
*       Configuració de seguretat d'usuaris
*       @Author Grup3 DAW
*       @Version: 2.0 
*       Fa servir els usuaris de la taula de base de dades usuaris, així com els rols
*/


package projectebotigabio.config;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration 
//Pot aplicar seguretat als mètodes
@EnableGlobalMethodSecurity(prePostEnabled=true)
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

  @Autowired
  private DataSource dataSource;

  @Override
  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
      //users fa la autentificacio i authorities la autoritzacio
    auth.jdbcAuthentication().dataSource(dataSource)
            .passwordEncoder(passwordEncoder())
        .usersByUsernameQuery("select username, password, enabled"
            + " from usuaris where username=?")
        .authoritiesByUsernameQuery("select username, roles"
            + " from usuaris where username=?");
        
  }

  @Override
  protected void configure(HttpSecurity http) throws Exception {
      //demana autorització a les seguents pàgines
    http.csrf().disable().authorizeRequests().antMatchers("/administracio/**").hasRole("ADMIN")
        .antMatchers("/usuari").authenticated()
        .and()
        .formLogin()
        .loginPage("/login").permitAll();
      
  }
  
  @Bean
	public PasswordEncoder passwordEncoder(){
		PasswordEncoder encoder = new BCryptPasswordEncoder();
		return encoder;
	}
}

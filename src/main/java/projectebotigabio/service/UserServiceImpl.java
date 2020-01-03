


/**
*       Servei que implementa el repositori d'usuaris
*       @Author Grup3 DAW
*       @Version: 2.0 
*       Implementa el servei d'usuari per tal de cercar usuaris, esborrar-los guardar-los o verificar-los per e-mail
*/


package projectebotigabio.service;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManagerFactory;

import javax.transaction.Transactional;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service; 

import projectebotigabio.domain.User;
import projectebotigabio.repository.UserRepository;

@Service

public class UserServiceImpl implements UserService {

        // Implementing Constructor based DI
        private UserRepository repository;

        public UserServiceImpl() {

        }

        @Autowired
        public UserServiceImpl(UserRepository repository) {
                super();
                this.repository = repository;
        }
        
        
	@Override
	public List getAllUsers() {
		List list = new ArrayList();
		repository.findAll().forEach(e -> list.add(e));
		return list;
	}

	@Override
	public User getUserById(int id) {
		User user = repository.findById(Long.valueOf(id)).get();
		return user;
	}
        
	@Override
	public boolean saveUser(User user) {
		try {   
                    //Abans de guardar l'usuari a la base de dades, hem de codificar la contrasenya
                    BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
                    user.setPassword(passwordEncoder.encode(user.getPassword()));
                    repository.save(user);
                    return true;     
		}catch(Exception ex) {
			return false;
		}
	}

	@Override
	public boolean deleteUserByUsername(String username) {
		try {
                        repository.deleteByUsername(username);
			return true;
		}catch(Exception ex) {
			return false;
		}
		
	}
        // Compara si l'usuari actual es igual a un id
        /*
        public boolean isUser(int id){
            Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            String identificador="";
            if (principal instanceof User) {
                identificador = Long.toString(((User)principal).getId());
            } else {
                identificador = principal.toString();
            }
            
            if(identificador.equals(id)){
                return true;
            }else{
                return false;
            }
        }
*/

    @Override
    public User getUserByUsername(String username) {
        return repository.findByUsername(username);
    }

    @Override
    public boolean deleteUserById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User getUserByEmail(String email) {
        return repository.findByEmail(email);
    }
        
        

    

}
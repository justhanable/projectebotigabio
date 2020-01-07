


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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service; 

import projectebotigabio.domain.User;
import projectebotigabio.repository.UserRepository;

@Service

public class UserServiceImpl implements UserService {

        
        private UserRepository repository;

        public UserServiceImpl() {

        }

        @Autowired
        public UserServiceImpl(UserRepository repository) {
                super();
                this.repository = repository;
        }
        
        // Retorna tots els usuaris
	@Override
	public List getAllUsers() {
		List list = new ArrayList();
		repository.findAll().forEach(e -> list.add(e));
		return list;
	}
        // Retorna un usuari segons l'id passat per paràmetre
	@Override
	public User getUserById(int id) {
		User user = repository.findById(Long.valueOf(id)).get();
		return user;
	}
        //Guardem l'usuari passat per paràmetre a la base de dades
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
        //Eliminem un usuari segons el nom d'usuari passat per paràmetre
	@Override
	public boolean deleteUserByUsername(String username) {
		try {
                        repository.deleteByUsername(username);
			return true;
		}catch(Exception ex) {
			return false;
		}
		
	}
        
        //Retorna un usuari segons un nom d'usuari passat per paràmetre
        @Override
        public User getUserByUsername(String username) {
            return repository.findByUsername(username);
        }

        //Elimina un usuari segons un id passat per paràmetre
        @Override
        public boolean deleteUserById(int id) {
            throw new UnsupportedOperationException("Not supported yet."); 
        }
        //Retorna un usuari segons un email passat per paràmetre
        @Override
        public User getUserByEmail(String email) {
            return repository.findByEmail(email);
        }
        
        

    

}
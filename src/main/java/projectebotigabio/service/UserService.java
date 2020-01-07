

/**
*       Servei que permet fer les operacions amb usuaris
*       @Author Grup3 DAW
*       @Version: 2.0 
*       Servei que permet fer les operacions d'usuari tals com agafar-los per email, username, així com esborrar-los o guardar-los 
*/



package projectebotigabio.service;


import java.util.List;
import projectebotigabio.domain.User;

public interface UserService{

	public List getAllUsers();
	public User getUserById(int id);
	public boolean saveUser(User user);
	public boolean deleteUserById(int id);
        public User getUserByUsername(String username);
        public boolean deleteUserByUsername(String username);
        public User getUserByEmail(String email);

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.service;

/**
 *
 * @author jonat
 */
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;
import projectebotigabio.domain.User;

public interface UserService{

	public List getAllUsers();
	public User getUserById(int id);
	public boolean saveUser(User user);
	public boolean deleteUserById(int id);
        public User getUserByUsername(String username);
        public boolean deleteUserByUsername(String username);

}

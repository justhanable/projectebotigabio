/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.repository;

/**
 *
 * @author jonat
 */
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import projectebotigabio.domain.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long>{
    public User findByUsername (String username);
    public boolean deleteByUsername (String username);
	
}



/**
*       Repositori d'usuaris per tal de buscar, esborrar usuaris
*       @Author Grup3 DAW
*       @Version: 2.0 
*/



package projectebotigabio.repository;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import projectebotigabio.domain.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long>{
    public User findByUsername (String username);
    public boolean deleteByUsername (String username);
    public User findByEmail (String username);
	
}

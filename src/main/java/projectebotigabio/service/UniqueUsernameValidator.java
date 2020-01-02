

/**
*       Valida que l'usuari sigui únic
*       @Author Grup3 DAW
*       @Version: 2.0 
*       Permet fer les validacions d'usuari únic
*/



package projectebotigabio.service;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import org.springframework.beans.factory.annotation.Autowired;
import projectebotigabio.repository.UserRepository;

public class UniqueUsernameValidator implements ConstraintValidator<UniqueUsername,String>{
    @Autowired
    private UserService repository;
    
    @Override
    public void initialize(UniqueUsername a) {
    }

    @Override
    public boolean isValid(String t, ConstraintValidatorContext cvc) {
        if(repository.getUserByUsername(t) == null){
            return true;
        }else{
            return false;
        }
        
    }
    
}

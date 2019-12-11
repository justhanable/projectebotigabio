

/**
*       Valida l'email de l'usuari
*       @Author Grup3 DAW
*       @Version: 2.0 
*/


package projectebotigabio.service;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import org.springframework.beans.factory.annotation.Autowired;

public class UniqueEmailValidator implements ConstraintValidator<UniqueEmail,String>{
    @Autowired
    private UserService repository;

    @Override
    public void initialize(UniqueEmail a) {
        
    }

    @Override
    public boolean isValid(String t, ConstraintValidatorContext cvc) {
        if(repository.getUserByEmail(t) == null){
            return true;
        }else{
            return false;
        }
    }
    
}

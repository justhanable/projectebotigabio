/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.service;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Xavi
 */
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

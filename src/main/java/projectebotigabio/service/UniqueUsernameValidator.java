/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.service;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import org.springframework.beans.factory.annotation.Autowired;
import projectebotigabio.repository.UserRepository;

/**
 *
 * @author Xavi
 */
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

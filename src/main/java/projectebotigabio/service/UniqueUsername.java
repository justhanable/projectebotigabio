

/**
*       Comprova que l'usuari sigui únic
*       @Author Grup3 DAW
*       @Version: 2.0 
*/



package projectebotigabio.service;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import javax.validation.Constraint;
import javax.validation.Payload;

/**
 *
 * @author Xavi
 */
@Target(value = {ElementType.FIELD})
@Retention(value = RetentionPolicy.RUNTIME)
@Constraint(validatedBy = {UniqueUsernameValidator.class})
public @interface UniqueUsername {
    public String message();

    public Class<?>[] groups() default {};

    public Class<? extends Payload>[] payload() default {};
    
}



/**
*       Comproba que l'email de l'usuari sigui únic
*       @Author Grup3 DAW
*       @Version: 2.0 
*       Comproba que l'email es unívoc
*/

package projectebotigabio.service;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import javax.validation.Constraint;
import javax.validation.Payload;


@Target(value = {ElementType.FIELD})
@Retention(value = RetentionPolicy.RUNTIME)
@Constraint(validatedBy = {UniqueEmailValidator.class})
public @interface UniqueEmail {
    public String message();

    public Class<?>[] groups() default {};

    public Class<? extends Payload>[] payload() default {};
    
}

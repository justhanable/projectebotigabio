

/**
*       Definició de proveidor
*       @Author Grup3 DAW
*       @Version: 2.0 
*       Conté les propietats dels proveidors, així com les propietats de la taula proveidors de la base de dades
*/

package projectebotigabio.domain;

import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Range;



@Entity
@Table(name = "proveidors")
public class Proveidors { 

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    @NotNull
    private long  id;

    @Column(name = "proveidorNom")
    @NotNull
    @Size(max = 45)
    private String proveidorNom;

    @Column(name = "proveidorAddress")
    @NotNull
    @Size(max = 100)
    private String proveidorAddress;
    
    @Column(name = "proveidorTel")
    @NotNull
    @Size(max = 45)
    private String proveidorTel;
    
    @Column(name = "proveidorZona")
    @NotNull
    @Size(max = 45)
    private String proveidorZona;
    
    
    @Column(name = "proveidorArea")
    @NotNull
    @Size(max = 45)
    private String proveidorArea;
    
    @Column(name = "proveidorProducteId")
    @NotNull
    private long proveidorProducteId;
          
    @Column(name = "productePreu")
    @NotNull
    private float productePreu;
    
    @Column(name = "proveidorCategoria")
    @NotNull
    @Size(max = 100)
    private String proveidorCategoria;
    
    @Column(name = "proveidorImg")
    @NotNull
    @Size(max = 200)
    private String proveidorImg;
   
    public Proveidors(long id, String proveidorNom, String proveidorAddress, String proveidorTel, String  proveidorZona, String proveidorCategoria, String proveidorImg) {
                        
                        this.id = id;
                        this.proveidorNom = proveidorNom;
                        this.proveidorAddress = proveidorAddress;
                        this.proveidorTel = proveidorTel;
                        this.proveidorZona = proveidorZona;
                        this.proveidorCategoria = proveidorCategoria;
                        this.proveidorImg = proveidorImg;
                        
                        

                    }

    public Proveidors() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getProveidorNom() {
        return proveidorNom;
    }

    public void setProveidorNom(String proveidorNom) {
        this.proveidorNom = proveidorNom;
    }

    public String getProveidorAddress() {
        return proveidorAddress;
    }

    public void setProveidorAddress(String proveidorAddress) {
        this.proveidorAddress = proveidorAddress;
    }

    public String getProveidorTel() {
        return proveidorTel;
    }

    public void setProveidorTel(String proveidorTel) {
        this.proveidorTel = proveidorTel;
    }

    public String getProveidorZona() {
        return proveidorZona;
    }

    public void setProveidorZona(String proveidorZona) {
        this.proveidorZona = proveidorZona;
    }

    public String getProveidorArea() {
        return proveidorArea;
    }

    public void setProveidorArea(String proveidorArea) {
        this.proveidorArea = proveidorArea;
    }

    public long getProveidorProducteId() {
        return proveidorProducteId;
    }

    public void setProveidorProducteId(long proveidorProducteId) {
        this.proveidorProducteId = proveidorProducteId;
    }

    public float getProductePreu() {
        return productePreu;
    }

    public void setProductePreu(float productePreu) {
        this.productePreu = productePreu;
    }

    public String getProveidorCategoria() {
        return proveidorCategoria;
    }

    public void setProveidorCategoria(String proveidorCategoria) {
        this.proveidorCategoria = proveidorCategoria;
    }

    public String getProveidorImg() {
        return proveidorImg;
    }

    public void setProveidorImg(String proveidorImg) {
        this.proveidorImg = proveidorImg;
    }



       
    @Override
    public int hashCode() {
        
        int hash = 7;
        hash = 59 * hash + Objects.hashCode(this.id);
        hash = 59 * hash + Objects.hashCode(this.proveidorNom);
             
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Proveidors other = (Proveidors) obj;
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        return true;
    }
    
}

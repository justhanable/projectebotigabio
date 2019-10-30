/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author jonat
 */


@Entity
@Table(name = "producte")
public class Producte { //implements Serializable {        //HACE FALTA QUE SEA SERIALIZABLE?

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    @NotNull
    private long  id;

    @Column(name = "producteNom")
    @NotNull
    @Size(max = 100)
    private String producteNom;

    @Column(name = "productePreu")
    @NotNull
    private float productePreu;

    @Column(name = "producteDesc")
    @NotNull
    @Size(max = 200)
    private String producteDesc;
    
   
    public Producte(int id, String producteNom, float productePreu, String producteDesc) {
                        
                        this.id = id;
                        this.producteNom = producteNom;
                        this.productePreu = productePreu;
                        this.producteDesc = producteDesc;
                       

                    }

    public Producte() {
    }

   

    public long  getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getproducteNom() {
        return producteNom;
    }

    public void setProducteNom(String producteNom) {
        this.producteNom = producteNom;
    }

    public float getProductePreu() {
        return productePreu;
    }

    public void setProductePreu(float productePreu) {
        this.productePreu = productePreu;
    }
    
    public String getProducteDesc() {
        return producteDesc;
    }

    public void setProducteDesc(String producteDesc) {
        this.producteDesc = producteDesc;
    }
    
    

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 59 * hash + Objects.hashCode(this.id);
        hash = 59 * hash + Objects.hashCode(this.producteNom);
        hash = 59 * hash + Objects.hashCode(this.productePreu);
        hash = 59 * hash + Objects.hashCode(this.producteDesc);
        
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
        final Producte other = (Producte) obj;
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        return true;
    }
    
    

}

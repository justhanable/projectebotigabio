/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.domain;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author jonathan
 */
@Entity
@Table(name = "comanda")
public class Comanda {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    @NotNull
    private Long id;   
    
    @Column(name = "username", nullable = false)
    private String username;
     
    @Column(name = "preuTotal", nullable = false)
    private double preuTotal;
        
        
    @Column(name = "gestionat", nullable = false)
    private boolean gestionat;
       
    @Column(name = "dataComanda", nullable = false)
    private String dataComanda;
    
    public Comanda (long id, String username, double preuTotal, boolean gestionat, String dataComanda){
            
    

            
        String date = new SimpleDateFormat("dd-MM-yyyy").format(new Date());

        this.id = id;
        this.username = username;
        this.preuTotal = preuTotal;
        this.gestionat = gestionat;
        this.dataComanda = dataComanda;
        dataComanda = date;
    }
    
    public Comanda(){
        
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public double getPreuTotal() {
        return preuTotal;
    }

    public void setPreuTotal(double preuTotal) {
        this.preuTotal = preuTotal;
    }

    public boolean isGestionat() {
        return gestionat;
    }

    public void setGestionat(boolean gestionat) {
        this.gestionat = gestionat;
    }

    public String getDataComanda() {
        return dataComanda;
    }

    public void setDataComanda(String dataComanda) {
        this.dataComanda = dataComanda;
    }
    
         
    @Override
    public int hashCode() {
        int hash = 7;
        hash = 17 * hash + Objects.hashCode(this.id);
        hash = 17 * hash + Objects.hashCode(this.username);
        hash = 17 * hash + (int) (Double.doubleToLongBits(this.preuTotal) ^ (Double.doubleToLongBits(this.preuTotal) >>> 32));
        hash = 17 * hash + (this.gestionat ? 1 : 0);
        hash = 17 * hash + Objects.hashCode(this.dataComanda);
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
        final Comanda other = (Comanda) obj;
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        return true;
    } 
}

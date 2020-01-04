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
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import projectebotigabio.domain.Producte;
import projectebotigabio.domain.Comanda;


/**
 *
 * @author jonat
 */
@Entity
@Table(name = "comanda_detail")
public class ComandaDetail {
    
    
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;  
  
    @Column(name = "producteNom", nullable = false)
    private String producteNom;
    
    @Column(name = "id_producte", nullable = false)
    private long id_producte;
           
    @Column(name = "quantitat", nullable = false)
    private int quantitat;
               
    @Column(name = "preu", nullable = false)
    private double preu;
    
    @Column(name = "id_comanda", nullable = false)
    private long id_comanda;

    public ComandaDetail(Long id, String producteNom, long id_producte, int quantitat, double preu, Long id_comanda) {
        this.id = id;
        this.producteNom = producteNom;
        this.id_producte = id_producte;
        this.quantitat = quantitat;
        this.preu = preu;
        this.id_comanda = id_comanda;
    }


    public ComandaDetail(){
        
    }
    
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getProducteNom() {
        return producteNom;
    }

    public void setProducteNom(String producteNom) {
        this.producteNom = producteNom;
    }

    public long getId_producte() {
        return id_producte;
    }

    public void setId_producte(long id_producte) {
        this.id_producte = id_producte;
    }

    public int getQuantitat() {
        return quantitat;
    }

    public void setQuantitat(int quantitat) {
        this.quantitat = quantitat;
    }

    public double getPreu() {
        return preu;
    }

    public void setPreu(double preu) {
        this.preu = preu;
    }
    
    public long getId_comanda() {
        return id_comanda;
    }

    public void setId_comanda(long id_comanda) {
        this.id_comanda = id_comanda;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 67 * hash + Objects.hashCode(this.id);
        hash = 67 * hash + Objects.hashCode(this.producteNom);
        hash = 67 * hash + (int) (this.id_producte ^ (this.id_producte >>> 32));
        hash = 67 * hash + this.quantitat;
        hash = 67 * hash + (int) (Double.doubleToLongBits(this.preu) ^ (Double.doubleToLongBits(this.preu) >>> 32));
        hash = 67 * hash + (int) (this.id_comanda ^ (this.id_comanda >>> 32));
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
        final ComandaDetail other = (ComandaDetail) obj;
        if (this.id_producte != other.id_producte) {
            return false;
        }
        if (this.quantitat != other.quantitat) {
            return false;
        }
        if (Double.doubleToLongBits(this.preu) != Double.doubleToLongBits(other.preu)) {
            return false;
        }
        if (this.id_comanda != other.id_comanda) {
            return false;
        }
        if (!Objects.equals(this.producteNom, other.producteNom)) {
            return false;
        }
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        return true;
    }
    

                     

    
    
}

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

/**
 *
 * @author jonat
 */

@Entity
@Table(name = "producte")
public class Producte { 

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "producteid")
    @NotNull
    private long  producteid;

    @Column(name = "producteNom")
    @NotNull
    @Size(max = 100)
    private String producteNom;

    @Column(name = "productePreu")
    @NotNull
    private float productePreu;
    
    @Column(name = "producteStoc")
    @NotNull
    @Range(min=1, max=1000)    
    private int producteStoc;

    @Column(name = "producteDesc")
    @NotNull
    @Size(max = 200)
    private String producteDesc;
    
    @Column(name = "producteArea")
    @NotNull
    @Size(max = 100)
    private String producteArea;
          
    @Column(name = "producteCategoria")
    @NotNull
    @Size(max = 100)
    private String producteCategoria;
    
    @Column(name = "producteImg")
    @NotNull
    @Size(max = 200)
    private String producteImg;
   
    public Producte(long id, String producteNom, float productePreu, int producteStock, String producteDesc, String producteArea, 
                     String producteCategoria, String producteImg) {
                        
                        this.producteid = producteid;
                        this.producteNom = producteNom;
                        this.productePreu = productePreu;
                        this.producteStoc = producteStoc;
                        this.producteDesc = producteDesc;
                        this.producteArea = producteArea;
                        this.producteCategoria = producteCategoria;
                        this.producteImg = producteImg;

                    }

    public Producte() {
    }

    public long  getId() {
        return producteid;
    }

    public void setId(long id) {
        this.producteid = id;
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
    
    public int getProducteStock() {
        return producteStoc;
    }

    public void setProducteStock(int producteStock) {
        this.producteStoc = producteStock;
    }
    
    public String getProducteDesc() {
        return producteDesc;
    }

    public void setProducteDesc(String producteDesc) {
        this.producteDesc = producteDesc;
    }
    
    public String getProducteArea() {
        return producteArea;
    }

    public void setProducteArea(String producteArea) {
        this.producteArea = producteArea;
    }
     
    public String getProducteCategoria() {
        return producteCategoria;
    }
    
    public void setProducteCategoria(String producteCategoria) {
        this.producteCategoria = producteCategoria;
    }
    
    public String getProducteImg() {
        return producteImg;
    }

    public void setProducteImg(String producteImg) {
        this.producteImg = producteImg;
    }
       
    @Override
    public int hashCode() {
        
        int hash = 7;
        hash = 59 * hash + Objects.hashCode(this.producteid);
        hash = 59 * hash + Objects.hashCode(this.producteNom);
        hash = 59 * hash + Objects.hashCode(this.productePreu);
        hash = 59 * hash + Objects.hashCode(this.producteStoc);
        hash = 59 * hash + Objects.hashCode(this.producteDesc);
        hash = 59 * hash + Objects.hashCode(this.producteArea);
        hash = 59 * hash + Objects.hashCode(this.producteCategoria);
        hash = 59 * hash + Objects.hashCode(this.producteImg);
        
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
        if (!Objects.equals(this.producteid, other.producteid)) {
            return false;
        }
        return true;
    }
    
}

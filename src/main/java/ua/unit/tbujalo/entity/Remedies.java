package ua.unit.tbujalo.entity;


import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "remedies")
public class Remedies implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "type")
    private String type;

    @Column(name = "indication")
    private String indication;

    @Column(name = "contraindication")
    private String contraindication;

    @Column(name = "drugUse")
    private String drugUse;

    public Remedies() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIndication() {
        return indication;
    }

    public void setIndication(String indication) {
        this.indication = indication;
    }

    public String getContraindication() {
        return contraindication;
    }

    public void setContraindication(String contraindication) {
        this.contraindication = contraindication;
    }

    public String getDrugUse() {
        return drugUse;
    }

    public void setDrugUse(String drugUse) {
        this.drugUse = drugUse;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public String getType() {
        return type;
    }
/*
    @Override
    public boolean equals(Object obj) {
        if (obj == null)
            return false;
        else if (obj == this)
            return true;
        if (!(obj instanceof  Remedies))
            return false;
        if (getId() != null ? !getId().equals(((Remedies) obj).getId()) : ((Remedies) obj).getId() != null)
            return false;
        if (name != null ? !name.equals(((Remedies) obj).getName()) : ((Remedies) obj).getName() != null)
            return false;
        if (indication != null ? !indication.equals(((Remedies) obj).getIndication()) : ((Remedies) obj).getIndication() != null)
            return false;
        if (type != null ? !type.equals(((Remedies) obj).getType()) : ((Remedies) obj).getType() != null)
            return false;
        if (contraindication != null ? !contraindication.equals(((Remedies) obj).getContraindication()) : ((Remedies) obj).getContraindication() != null)
            return false;
        if (drugUse != null ? !drugUse.equals(((Remedies) obj).getDrugUse()) : ((Remedies) obj).getDrugUse() != null)
            return false;
        return true;
    }

    @Override
    public int hashCode() {
        int result = getId() != null ? getId().hashCode() : 0;
        result = 31 * result + (getName() != null ? getName().hashCode() : 0);
        result = 31 * result + (getType() != null? getType().hashCode() : 0);
        result = 31 * result + (getIndication() != null? getIndication().hashCode() : 0);
        result = 31 * result + (getDrugUse() != null? getDrugUse().hashCode() : 0);
        result = 31 * result + (getContraindication() != null? getContraindication().hashCode() : 0);
        return result;
    }*/

    @Override
    public String toString() {
        return "Remedies{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", indication='" + indication + '\'' +
                ", contraindication='" + contraindication + '\'' +
                ", drugUse='" + drugUse + '\'' +
                '}';
    }
}

package ua.unit.tbujalo.entity;


import javax.persistence.*;

@Entity
@Table(name = "remedies")
public class Remedies {

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

    public Remedies(String name, String type, String indication, String contraindication, String drugUse) {
        this.name = name;
        this.type = type;
        this.indication = indication;
        this.contraindication = contraindication;
        this.drugUse = drugUse;
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

    public int getId() {
        return id;
    }

    public String getType() {
        return type;
    }

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

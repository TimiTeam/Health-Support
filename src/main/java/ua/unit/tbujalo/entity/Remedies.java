package ua.unit.tbujalo.entity;


public class Remedies {
    private int id;
    private String name;
    private RemediesType type;
    private String indication;
    private String contraindication;
    private String drugUse;

    public Remedies() {
    }

    public Remedies(int id, String name, RemediesType type) {
        this.id = id;
        this.name = name;
        this.type = type;
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

    public int getId() {
        return id;
    }

    public RemediesType getType() {
        return type;
    }

}

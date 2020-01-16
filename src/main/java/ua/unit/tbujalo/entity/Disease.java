package ua.unit.tbujalo.entity;

public class Disease {
    private int diseaseId;
    private String name;
    private String description;

    public Disease() {
    }

    public Disease(int diseaseId, String name, String description) {
        this.diseaseId = diseaseId;
        this.name = name;
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getDiseaseId() {
        return diseaseId;
    }
}

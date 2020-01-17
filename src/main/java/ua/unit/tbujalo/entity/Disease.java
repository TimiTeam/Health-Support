package ua.unit.tbujalo.entity;

import org.springframework.stereotype.Component;

import javax.persistence.*;

@Entity
@Table(name = "disease")
public class Disease {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int diseaseId;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "link")
    private String link;

    public Disease() {
    }

    public Disease(int diseaseId, String name, String description, String link) {
        this.diseaseId = diseaseId;
        this.name = name;
        this.description = description;
        this.link = link;
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

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public String toString() {
        return "Disease{" + diseaseId +", "+ name + ", " + description +'}';
    }
}

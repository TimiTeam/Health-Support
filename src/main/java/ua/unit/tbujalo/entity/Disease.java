package ua.unit.tbujalo.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "diseases")
public class Disease implements Serializable {

    private static final long serialVersionUID = -1798070786993154676L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int diseaseId;

    @Column(name = "name")
    private String name;

    @Column(name = "category")
    private String category;

    @Column(name = "description")
    private String description;

    @Column(name = "link")
    private String link;

    public Disease() {
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

    public void setDiseaseId(int diseaseId) {
        this.diseaseId = diseaseId;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
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
        return "Disease{" +
                "diseaseId=" + diseaseId +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", link='" + link + '\'' +
                ", category='" + category + '\'' +
                '}';
    }
}

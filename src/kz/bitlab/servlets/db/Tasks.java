package kz.bitlab.servlets.db;

public class Tasks {

    public Tasks(int id, String name, String deadlineDate, String description) {
        this.id = id;
        this.name = name;
        this.deadlineDate = deadlineDate;
        this.description = description;

    }

    public Tasks() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDeadlineDate() {
        return deadlineDate;
    }

    public void setDeadlineDate(String deadlineDate) {
        this.deadlineDate = deadlineDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    private int id;
    private String name;
    private String deadlineDate;
    private String description;



}

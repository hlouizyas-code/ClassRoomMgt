/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kic.models;

/**
 *
 * @author hlouizyas
 */
public class Course {
    private String id;
    private String code;
    private String title;
    private String short_name;
    private String category;
    private int credits;
    private boolean is_elective;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getShort_name() {
        return short_name;
    }

    public void setShort_name(String short_name) {
        this.short_name = short_name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getCredits() {
        return credits;
    }

    public void setCredits(int credits) {
        this.credits = credits;
    }

    public boolean isIs_elective() {
        return is_elective;
    }

    public void setIs_elective(boolean is_elective) {
        this.is_elective = is_elective;
    }

    public Course(String code, String title, String short_name, String category, int credits, boolean is_elective) {
        this.code = code;
        this.title = title;
        this.short_name = short_name;
        this.category = category;
        this.credits = credits;
        this.is_elective = is_elective;
    }

    public Course(String id, String code, String title, String short_name, String category, int credits, boolean is_elective) {
        this.id = id;
        this.code = code;
        this.title = title;
        this.short_name = short_name;
        this.category = category;
        this.credits = credits;
        this.is_elective = is_elective;
    }
    
    
    
    public Course(){
        
    }
    
}

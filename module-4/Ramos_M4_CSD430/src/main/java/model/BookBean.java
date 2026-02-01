package model;

import java.io.Serializable;

/*
    Stephanie Ramos
    January 31, 2026
    Module 4 Assignment: JavaBean
    
    Purpose: JavaBean used to store book data so a JSP page can display it.
*/

public class BookBean implements Serializable {

    private static final long serialVersionUID = 1L;

    // Book data fields
    private String title;
    private String author;
    private String genre;
    private String rating;
    private String notes;
 
    // no-argument constructor
    public BookBean() {
    }

    // Constructor used to create book records
    public BookBean(String title, String author, String genre, String rating, String notes) {
        this.title = title;
        this.author = author;
        this.genre = genre;
        this.rating = rating;
        this.notes = notes;
    }

    // Getter and setter methods
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }
    public void setAuthor(String author) {
        this.author = author;
    }

    public String getGenre() {
        return genre;
    }
    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getRating() {
        return rating;
    }
    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getNotes() {
        return notes;
    }
    public void setNotes(String notes) {
        this.notes = notes;
    }
}

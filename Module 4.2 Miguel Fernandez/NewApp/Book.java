// Book.java
// Miguel Fernandez 6/28/26


package beans;

import java.io.Serializable;

public class Book implements Serializable {

    
    private static final long serialVersionUID = 1L;

    
    private String title;
    private String author;
    private String year;
    private String genre;
    private int pages;

    
    public Book() {
    }

    
    public Book(String title, String author, String year, String genre, int pages) {
        this.title = title;
        this.author = author;
        this.year = year;
        this.genre = genre;
        this.pages = pages;
    }

    

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

    public String getYear() {
        return year;
    }
    public void setYear(String year) {
        this.year = year;
    }

    public String getGenre() {
        return genre;
    }
    public void setGenre(String genre) {
        this.genre = genre;
    }

    public int getPages() {
        return pages;
    }
    public void setPages(int pages) {
        this.pages = pages;
    }
}

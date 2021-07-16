package ws;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Named
@SessionScoped
public class BookContainer implements Serializable {

    private Book book;
    private List<Book> bookList;
    public BookContainer(){

        bookList = new ArrayList<>();

        bookList.add(new Book("effective java","best seller in java"));
        bookList.add(new Book("java concurrency in practice","best seller in concurrency"));
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public List<Book> getBookList() {
        return bookList;
    }

    public void setBookList(List<Book> bookList) {
        this.bookList = bookList;
    }
}

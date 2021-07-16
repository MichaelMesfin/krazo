package ws;


import javax.inject.Inject;
import javax.mvc.Controller;
import javax.ws.rs.BeanParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import java.util.List;

@Controller
@Path("books")
public class BookController {

    @Inject
    private BookContainer bookContainer;
    @Inject
    private Messages messages;


    @GET
    @Path("all")
    public String getBooks(){

        List<Book> bookList = bookContainer.getBookList();
        messages.setInfo("There are " + bookList.size() + " books in the library.");
        return "book.jsp";
    }

    @GET
    @Path("add")
    public String addBook(){
        return "create-book.jsp";
    }


    @POST
    @Path("/create")
    @Controller
    public String createItem(@BeanParam Book book) {
        // Create new book
        List<Book> bookList = bookContainer.getBookList();
        bookList.add(book);
        return "redirect:books/all";
    }
}

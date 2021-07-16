package config;


import ws.BookController;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;
import java.util.HashSet;
import java.util.Set;

@ApplicationPath("mvc")
public class ApplicationConfig extends Application {

    @Override
    public Set<Class<?>> getClasses(){

        Set<Class<?>> resources = new HashSet<>();
        resources.add(BookController.class);
        return resources;
    }
}
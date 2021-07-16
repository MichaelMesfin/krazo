package ws;

import javax.enterprise.context.RequestScoped;
import javax.inject.Named;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Named
@RequestScoped
public class Messages {
    private String info;
    private final List<String> errors = new ArrayList<>();
    public Messages addError(String error) {
        errors.add(error);
        return this;
    }
    public List<String> getErrors() {
        return Collections.unmodifiableList(errors);
    }
    public String getInfo() {
        return info;
    }
    public void setInfo(String info) {
        this.info = info;
    }
}

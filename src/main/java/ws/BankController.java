package ws;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("bank")
public class BankController {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("moneyTransfer")
    public Response moneTransfer() {
        return Response.status(Response.Status.OK)
                .entity("success")
                .build();
    }
}

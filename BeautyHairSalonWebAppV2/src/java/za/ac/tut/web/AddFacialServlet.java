package za.ac.tut.web;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.*;
import javax.servlet.http.*;
import za.ac.tut.bl.NailDesignFacadeLocal;
import za.ac.tut.entity.NailDesign;

public class AddFacialServlet extends HttpServlet {

    @EJB
    private NailDesignFacadeLocal ndfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String name = request.getParameter("name");
            String cellNum = request.getParameter("cellNum");
            String email = request.getParameter("email");
            String dateStr = request.getParameter("date");
            //String timeStr = request.getParameter("time");

            Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dateStr);
           
            NailDesign nail = new NailDesign();
            nail.setName(name);
            nail.setCellNum(cellNum);
            nail.setEmail(email);
            nail.setDate(date);

            ndfl.create(nail);

            request.setAttribute("name", name);
            request.setAttribute("cellNum", cellNum);
            request.setAttribute("email", email);
            request.setAttribute("date", date);
        

            RequestDispatcher disp = request.getRequestDispatcher("AddFacialAppointmentOutput.jsp");
            disp.forward(request, response);

        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Invalid input: " + e.getMessage());
        }
    }
}

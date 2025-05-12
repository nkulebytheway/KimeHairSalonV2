package za.ac.tut.web;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.*;
import javax.servlet.http.*;
import za.ac.tut.bl.NailDesignFacadeLocal;
import za.ac.tut.entity.NailDesign;

public class ViewBookingServlet extends HttpServlet {
    @EJB 
    NailDesignFacadeLocal ndfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cellNumber = request.getParameter("cellNum").trim();

        NailDesign booking = ndfl.findByCellNumber(cellNumber);
        request.setAttribute("booking", booking);

        RequestDispatcher disp = request.getRequestDispatcher("ViewBookingOutcome.jsp");
        disp.forward(request, response);
    }
}

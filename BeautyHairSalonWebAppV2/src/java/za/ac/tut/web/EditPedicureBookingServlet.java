package za.ac.tut.web;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.NailDesignFacadeLocal;
import za.ac.tut.entity.NailDesign;

public class EditPedicureBookingServlet extends HttpServlet {

    @EJB
    NailDesignFacadeLocal ndfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form values
        String cellNumber = request.getParameter("cellNum");
    
        NailDesign booking = ndfl.findByCellNumber(cellNumber);
        
        request.setAttribute("booking", booking);
        // Forward to outcome page
        RequestDispatcher disp = request.getRequestDispatcher("EditPedicureBookingForm.jsp");
        disp.forward(request, response);
    }
}

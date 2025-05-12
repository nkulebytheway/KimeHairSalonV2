package za.ac.tut.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.*;
import javax.servlet.http.*;
import za.ac.tut.bl.NailDesignFacadeLocal;
import za.ac.tut.entity.NailDesign;

public class LoadFacialBookingForEditServlet extends HttpServlet {
    @EJB
    private NailDesignFacadeLocal ndfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            String cellNumber = request.getParameter("cellNumber");
            String email = request.getParameter("email");
            String name = request.getParameter("name");
            String dateStr = request.getParameter("date");
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
            Date date = sdf.parse(dateStr);
            
            NailDesign booking = new NailDesign();
            booking.setName(name);
            booking.setEmail(email);
            booking.setDate(date);
            booking.setCellNum(cellNumber);
            ndfl.edit(booking);
            
            RequestDispatcher disp = request.getRequestDispatcher("EditFacialBookingOutcome.jsp");
            disp.forward(request, response);
            
        } catch (ParseException ex) {
            Logger.getLogger(LoadBookingForEditServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

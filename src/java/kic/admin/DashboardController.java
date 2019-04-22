package kic.admin;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kic.models.Course;

/**
 *
 * @author hlouizyas
 */
public class DashboardController {

    public void process(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String requestUri = request.getRequestURI().trim();
        String destUrl = requestUri.substring(requestUri.lastIndexOf("/") + 1);
        if (destUrl.equals("dashboard")) {
          
            request.getRequestDispatcher("/WEB-INF/jsp/dashboard.jsp").forward(request, response);
        } else {
            response.sendRedirect("login.form");
        }
    }
}

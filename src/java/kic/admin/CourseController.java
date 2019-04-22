/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kic.admin;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kic.models.Categories;
import kic.models.Course;
import kic.models.Room;

/**
 *
 * @author hlouizyas
 */
public class CourseController {

    public void process(HttpServletRequest request, HttpServletResponse response,
            ServletContext application)
            throws ServletException, IOException, SQLException {
        DbController dbController = (DbController) application.getAttribute("dbController");
        String requestUri = request.getRequestURI().trim();
        // System.out.println(requestUri);
        String destUrl = requestUri.substring(requestUri.lastIndexOf("/") + 1);
        switch (destUrl) {

            case "course.show":
                ArrayList<Course> courses = new ArrayList<>();
                courses = dbController.fetchAllCoursesFromDb();
                request.setAttribute("courses", courses);
                request.getRequestDispatcher("/WEB-INF/jsp/CourseTest.jsp").forward(request, response);
                break;

            case "course.form":
                ArrayList<Categories> categories = new ArrayList<>();
                categories = dbController.fetchAllCategoriesFromDb();
                request.setAttribute("categories", categories);

                request.getRequestDispatcher("/WEB-INF/jsp/AddCourse.jsp").forward(request, response);
                break;

            case "course.save":

                Course course = new Course();

                //-----------------------------------------
                String idparams[] = request.getParameterValues("id");
                String codeparams[] = request.getParameterValues("code");
                String titleparams[] = request.getParameterValues("title");
                String short_nameparams[] = request.getParameterValues("short_name");
                String categoryparams[] = request.getParameterValues("category");
                String creditsparams[] = (request.getParameterValues("credits"));
                String isparams[] = request.getParameterValues("is_elective");

                for (int i = 0; i < idparams.length; i++) {
                    int creds = Integer.parseInt(creditsparams[i]);
                    boolean elect = Boolean.parseBoolean(isparams[i]);

                    course = new Course(idparams[i], codeparams[i], titleparams[i], short_nameparams[i], categoryparams[i], creds, elect);

                    dbController.insertCourseInDb(course);

                }
                response.sendRedirect("dashboard");
       
                break;

            default:
                response.sendRedirect("course.form");
                break;
        }
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kic.admin;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale.Category;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kic.models.Categories;
import kic.models.Room;

/**
 *
 * @author hlouizyas
 */
public class CategoryController {
     public void process(HttpServletRequest request, HttpServletResponse response,
            ServletContext application)
            throws ServletException, IOException, SQLException {
          DbController dbController = (DbController) application.getAttribute("dbController");
        String requestUri = request.getRequestURI().trim();
       // System.out.println(requestUri);
        String destUrl = requestUri.substring(requestUri.lastIndexOf("/") + 1);
        switch (destUrl) {
            
            case "category.form":
                
                ArrayList<Categories> categories = new ArrayList<>();
                categories = dbController.fetchAllCategoriesFromDb();
                request.setAttribute("categories", categories);
                request.getRequestDispatcher("/WEB-INF/jsp/categoryForm.jsp").forward(request, response);
                
                break;
                
                case "category.save":
                    
                     ArrayList<Categories> cat = new ArrayList<>();
                cat = dbController.fetchAllCategoriesFromDb();
                request.setAttribute("categories", cat);
                    
                HashMap<String, String> errors = new HashMap<>();
                String categoryId = request.getParameter("categoryId");
                if ((categoryId == null) || (!categoryId.matches("[a-zA-Z]{1,2}"))) {
                    errors.put("categoryId (" + categoryId + ")",
                            "categoryId can't be empty and it's length is limited to 2 characters");
                }   
                String categoryName = request.getParameter("categoryName");
                
                if (errors.isEmpty()) {
                    Categories newCategory = new Categories(categoryId, categoryName);
                    try {
                //        DbController dbController = (DbController) application.getAttribute("dbController");
                        dbController.insertCategoryInDb(newCategory);
                       // request.setAttribute("newCategory", newCategory);
                       response.sendRedirect("category.form");
                       // request.setAttribute("categories", cat);
                       // request.getRequestDispatcher("/WEB-INF/jsp/categoryForm.jsp").forward(request, response);
                    } catch (SQLException ex) {
                        Logger.getLogger(RoomController.class.getName()).log(Level.SEVERE,
                                "Error while adding a room in the DB", ex);
                         response.sendRedirect("category.form");
                    }
                } else {
                    request.setAttribute("errors", errors);
                    request.getRequestDispatcher("/WEB-INF/jsp/categoryForm.jsp").forward(request, response);
                 }   break;
                
                 case "showcat":
                
               String delCategoryId = request.getParameter("categoryId");
               Categories delCategory = new Categories();
              // delCategory = dbController.deleteCategoryInDb(delCategoryId);
                 request.setAttribute("delroom", delCategory);
                
           // response.sendRedirect("room.show");
                    request.getRequestDispatcher("/WEB-INF/jsp/roomDeleteDetails.jsp").forward(request, response);
            break;
            default:
                 response.sendRedirect("login.form");
                 break;
            
            
        }
        }
}

package kic.admin;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
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
public class RoomController {

    public void process(HttpServletRequest request, HttpServletResponse response,
            ServletContext application)
            throws ServletException, IOException, SQLException {
          DbController dbController = (DbController) application.getAttribute("dbController");
        String requestUri = request.getRequestURI().trim();
       // System.out.println(requestUri);
        String destUrl = requestUri.substring(requestUri.lastIndexOf("/") + 1);
        switch (destUrl) {
            
            case "course":
                  request.getRequestDispatcher("/WEB-INF/jsp/AddCourse.jsp").forward(request, response);
                break;
            
            case "room.show":
               
            ArrayList<Room> rooms = new ArrayList<>();
          
            ArrayList<Categories> cat = new ArrayList<>();
         cat = dbController.fetchAllCategoriesFromDb();
            
            rooms = dbController.fetchAllRoomsFromDb();
            request.setAttribute("categories", cat);
            
            
            request.setAttribute("showrooms", rooms);
            request.getRequestDispatcher("/WEB-INF/jsp/roomTest.jsp").forward(request, response);
            
            
            
            break;
            case "room.form":
             
                request.getRequestDispatcher("/WEB-INF/jsp/roomForm.jsp").forward(request, response);
                break;
            case "room.save":
                HashMap<String, String> errors = new HashMap<>();
                String roomId = request.getParameter("roomId");
                if ((roomId == null) || (!roomId.matches("[a-zA-Z]{1,2}"))) {
                    errors.put("roomId (" + roomId + ")",
                            "RoomId can't be empty and it's length is limited to 2 characters");
                }   int roomCap = Integer.parseInt(request.getParameter("roomCap"));
                if (roomCap > 40) {
                    errors.put("Capacity (" + roomCap + ")",
                            "Capacity can't be more than 40");
                }   if (errors.isEmpty()) {
                    Room newRoom = new Room(roomId, roomCap);
                    try {
                //        DbController dbController = (DbController) application.getAttribute("dbController");
                        dbController.insertRoomInDb(newRoom);
                        request.setAttribute("newRoom", newRoom);
                        request.getRequestDispatcher("/WEB-INF/jsp/roomDetails.jsp").forward(request, response);
                    } catch (SQLException ex) {
                        Logger.getLogger(RoomController.class.getName()).log(Level.SEVERE,
                                "Error while adding a room in the DB", ex);
                        response.sendRedirect("dashboard");
                    }
                } else {
                    request.setAttribute("errors", errors);
                    request.getRequestDispatcher("/WEB-INF/jsp/roomForm.jsp").forward(request, response);
                 }   break;
                
            case "show":
                
               String delRoomId = request.getParameter("roomId");
               Room delRoom = new Room();
               delRoom = dbController.fetchRoom(delRoomId);
                 request.setAttribute("delroom", delRoom);
                
           // response.sendRedirect("room.show");
                    request.getRequestDispatcher("/WEB-INF/jsp/roomDeleteDetails.jsp").forward(request, response);
            break;
            case "room.delete":
                String confirmid = request.getParameter("roomId");
                dbController.deleteRoomInDb(confirmid);
                
               // request.getRequestDispatcher("/WEB-INF/jsp/roomTest.jsp").forward(request, response);
            response.sendRedirect("dashboard");
                
                break;
            
            default:
                response.sendRedirect("login.form");
                break;
        }
    }
}

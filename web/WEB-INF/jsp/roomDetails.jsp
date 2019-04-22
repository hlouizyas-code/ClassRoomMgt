<%-- 
    Document   : roomForm
    Created on : May 24, 2018, 10:31:01 AM
    Author     : hlouizyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add a room</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="css/styles.css" type="text/css"/>

    </head>
    <body>
        <div class="header">
            <h1>KIC Admin</h1>
        </div>
        <div class="row">
            <div class="col-3 col-s-3"></div>
            <div class="col-6 col-s-6">
                <fieldset>
                    <legend>New room added</legend>
                    <dl>
                        <dt>Room ID:</dt>
                        <dd>${requestScope.newRoom.id}"</dd>
                        <dt>Capacity</dt>
                        <dd>${requestScope.newRoom.capacity}"</dd>
                        <p class="right-btn">
                            <input type="button" value="OK" onclick="document.getElementById('dashboardLink').click()">
                        </p>
                </fieldset>
                <a id="dashboardLink" href="dashboard" style="visibility: hidden">Dashboard</a>
            </div>
            <div class="col-3 col-s-3"></div>
        </div>
        <div class="footer">
            <p>Room Admin has been developed with Web Application Development Course Practice</p>
        </div>
    </body>
</html>

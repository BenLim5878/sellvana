package com.company.web.jspintellij;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ComponentServlet", value = "/component/*")
public class ComponentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the requested JSP file name from the URL path
        String jspFileName = request.getPathInfo().substring(1);

        // Set the content type to HTML
        response.setContentType("text/html");

        // Get the PrintWriter to write the response
        PrintWriter out = response.getWriter();

        // Include the requested JSP file
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/component/" + jspFileName);
        dispatcher.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

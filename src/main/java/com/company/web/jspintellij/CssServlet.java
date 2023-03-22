package com.company.web.jspintellij;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.*;

@WebServlet(name = "CssServlet", value = "/css/*")
public class CssServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/css");

        ServletContext sc = getServletContext();
        InputStream inputStream = sc.getResourceAsStream("/css"+request.getPathInfo());

        // Write the contents of the stream to the response output stream
        int readBytes = 0;
        byte[] buffer = new byte[1024];
        OutputStream outputStream = response.getOutputStream();
        while ((readBytes = inputStream.read(buffer)) != -1) {
            outputStream.write(buffer, 0, readBytes);
        }
        outputStream.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

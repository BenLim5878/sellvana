package com.company.web.jspintellij;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.*;

@WebServlet(name = "ImageServlet", value = "/img/*")
public class ImageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext sc = getServletContext();
        try (InputStream is = sc.getResourceAsStream("/image"+request.getPathInfo())) {
            OutputStream os = response.getOutputStream();
            if (is == null) {
                response.setContentType("text/plain");
                os.write("Failed to send image".getBytes());
            } else {
                response.setContentType("image/jpeg");
                byte[] buffer = new byte[1024];
                int bytesRead;
                while ((bytesRead = is.read(buffer)) != -1) {
                    os.write(buffer, 0, bytesRead);
                }
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

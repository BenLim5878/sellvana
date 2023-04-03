package com.company.web.jspintellij;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "IndexServlet", value = "/")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getRequestURI();
        if (path.equals("/app/")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userHomePage.jsp").forward(request,response);
        } else if (path.equals("/app/product")) {
            request.getRequestDispatcher("/WEB-INF/jsp/page/userProductDetail.jsp").forward(request, response);
        } else if (path.equals("/app/register")) {
            request.getRequestDispatcher("/WEB-INF/jsp/page/registerPage.jsp").forward(request, response);
        } else if (path.equals("/app/order")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userOrderHistory.jsp").forward(request,response);
        } else if (path.equals("/app/order/detail")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userOrderDetail.jsp").forward(request,response);
        } else if (path.equals("/app/cart")) {
            request.getRequestDispatcher("/WEB-INF/jsp/page/userCart.jsp").forward(request, response);
        } else if (path.equals("/app/setting")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userSetting.jsp").forward(request,response);
        } else if (path.equals("/app/test")) {
            request.getRequestDispatcher("/WEB-INF/jsp/page/test.jsp").forward(request,response);
        }else if (path.equals("/app/address")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userAddressManage.jsp").forward(request,response);
        }else if (path.equals("/app/address/edit")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userAddressEdit.jsp").forward(request,response);
        }else if (path.equals("/app/seller")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userSellerDetail.jsp").forward(request,response);
        }else if (path.equals("/app/setting/profile")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userProfileDetail.jsp").forward(request,response);
        }else if (path.equals("/app/setting/password/edit")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userPasswordModify.jsp").forward(request,response);
        }else if (path.equals("/app/checkout")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userCheckout.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

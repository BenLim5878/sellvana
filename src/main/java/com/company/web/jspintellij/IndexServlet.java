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
        } else if (path.equals("/app/register")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/registerSelection.jsp").forward(request,response);
        } else if (path.equals("/app/register/user")) {
            request.getRequestDispatcher("/WEB-INF/jsp/page/userRegister.jsp").forward(request, response);
        } else if (path.equals("/app/register/seller")) {
            request.getRequestDispatcher("/WEB-INF/jsp/page/sellerRegister.jsp").forward(request, response);
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
        }else if (path.equals("/app/setting/address")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userAddressManage.jsp").forward(request,response);
        }else if (path.equals("/app/setting/address/edit")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userAddressEdit.jsp").forward(request,response);
        }else if (path.equals("/app/seller")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userSellerDetail.jsp").forward(request,response);
        }else if (path.equals("/app/setting/profile")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userProfileDetail.jsp").forward(request,response);
        }else if (path.equals("/app/setting/password/edit")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userPasswordModify.jsp").forward(request,response);
        }else if (path.equals("/app/checkout")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userCheckout.jsp").forward(request,response);
        }else if (path.equals("/app/checkout/complete")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/userCheckoutComplete.jsp").forward(request,response);
        }else if (path.equals("/app/seller/home")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/sellerHomePage.jsp").forward(request,response);
        }else if (path.equals("/app/seller/product")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/sellerProductList.jsp").forward(request,response);
        }else if (path.equals("/app/seller/product/detail")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/sellerProductDetail.jsp").forward(request,response);
        }else if (path.equals("/app/seller/product/detail/feedback")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/sellerProductRating.jsp").forward(request,response);
        }else if (path.equals("/app/seller/product/detail/form")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/sellerProductForm.jsp").forward(request,response);
        }else if (path.equals("/app/seller/order")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/sellerOrderList.jsp").forward(request,response);
        }else if (path.equals("/app/seller/order/detail")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/sellerOrderDetail.jsp").forward(request,response);
        }else if (path.equals("/app/seller/wallet")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/sellerWallet.jsp").forward(request,response);
        }else if (path.equals("/app/seller/setting")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/sellerSetting.jsp").forward(request,response);
        }else if (path.equals("/app/seller/setting/profile")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/sellerProfileDetail.jsp").forward(request,response);
        }else if (path.equals("/app/seller/setting/password/edit")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/sellerPasswordModify.jsp").forward(request,response);
        }else if (path.equals("/app/seller/setting/address")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/sellerAddressEdit.jsp").forward(request,response);
        }else if (path.equals("/app/admin/home")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/adminHomePage.jsp").forward(request,response);
        }else if (path.equals("/app/admin/manage/admin")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/adminManageAdmin.jsp").forward(request,response);
        }else if (path.equals("/app/admin/manage/seller")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/adminManageSeller.jsp").forward(request,response);
        }else if (path.equals("/app/admin/manage/customer")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/adminManageCustomer.jsp").forward(request,response);
        }else if (path.equals("/app/admin/feedback")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/adminFeedback.jsp").forward(request,response);
        }else if (path.equals("/app/admin/account")){
            request.getRequestDispatcher("/WEB-INF/jsp/page/adminAccountEdit.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

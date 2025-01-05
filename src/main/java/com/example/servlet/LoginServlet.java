package com.example.servlet;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import com.example.model.User;
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取用户名和密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        // 模拟验证用户
        User user = new User(username, password);
        if (user.isValid()) {
            // 登录成功，重定向到 success.jsp
            response.sendRedirect("success.jsp");
        } else {
            // 登录失败，转发到登录页面并显示错误信息
            request.setAttribute("error", "Invalid credentials!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }
 }

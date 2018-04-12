package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Job;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

//        int UserID = Integer.parseInt(request.getSession().getAttribute("user"));
//        System.out.println(UserID);
//        User user = DaoFactory.getUsersDao().findByID(UserID);
        User user = (User) request.getSession().getAttribute("user");

        request.setAttribute("user", user );
        List<Job> jobs = DaoFactory.getJobsDao().FindJobsByUserID((int)user.getId());
        request.setAttribute("jobs", jobs);
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }
}
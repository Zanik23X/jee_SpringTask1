package kz.bitlab.servlets.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.servlets.db.DBManager;
import kz.bitlab.servlets.db.Tasks;


import java.io.IOException;

@WebServlet(value = "/add")
public class HomeProcessServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String name = request.getParameter("task_name");
        String deadline = request.getParameter("task_date");
        String description = request.getParameter("task_description");


        Tasks task = new Tasks();
        task.setName(name);
        task.setDeadlineDate(deadline);
        task.setDescription(description);


        DBManager.addTask(task);
        response.sendRedirect("/tasks");
    }
}

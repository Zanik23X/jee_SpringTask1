package kz.bitlab.servlets.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.servlets.db.DBManager;
import kz.bitlab.servlets.db.Tasks;

import java.io.IOException;
@WebServlet(value = "/save")
public class SaveTasksServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        int id = Integer.parseInt(request.getParameter("task_id"));
        String name = request.getParameter("task_name");
        String deadline = request.getParameter("task_date");
        String description = request.getParameter("task_description");

        Tasks tasks = DBManager.getTask(id);
        if(tasks!=null){
             tasks.setName(name);
             tasks.setDeadlineDate(deadline);
             tasks.setDescription(description);

            DBManager.updateTask(tasks);
            response.sendRedirect("/details?task_id="+id);
        }else {
            response.sendRedirect("/tasks");
        }
    }
}

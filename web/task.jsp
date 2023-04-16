<%@ page import="kz.bitlab.servlets.db.Tasks" %>
<%@ page import="java.util.ArrayList" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>ADD NEW TASKS</title>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
    <jsp:include page="navbar.jsp"/>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal" style="margin-left:120px;margin-top: 30px">
        + Добавить задание
    </button>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title fs-5" id="exampleModalLabel">НОВОЕ ЗАДАНИЕ</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-6 mx-auto">
                                <form action="/add" method="post">
                                    <div class="row">
                                        <div class="col-12">
                                            <label>Найменование:</label>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <input type="text" class="form-control" required name="task_name" placeholder="Найменование...">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <label>Описание:</label>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <textarea name="task_description"  cols="30" rows="10" class="form-control">

                                            </textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <label>Крайний срок:</label>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <input type="date" class="form-control" required name="task_date">
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-success">Save changes</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="container mt-3">
        <div class="row">
            <div class="col-12">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Найменование</th>
                        <th>Выполнено</th>
                        <th>Крайний срок</th>
                        <th>Детали</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        ArrayList<Tasks> tasks = (ArrayList<Tasks>) request.getAttribute("example");
                        if(tasks!=null){
                            for(Tasks t : tasks){
                    %>
                    <tr>
                        <td><%=t.getId()%></td>
                        <td><%=t.getName()%></td>
                        <td><%=t.getDescription()%></td>
                        <td><%=t.getDeadlineDate()%></td>
                        <td>
                            <a class="btn btn-success btn-sm" href="/details?task_id=<%=t.getId()%>">Детали</a>
                        </td>
                    </tr>
                    <%
                            }
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </body>
</html>

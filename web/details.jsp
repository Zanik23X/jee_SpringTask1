<%@ page import="kz.bitlab.servlets.db.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>ADD NEW TASKS</title>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
    <jsp:include page="navbar.jsp"/>
    <!-- Button trigger modal -->
    <%
        Tasks tasks = (Tasks) request.getAttribute("task1");
        if(tasks!=null){
    %>
    <div class="container mt-5">
        <div class="row">
            <div class="col-6 mx-auto">
                <div class="row">
                    <div class="col-12">
                        <label>Найменование:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control"  name="task_name" readonly value="<%=tasks.getName()%>">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <label>Описание:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control"   name="task_description" readonly value="<%=tasks.getDescription()%>">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <label>Крайний срок:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" name="task_date" readonly value="<%=tasks.getDeadlineDate()%>">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <button type="button" class="btn btn-success " data-bs-toggle="modal" data-bs-target="#editTasks">
                            Редактировать
                        </button>
                        <button type="button" class="btn btn-danger ms-2" data-bs-toggle="modal"  data-bs-target="#deleteTasks">Удалить</button>
                    </div>
                </div>


                <!-- Modal -->
                <div class="modal fade" id="editTasks" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                            <form action="/save" method="post">
                                                <input type="hidden" name="task_id" value="<%=tasks.getId()%>">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <label>Найменование:</label>
                                                    </div>
                                                </div>
                                                <div class="row mt-2">
                                                    <div class="col-12">
                                                        <input type="text" class="form-control" required name="task_name"  value="<%=tasks.getName()%>">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <label>Описание:</label>
                                                    </div>
                                                </div>
                                                <div class="row mt-2">
                                                    <div class="col-12">
                                                        <input type="text" class="form-control" name="task_description"   value="<%=tasks.getDescription()%>">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <label>Крайний срок:</label>
                                                    </div>
                                                </div>
                                                <div class="row mt-2">
                                                    <div class="col-12">
                                                        <input type="text" class="form-control"  name="task_date"   value="<%=tasks.getDeadlineDate()%>">
                                                    </div>
                                                </div>
                                                <div class="row mt-3">
                                                    <div class="col-12">
                                                        <button type="submit" class="btn btn-primary">Сохранить</button>
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


                <!-- Modal delete -->
                <div class="modal fade" id="deleteTasks" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="/delete" method="post">
                                <input type="hidden" name="id" value="<%=tasks.getId()%>">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5">Подтвердить</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                   Ты удаляешь?
                                </div>
                                <div class="modal-footer">
                                    <button  class="btn btn-danger" >Да</button>
                                    <button  class="btn btn-primary">Нет</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <%
        }else{
    %>
    <h2>TAS NOT FOUND</h2>
    <%
        }
    %>
    </body>
</html>

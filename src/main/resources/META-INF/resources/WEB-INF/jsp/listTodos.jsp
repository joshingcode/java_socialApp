<%@ include file="common/header.jsp" %>
    <%@ include file="common/nav.jsp" %>
        <div class="container">
            <h1>Welcome to dis ${name}!!!!</h1>
            <hr>
            <h2>Your Todos are :</h2>
            <table class="table">
                <thead>
                    <tr>

                        <th>description</th>
                        <th>Target Date</th>
                        <th>Done?!?!</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${todos}" var="todo">
                        <tr>

                            <td>${todo.description } </td>
                            <td>${todo.targetDate } </td>
                            <td> ${todo.done } </td>
                            <td><a href="delete-todo?id=${todo.id } " class="btn btn-warning">Delete</a></td>
                            <td><a href="update-todo?id=${todo.id } " class="btn btn-success">Update</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <a href="add-todo" class="btn btn-success">add todo</a>
            <%@ include file="common/footer.jsp" %>
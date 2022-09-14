<%@ include file="common/header.jsp" %>
  <%@ include file="common/nav.jsp" %>




    <h1 class="text-center eats-header">Meet up with Friends</h1>
    <!-- <span> friends list below </span>
    <p>Friends List: </p>
    <ul>
      <c:forEach items="${friends}" var="friends">
        <li>${friends.name}</li>
      </c:forEach>
    </ul> -->
    <table class="table">
      <thead>
        <tr>

          <th>name</th>
          <th></th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${friends}" var="friends">
          <tr>


            <td>${friends.name } </td>
            <td> </td>
            <td><a href="delete-todo?id=${friends.id } " class="btn btn-warning">Delete</a></td>
            <td><a href="update-todo?id=${friends.id } " class="btn btn-success">Update</a></td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
    <a href="add-friends" class="btn btn-success">add new friend</a>

    <div class="d-flex justify-content-center mb-3">
      <a class="mx-auto btn btn-primary text-center" href="/eats">Take me to eat</a>
      <a class="mx-auto btn btn-secondary text-center" href="/eats">Friends</a>
    </div>






    <%@ include file="common/footer.jsp" %>
<%@ include file="common/header.jsp" %>
    <%@ include file="common/nav.jsp" %>
        <div class="container">
            <h1>New Friend</h1>
            <form:form method="post" modelAttribute="friends">
                <fieldset class="mb-3">
                    <form:input type="hidden" path="id" required="required" />
                    <form:label path="name"> Name:</form:label>

                    <form:input type="text" path="name" required="required" />


                </fieldset>

                <input type="submit" class="btn btn-success" />
                <form:errors path="name" cssClass="text-warning" />
            </form:form>
        </div>
        <%@ include file="common/footer.jsp" %>
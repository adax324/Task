<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <%@include file="../dynamic/sidebar.jspf" %>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <%@include file="../dynamic/topbar.jspf" %>
            <!-- begin of form -->
            <form name="addTask" method="post" action='<c:url value="/tasks/editTask/${task.id}"/>'>
                <div class="container-fluid">

                    <div class="card shadow mb-4 ">
                        <div class="card-header py-3">
                            <div class="form-group row">
                                <div class="col-2">
                                    <label>Editowanie kursanta</label>
                                </div>
                                <div class="col-10">
                                    <span>Id: ${task.owner.id}Imię: ${task.owner.firstName} Nazwisko: ${task.owner.lastName}</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-2">
                                    <label>Deadline</label>
                                </div>
                                <div class="col-10">
                                    <input type="date" name="deadLineDate" value="${task.deadLineDateLD}"
                                           class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-2">
                                    <label>Treść zadania</label>
                                </div>
                                <div class="col-10">
                                    <textarea class="form-control" rows="5" name="body"
                                              placeholder="Wpisz treść zadania do wykonania">${task.body}</textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <div class="form-group row">

                                <div class="col-2">
                                    <label class="radio-inline"><input type="radio" name="color" value="0"
                                    <c:if test="${task.color == 0}"> checked </c:if>

                                    ><i
                                            class="btn btn-success btn-circle mx-2"></i>Poziom junior</label>
                                </div>


                                <div class="col-2">
                                    <label><input type="radio" name="color" value="1" <c:if test="${task.color == 1}">
                                                  checked </c:if>><i
                                            class="btn btn-info btn-circle mx-2"></i>Poziom junior+</label>
                                </div>


                                <div class="col-2">
                                    <label><input type="radio" name="color" value="2" <c:if test="${task.color == 2}">
                                                  checked </c:if>><i
                                            class="btn btn-secondary btn-circle mx-2"></i>Poziom mid</label>
                                </div>


                                <div class="col-2">
                                    <label><input type="radio" name="color" value="3" <c:if test="${task.color == 3}">
                                                  checked </c:if>><i
                                            class="btn btn-primary btn-circle mx-2"></i>Poziom mid+</label>
                                </div>


                                <div class="col-2">
                                    <label><input type="radio" name="color" value="4" <c:if test="${task.color == 4}">
                                                  checked </c:if>><i
                                            class="btn btn-danger btn-circle mx-2"></i>Poziom senior</label>
                                </div>

                            </div>

                        </div>
                    </div>

                    <input type="submit" class="btn btn-primary" value="Zapisz"/>

                </div>
            </form>
            <!-- end of form -->

        </div>
        <!-- End of Main Content -->

        <%@include file="../dynamic/footer.jspf" %>

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<%@include file="../dynamic/logoutModal.jspf" %>


<%@include file="../dynamic/baseJavascript.jspf" %>

</body>

</html>
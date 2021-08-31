<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf"%>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <%@include file="../dynamic/sidebar.jspf"%>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <%@include file="../dynamic/topbar.jspf"%>
                <!-- begin of form -->
               <div class="container-fluid">
                <div class="col-12">
                    <a href='<c:url value="/tasks/addTask"/>' class="btn btn-dark btn-block" style="margin-bottom:30px;">
                    <i class="fas fa-exclamation-triangle"></i>
                        <strong>Dodaj zadanie</strong>
                    </a>
                </div>
                <div class="col-12">
                    <div class="row">
                        <div class="col-3">
                            <div class="card ${bgColor.get(0)} text-white shadow">
                                <div class="card-body">
                                    <strong>Nowicjusz</strong>
                                    <div class="text-white-50 small">poziom junior</div>
                                </div>
                            </div>
                        
                            <div class="card ${bgColor.get(1)} text-white shadow">
                                <div class="card-body">
                                    <strong>Dojrzewający</strong>
                                    <div class="text-white-50 small">poziom junior+</div>
                                </div>
                            </div>

                            <div class="card ${bgColor.get(2)} text-white shadow">
                                <div class="card-body">
                                    <strong>Wie co robi</strong>
                                    <div class="text-white-50 small">poziom mid</div>
                                </div>
                            </div>
                            <div class="card ${bgColor.get(3)} text-white shadow">
                                <div class="card-body">
                                    <strong>Doświadczony</strong>
                                    <div class="text-white-50 small">poziom mid+</div>
                                </div>
                            </div>
                            <div class="card ${bgColor.get(4)} text-white shadow-lg">
                                <div class="card-body">
                                    <strong>Wyjadacz</strong>
                                    <div class="text-white-50 small">poziom senior</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-9">
                            <c:forEach items="${tasks}" var="variable">
                                <a style="text-decoration: none" href='<c:url value="/tasks/editTask/${variable.id}"/>'>
                                <div class="card shadow ${variable.sideColor} mb-2 py-3">
                                    <div class="card-body ">
                                        <div class="text-xs font-weight-bold ${variable.textColor} text-uppercase mb-1">
                                            ${variable.owner.firstName} ${variable.owner.lastName}<strong>|Dodano:</strong>${variable.addDate}<strong>|Deadline:</strong>${variable.deadLineDate}
                                            <div class="float-right">
                                                <form name="deleteTask" method="post" action='<c:url value="/tasks/delete/${variable.id}"/>'>
                                                    <input type="submit" class="btn btn-danger btn-circle"  value="D" />
                                                </form>
                                            </div>
                                        </div>
                                        <div style="color: #333333">
                                        ${variable.body}
                                        </div>
                                    </div>
                                </div>
                                </a>
                            </c:forEach>



                        </div>
                    </div>
                </div>


               </div>
                <!-- end of form -->

            </div>
            <!-- End of Main Content -->

            <%@include file="../dynamic/footer.jspf"%>

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <%@include file="../dynamic/logoutModal.jspf"%>



    <%@include file="../dynamic/baseJavascript.jspf"%>

</body>

</html>
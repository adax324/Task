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
                <form name="addTask" method="post" action='<c:url value="/tasks/addTask"/>'>
               <div class="container-fluid">
                   
                           <div class="card shadow mb-4 ">
                               <div class="card-header py-3">
                                   <div class="form-group row">
                                       <div class="col-2">
                                           <label >Wybierz kursanta</label>
                                         </div>
                                         <div class="col-10">

                                            <select class="form-control" id="owner" name="owner.id" >
                                                <option hidden>Wybierz</option>
                                                <c:forEach items="${persons}" var="variable">
                                                    <option value="${variable.id}">
                                                            ${variable.id}. ${variable.firstName} ${variable.lastName}</option>
                                                </c:forEach>
                                            </select>
                                         </div>
                                   </div>
                                   <div class="form-group row">
                                       <div class="col-2">
                                           <label>Deadline</label>
                                       </div>
                                       <div class="col-10">
                                           <input type="date" name="deadLineDateString" class="form-control">
                                       </div>
                                   </div>
                                   <div class="form-group row">
                                       <div class="col-2">
                                           <label>Treść zadania</label>
                                       </div>
                                       <div class="col-10">
                                           <textarea class="form-control" rows="5" name="body" placeholder="Wpisz treść zadania do wykonania"></textarea>
                                       </div>
                                   </div>
                               </div>
                           </div>
                           <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">
                                    <div class="col-2">
                                        <label class="radio-inline"><input type="radio" name="codeColor" value="0"><i class="btn btn-success btn-circle mx-2"></i>Poziom junior</label>
                                    </div>
                                    <div class="col-2">
                                        <label><input type="radio" name="codeColor" value="1" ><i class="btn btn-info btn-circle mx-2"></i>Poziom junior+</label>
                                    </div>
                                    <div class="col-2">
                                        <label><input type="radio" name="codeColor" value="2" ><i class="btn btn-secondary btn-circle mx-2"></i>Poziom mid</label>
                                    </div>
                                    <div class="col-2">
                                        <label><input type="radio" name="codeColor" value="3"><i class="btn btn-primary btn-circle mx-2"></i>Poziom mid+</label>
                                    </div>
                                    <div class="col-2">
                                        <label><input type="radio" name="codeColor" value="4" ><i class="btn btn-danger btn-circle mx-2"></i>Poziom senior</label>
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
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
                        <div class="col-2">
                            <div class="card bg-success text-white shadow">
                                <div class="card-body">
                                    <strong>Nowicjusz</strong>
                                    <div class="text-white-50 small">poziom junior</div>
                                </div>
                            </div>
                        
                            <div class="card bg-info text-white shadow">
                                <div class="card-body">
                                    <strong>Dojrzewający</strong>
                                    <div class="text-white-50 small">poziom junior+</div>
                                </div>
                            </div>

                            <div class="card bg-secondary text-white shadow">
                                <div class="card-body">
                                    <strong>Wie co robi</strong>
                                    <div class="text-white-50 small">poziom mid</div>
                                </div>
                            </div>
                            <div class="card bg-primary text-white shadow">
                                <div class="card-body">
                                    <strong>Doświadczony</strong>
                                    <div class="text-white-50 small">poziom mid+</div>
                                </div>
                            </div>
                            <div class="card bg-danger text-white shadow-lg">
                                <div class="card-body">
                                    <strong>Wyjadacz</strong>
                                    <div class="text-white-50 small">poziom senior</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-10">
                            <div class="card shadow border-left-primary mb-2 py-3">
                                <div class="card-body ">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                        Adam Hrycenko<strong>|Dodano:</strong>25-08-2021<strong>|Deadline:</strong>28-08-2021
                                    </div>
                                    Do wykonania strona przy użyciu Bootstrap 4
                                
                                </div>
                            </div>
                            <div class="card shadow border-left-secondary mb-2 py-3">
                                <div class="card-body">
                                    <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">
                                        Milena Romanow<strong>|Dodano:</strong>22-08-2021<strong>|Deadline:</strong>31-08-2021
                                    </div>
                                    Do wykonania czerowny baner z logo klienta Pilne!
                                </div>
                            </div>
                            <div class="card shadow border-left-info mb-2 py-3">
                                <div class="card-body">
                                    <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                        Aleksander Bogucki<strong>|Dodano:</strong>19-08-2021<strong>|Deadline:</strong>20-08-2021
                                    </div>
                                    Poprawka do css głównego stylu
                                </div>
                            </div>
                            <div class="card shadow border-left-success mb-2 py-3">
                                <div class="card-body">
                                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                        Wojciech Mazur<strong>|Dodano:</strong>23-08-2021<strong>|Deadline:</strong>24-08-2021
                                    </div>
                                    Treść strony #23432142312
                                </div>
                            </div>
                            <div class="card shadow border-left-danger mb-2 py-3">
                                <div class="card-body">
                                <div class="font-weight-bold text-danger text-uppercase text-xs mb-1">
                                    Steve Nemo<strong>|Dodano:</strong>01-01-2021<strong>|Deadline:</strong>31-12-2021
                                </div>
                                Leżeć i odpoczywać na wyspach 
                            </div>
                            </div>
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
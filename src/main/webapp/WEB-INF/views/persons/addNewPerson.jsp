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
                <form name="addNewPerson" method="post" action='<c:url value="/persons/addNewPerson"/>'>
                <!-- begin of form -->
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <!-- początek form -->
                                        <div class="form-group row">
                                            <div class="col-2">
                                            <label for="imie">Imię</label>
                                            </div>
                                            <div class="col-10">
                                                <input class="form-control" type="text" name="firstName"  placeholder="wpisz imię">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <div class="col-2">
                                            <label for="nazwisko">Nazwisko</label>
                                            </div>
                                            <div class="col-10">
                                            <input type="text" class="form-control" name="lastName" placeholder="wpisz nazwisko">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <div class="col-2">
                                                <label for="Url do gita">Url do gita</label>
                                            </div>
                                            <div class="col-10">
                                                <input type="text" class="form-control" name="urlGit" placeholder="wpisz url do gita">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <div class="col-2">
                                                <label for="od czego się zaczęło">Od czego się zaczęło</label>
                                                
                                            </div>
                                            <div class="col-10">
                                                <textarea class="form-control" id="ocsz"  rows="10" name="description" placeholder="Od czego się zaczęło"></textarea>
                                            </div>
                                        </div>







                                   
                                </div>
                                 <!-- koniec form -->
                            </div>
                            <input class="btn btn-success pull-left" type="submit" value="Wyślij" id="searchButton"></input>

                        </div>
                    </div>
                            
                            
                            
                            
                           
                                
                            
                        
                        
                        
                        
                    
                </div>
                <!-- end of form -->
                </form>
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
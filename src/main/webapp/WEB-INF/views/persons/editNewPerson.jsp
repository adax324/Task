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
                    <div class="row">
                        <div class="col-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <div class="col-2"><label for="imie">Imię</label></div>
                                        <div class="col-10"><input class="form-control" type="text"
                                                placeholder="Wpisz imię">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-2"><label for="nazwisko">Nazwisko</label></div>
                                        <div class="col-10"><input class="form-control" type="text"
                                                placeholder="Wpisz nazwisko"></div>

                                    </div>
                                    <div class="form-group row">
                                        <div class="col-2"><label for="git">URL do Gita</label></div>
                                        <div class="col-10"><input type="text" class="form-control" id="git"
                                                placeholder="wpisz adres do gita"></div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-2"><label for="">Od czego się zaczeło</label></div>
                                        <div class="col-10">
                                            <textarea name="textarea" id="textarea1" rows="6" class="form-control"
                                                placeholder="Wpisz coś o sobie"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-2"><label for="">Czy kursant opanował umiejętności</label></div>
                                        <div class="col-1"><label for=""><input type="radio" name="Tak">Tak</label>
                                        </div>
                                        <div class="col-1"><label for=""><input type="radio" name="Nie">Nie</label>
                                        </div>

                                    </div>

                                </div>
                            </div>
                            <div class="card shadow mb-3">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <div class="col-2">
                                            <label for="">Java</label>
                                            <input class="form-control" type="text" placeholder="%">
                                        </div>

                                        <div class="col-2">
                                            <label for="">Wzorce projektowe</label>
                                            <input class="form-control" type="text" placeholder="%">
                                        </div>


                                        <div class="col-2">
                                            <label for="">TDD</label>
                                            <input class="form-control" type="text" placeholder="%">
                                        </div>


                                        <div class="col-2">
                                            <label>Bazy danych SQL</label>
                                            <input class="form-control" type="text" placeholder="%">
                                        </div>


                                        <div class="col-2">
                                            <label>Hibernate JPA</label>
                                            <input type="text" class="form-control" placeholder="%">
                                        </div>

                                        <div class="col-2">
                                            <label>HTML+CSS</label>
                                            <input type="text" class="form-control" placeholder="%">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                            <div class="col-2">
                                                <label>JSP</label>
                                                <input type="text" class="form-control" placeholder="%">
                                            </div>
                                            <div class="col-2">
                                                <label>Thymleaf</label>
                                                <input type="text" class="form-control" placeholder="%">
                                            </div>
                                            <div class="col-2">
                                                <label>Git</label>
                                                <input type="text" class="form-control" placeholder="%">
                                            </div>


                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-success col-2 mb-3">Zapisz</button>
                            <button type="button" class="btn btn-danger col-1 mb-3" 
                            data-toggle="modal" data-target="#deletePersonModal">Usuń</button>

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
    <!-- Delete person modal -->
    <div class="modal fade" id="deletePersonModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Czy na pewno chcesz usunąć osobę? :c</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              Od tej czynności nie ma już powrotu!
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-primary" data-dismiss="modal">Jednak się rozmyśliłem</button>
              <button type="button" class="btn btn-danger" >Usuwamy!</button>
            </div>
          </div>
        </div>
      </div>

    <%@include file="../dynamic/baseJavascript.jspf"%>

</body>

</html>
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
                <form name="editPerson" method="post" action='<c:url value="/persons/editNewPerson/${person.id}"/>'>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <div class="col-2"><label for="imie">Imię</label></div>
                                        <div class="col-10"><input class="form-control" type="text"
                                                                   value="${person.firstName}" name="firstName"
                                                placeholder="Wpisz imię">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-2"><label for="nazwisko">Nazwisko</label></div>
                                        <div class="col-10"><input class="form-control" type="text"
                                                                   value="${person.lastName}" name="lastName"
                                                placeholder="Wpisz nazwisko"></div>

                                    </div>
                                    <div class="form-group row">
                                        <div class="col-2"><label for="git">URL do Gita</label></div>
                                        <div class="col-10"><input type="text" class="form-control" id="git"
                                                                   value="${person.urlGit}" name="urlGit"
                                                placeholder="wpisz adres do gita"></div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-2"><label>Od czego się zaczeło</label></div>
                                        <div class="col-10">
                                            <textarea class="form-control" id="ocsz"  rows="10"  name="description" placeholder="Od czego się zaczęło">${person.description}</textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-2"><label>Czy kursant opanował umiejętności</label></div>
                                        <div class="col-1"><label><input type="radio" name="Tak">Tak</label>
                                        </div>
                                        <div class="col-1"><label><input type="radio" name="Nie">Nie</label>
                                        </div>

                                    </div>

                                </div>
                            </div>
                            <div class="card shadow mb-3">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <div class="col-2">
                                            <label for="">Java</label>
                                            <input class="form-control" type="text"
                                                   value="${person.java}" name="java" placeholder="%">
                                        </div>

                                        <div class="col-2">
                                            <label for="">W. projektowe</label>
                                            <input class="form-control" type="text"
                                                   value="${person.bestPractice}" name="bestPractice" placeholder="%">
                                        </div>


                                        <div class="col-2">
                                            <label>TDD</label>
                                            <input class="form-control" type="text"
                                                   value="${person.tdd}" name="tdd" placeholder="%">
                                        </div>


                                        <div class="col-2">
                                            <label>Bazy danych SQL</label>
                                            <input class="form-control" type="text"
                                                   value="${person.question}" name="question" placeholder="%">
                                        </div>


                                        <div class="col-2">
                                            <label>Hibernate JPA</label>
                                            <input type="text" class="form-control"
                                                   value="${person.hibernate}" name="hibernate" placeholder="%">
                                        </div>

                                        <div class="col-2">
                                            <label>HTML+CSS</label>
                                            <input type="text" class="form-control"
                                                   value="${person.html}" name="html" placeholder="%">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                            <div class="col-2">
                                                <label>JSP</label>
                                                <input type="text" class="form-control"
                                                       value="${person.jsp}" name="jsp" placeholder="%">
                                            </div>
                                            <div class="col-2">
                                                <label>Thymleaf</label>
                                                <input type="text" class="form-control"
                                                       value="${person.thymeleaf}" name="thymeleaf" placeholder="%">
                                            </div>
                                            <div class="col-2">
                                                <label>Git</label>
                                                <input type="text" class="form-control"
                                                       value="${person.git}" name="git" placeholder="%">
                                            </div>


                                    </div>
                                </div>
                            </div>
                            <input type="submit" value="Zapisz" class="btn btn-success col-2 mb-3"/>

                            <input type="button" class="btn btn-danger col-1 mb-3"
                            data-toggle="modal" data-target="#deletePersonModal" value="Usuń"/>

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
                <form name="delete" method="post" action='<c:url value="/persons/delete/${person.id}"/>'>
              <input type="submit" class="btn btn-danger" value="Usuwamy" ></input>
                </form>
            </div>
          </div>
        </div>
      </div>

    <%@include file="../dynamic/baseJavascript.jspf"%>

</body>

</html>
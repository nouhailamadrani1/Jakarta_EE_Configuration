<%--
  Created by IntelliJ IDEA.
  User: YourUsername
  Date: 15/10/2023
  Time: 01:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="m-0 p-0 overflow-hidden">
    <div class="row">
        <div class="col-md-2 bg-white">
            <a class=" fst-italic fs-3 mt-2 mx-2 d-flex   align-items-center text-decoration-none" href="#"  style="color: #C9CAF0; "><span class="text-dark">Resourcium</span>Optima</a>
            <h5 class="mt-5 px-2">Filter</h5>
            <h6 class="mt-3  px-2">Profession</h6>
            <ul class="  px-2 mt-2 list-group list-group-flush">
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="developerCheckbox">
                        <label class="form-check-label" for="developerCheckbox">Developer</label>
                    </div>
                    <span class="badge rounded-pill" style="background-color: #C9CAF0; color: #8387F5">14</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="designerCheckbox">
                        <label class="form-check-label" for="designerCheckbox">Designer</label>
                    </div>
                    <span class="badge rounded-pill" style="background-color: #C9CAF0; color: #8387F5">10</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="managerCheckbox">
                        <label class="form-check-label" for="managerCheckbox">Manager</label>
                    </div>
                    <span class="badge rounded-pill" style="background-color: #C9CAF0; color: #8387F5">5</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" >
                        <label class="form-check-label" for="managerCheckbox">Cloud Engineer</label>
                    </div>
                    <span class="badge rounded-pill" style="background-color: #C9CAF0; color: #8387F5">13</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" >
                        <label class="form-check-label" for="managerCheckbox">IT Consultant</label>
                    </div>
                    <span class="badge rounded-pill" style="background-color: #C9CAF0; color: #8387F5">9</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" >
                        <label class="form-check-label" for="managerCheckbox">Data Analyst</label>
                    </div>
                    <span class="badge rounded-pill" style="background-color: #C9CAF0; color: #8387F5">15</span>
                </li>
            </ul>
        </div>
        <div class="col-md-10">
            <nav class="navbar navbar-expand-lg" style="background-color: #8387F5; color: white">
                <div class="container-fluid">

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
                            aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarText">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active  text-white" aria-current="page" href="reseau.jsp">Réseau</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-decoration-none text-white" href="#">Équipement</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-decoration-none text-white" href="#">Département</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-decoration-none text-white" href="profil.jsp">Profil</a>
                            </li>
                        </ul>
                        <div class="d-flex align-items-center p-0 m-0 "  height="40px">
                            <img src="images/n.jpg" class="rounded-circle me-2" alt="profil" width="40px" height="40px">
                            <div class="me-2 " height="40px">
                                <h6>Nouhaila Madrani <br> <span class="fw-normal">Developer</span></h6>

                            </div>
                        </div>
                    </div>
                </div>
            </nav>

            <div class="pb-3" style="background-color: #F5F5F5">
                <h5 class="px-3 py-4">Statistiques</h5>

                <div class="d-flex justify-content-evenly py-2">
                    <div class="rounded-pill shadow-sm" style="height: 90px; width:250px; background-color: #FFA9D4 "> </div>
                    <div class="rounded-pill shadow-sm" style="height: 90px; width:250px; background-color: #83DBF3 "> </div>
                    <div class="rounded-pill shadow-sm" style="height: 90px; width:250px; background-color: #F9A8A7 "> </div>
                    <div class="rounded-pill shadow-sm" style="height: 90px; width:250px; background-color: #D6A9FE "> </div>
                </div>
                    <div class="px-3 ">
                        <h5 class=" py-4">Employés</h5>

                        <div class="d-flex justify-content-evenly ">

                            <div class="rounded shadow-sm" style="height: 210px; width:300px; background-color: #ffffff ">
                                <div class="d-flex align-items-center justify-content-center p-3 m-0 "  height="50px">
                                    <img src="images/n.jpg" class="rounded-circle me-2" alt="profil" width="50px" height="50px">
                                    <div class="me-2 " height="50px">
                                        <p class="fw-light" style="font-size: 12px;"> <img width="17" height="17" src="https://img.icons8.com/material-rounded/24/phone--v1.png" alt="phone--v1" class="mx-1"/>+ 212 639467124 <br>
                                            <span class="fw-light" style="font-size: 12px;"> <img width="17" height="17" src="https://img.icons8.com/ios-filled/50/email.png" alt="email" class="mx-1" />nouhailamadrani02@gmail.com</span>
                                        </p>

                                    </div>

                                </div>
                                <h6 class="px-3 m-0">Nouhaila Madrani</h6>
                                <p class="px-3 m-0 text-black-50">Developer</p>
                                <div class="d-flex justify-content-center my-2">
                                    <button type="button" class="btn shadow  px-3 " style="background-color:#8387F5 ; color:#ffffff ">Profil</button>
                                </div>
                            </div>
                            <div class="rounded shadow-sm" style="height: 210px; width:300px; background-color: #ffffff ">
                                <div class="d-flex align-items-center justify-content-center p-3 m-0 "  height="50px">
                                    <img src="images/n.jpg" class="rounded-circle me-2" alt="profil" width="50px" height="50px">
                                    <div class="me-2 " height="50px">
                                        <p class="fw-light" style="font-size: 12px;"> <img width="17" height="17" src="https://img.icons8.com/material-rounded/24/phone--v1.png" alt="phone--v1" class="mx-1"/>+ 212 639467124 <br>
                                            <span class="fw-light" style="font-size: 12px;"> <img width="17" height="17" src="https://img.icons8.com/ios-filled/50/email.png" alt="email" class="mx-1" />nouhailamadrani02@gmail.com</span>
                                        </p>

                                    </div>
                                </div>
                                <h6 class="px-3 m-0">Nouhaila Madrani</h6>
                                <p class="px-3 m-0 text-black-50">Developer</p>
                                <div class="d-flex justify-content-center my-2">
                                    <button type="button" class="btn shadow  px-3 " style="background-color:#8387F5 ; color:#ffffff ">Profil</button>
                                </div></div>
                            <div class="rounded shadow-sm" style="height: 210px; width:300px; background-color: #ffffff ">
                                <div class="d-flex align-items-center justify-content-center p-3 m-0 "  height="50px">
                                    <img src="images/n.jpg" class="rounded-circle me-2" alt="profil" width="50px" height="50px">
                                    <div class="me-2 " height="50px">
                                        <p class="fw-light" style="font-size: 12px;"> <img width="17" height="17" src="https://img.icons8.com/material-rounded/24/phone--v1.png" alt="phone--v1" class="mx-1"/>+ 212 639467124 <br>
                                            <span class="fw-light" style="font-size: 12px;"> <img width="17" height="17" src="https://img.icons8.com/ios-filled/50/email.png" alt="email" class="mx-1" />nouhailamadrani02@gmail.com</span>
                                        </p>

                                    </div>

                                </div>
                                <h6 class="px-3 m-0">Nouhaila Madrani</h6>
                                <p class="px-3 m-0 text-black-50">Developer</p>
                                <div class="d-flex justify-content-center my-2">
                                    <button type="button" class="btn shadow  px-3 " style="background-color:#8387F5 ; color:#ffffff ">Profil</button>
                                </div></div>
                        </div>

<%--                        --%>
                        <div class="d-flex justify-content-evenly mb-2  my-3">

                            <div class="rounded shadow-sm" style="height: 210px; width:300px; background-color: #ffffff ">
                                <div class="d-flex align-items-center justify-content-center p-3 m-0 "  height="50px">
                                    <img src="images/n.jpg" class="rounded-circle me-2" alt="profil" width="50px" height="50px">
                                    <div class="me-2 " height="50px">
                                        <p class="fw-light" style="font-size: 12px;"> <img width="17" height="17" src="https://img.icons8.com/material-rounded/24/phone--v1.png" alt="phone--v1" class="mx-1"/>+ 212 639467124 <br>
                                            <span class="fw-light" style="font-size: 12px;"> <img width="17" height="17" src="https://img.icons8.com/ios-filled/50/email.png" alt="email" class="mx-1" />nouhailamadrani02@gmail.com</span>
                                        </p>

                                    </div>

                                </div>
                                <h6 class="px-3 m-0">Nouhaila Madrani</h6>
                                <p class="px-3 m-0 text-black-50">Developer</p>
                                <div class="d-flex justify-content-center my-2">
                                    <button type="button" class="btn shadow  px-3 " style="background-color:#8387F5 ; color:#ffffff ">Profil</button>
                                </div>
                            </div>
                            <div class="rounded shadow-sm" style="height: 210px; width:300px; background-color: #ffffff ">
                                <div class="d-flex align-items-center justify-content-center p-3 m-0 "  height="50px">
                                    <img src="images/n.jpg" class="rounded-circle me-2 " alt="profil" width="50px" height="50px">
                                    <div class="me-2 " height="50px">
                                        <p class="fw-light" style="font-size: 12px;"> <img width="17" height="17" src="https://img.icons8.com/material-rounded/24/phone--v1.png" alt="phone--v1" class="mx-1"/>+ 212 639467124 <br>
                                            <span class="fw-light" style="font-size: 12px;"> <img width="17" height="17" src="https://img.icons8.com/ios-filled/50/email.png" alt="email" class="mx-1" />nouhailamadrani02@gmail.com</span>
                                        </p>

                                    </div>
                                </div>
                                <h6 class="px-3 m-0">Nouhaila Madrani</h6>
                                <p class="px-3 m-0 text-black-50">Developer</p>
                                <div class="d-flex justify-content-center my-2">
                                    <button type="button" class="btn shadow  px-3 " style="background-color:#8387F5 ; color:#ffffff ">Profil</button>
                                </div></div>
                            <div class="rounded shadow-sm" style="height: 210px; width:300px; background-color: #ffffff ">
                                <div class="d-flex align-items-center justify-content-center p-3 m-0 "  height="50px">
                                    <img src="images/n.jpg" class="rounded-circle me-2" alt="profil" width="50px" height="50px">
                                    <div class="me-2 " height="50px">
                                        <p class="fw-light" style="font-size: 12px;"> <img width="17" height="17" src="https://img.icons8.com/material-rounded/24/phone--v1.png" alt="phone--v1" class="mx-1"/>+ 212 639467124 <br>
                                            <span class="fw-light" style="font-size: 12px;"> <img width="17" height="17" src="https://img.icons8.com/ios-filled/50/email.png" alt="email" class="mx-1" />nouhailamadrani02@gmail.com</span>
                                        </p>

                                    </div>

                                </div>
                                <h6 class="px-3 m-0">Nouhaila Madrani</h6>
                                <p class="px-3 m-0 text-black-50">Developer</p>
                                <div class="d-flex justify-content-center my-2">
                                    <button type="button" class="btn shadow  px-3 " style="background-color:#8387F5 ; color:#ffffff ">Profil</button>
                                </div></div>
                        </div>
<%--                        --%>

                    </div>




            </div>

        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

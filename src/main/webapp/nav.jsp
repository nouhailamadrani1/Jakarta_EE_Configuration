<nav class="navbar navbar-expand-lg" style="background-color: #8387F5; color: white">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
            aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active text-white fw-bolder" aria-current="page" href="reseau">Reseau</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-decoration-none text-white fw-bolder" href="equipements">Equipement</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-decoration-none text-white fw-bolder" href="department">Departement</a>
        </li>

        <%

          if (session.getAttribute("id").hashCode() == 4) {


        %>
        <li class="nav-item">
          <a class="nav-link text-decoration-none text-white fw-bolder" href="admin">Admin</a>
        </li>
        <% }%>
        <li class="nav-item">



          <a class="nav-link text-decoration-none text-white fw-bolder" href="chef/<%= session.getAttribute("id") %>">Chef de Departement</a>

        </li>
        <li class="nav-item">



<%--          <a class="nav-link text-decoration-none text-white fw-bolder" href="reservations/">Reservation </a>--%>

        </li>
      </ul>
      <div class="d-flex align-items-center p-0 m-0" style="height: 40px;">
        <img src="images/n.jpg" class="rounded-circle me-2" alt="profil" width="40px" height="40px">
        <div class="me-2" style="height: 40px;">
          <h6>
            <%= session.getAttribute("employeeName") %>
            <br>
            <span class="fw-normal">
                <%= session.getAttribute("employeeJobTitle") %>
            </span>
          </h6>
        </div>
      </div>
    </div>
  </div>
</nav>
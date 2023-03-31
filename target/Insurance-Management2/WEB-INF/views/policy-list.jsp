<html>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <head>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand">Insurance Policy Management</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse p-2" id="navbarNav">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0 fs-5"></ul>
          <div class="d-flex navbar-nav fs-5">
            <li class="nav-item">
              <a
                class="nav-link active text-warning"
                aria-current="page"
                href="http://localhost:8080/Insurance-Management2/"
              >
                Home
              </a>
            </li>
            <li class="nav-item">
              <a
                class="nav-link active"
                aria-current="page"
                href="http://localhost:8080/Insurance-Management2/userLogin"
                >Customer</a
              >
            </li>
            <li class="nav-item">
              <a
                class="nav-link active"
                aria-current="page"
                href="http://localhost:8080/Insurance-Management2/adminLogin"
              >
                Admin
              </a>
            </li>
          </div>
        </div>
      </div>
    </nav>

    <div class="container p-5 bg-light">
      <h2 class="text-center mt-3 mb-5">POLICY SCHEMES AVAILABLE</h2>
      <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Scheme Number</th>
            <th scope="col">Policy Name</th>
            <th scope="col">Policy Type</th>
            <th scope="col">Maximum No Of Years</th>
            <th scope="col">Premium Rate Per Year Per Lakh</th>
            <th scope="col">Maximum Sum Assured</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="c" items="${policies}" varStatus="status">
            <tr>
              <th scope="row">${status.count}</th>
              <td>${c.getScheme_number()}</td>
              <td>${c.getPolicy_name()}</td>
              <td>${c.getPolicy_type()}</td>
              <td>${c.getMax_no_of_years()}</td>
              <td>${c.getPremium_rate()}</td>
              <td>${c.getMax_sum_assured()}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </body>
</html>

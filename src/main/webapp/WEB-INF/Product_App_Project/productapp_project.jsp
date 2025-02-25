<html>
<head>

<%@ include file="/WEB-INF/Product_App_Project/base.jsp" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

</head>
<body>
   <div class -="container mt-3">
   <div class="row">
   <div class="col-md -12">

   <div class -="container mt-3">
   <div class="row">
   <div class="col-md -12">


  <!-- Scrolling heading box at the top center -->
  <div class="scrolling-box">
    <div class="marquee">
      <span>Welcome To Product App</span>
    </div>
  </div>

  <!-- Table layout with empty header -->
  <div class="table-container">
    <table class="table">

    </table>
  </div>

  <style>
    /* Scrolling box container with updated size and colors */
    .scrolling-box {
      width: 370px; /* Adjusted width */
      height: 60px; /* Adjusted height */
      overflow: hidden;
      border: 2px;
      background-color: black; /* New background color (pale yellow) */
      position: fixed;
      top: 10px;
      left: 50%;
      transform: translateX(-50%);
      padding: 5px;
      box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
      display: flex;
      align-items: center;
      justify-content: center;
      z-index: 1000;
    }

    /* Scrolling text with updated color */
    .marquee {
      display: inline-block;
      white-space: nowrap;
      animation: scrollText 6s linear infinite;
    }

    .marquee span {
      font-size: 2.1em;
      font-weight: bold;
      color: white; /* New font color (chocolate) */
      padding-right: 20px;
    }

    /* Animation for scrolling text */
    @keyframes scrollText {
      0% { transform: translateX(100%); }
      100% { transform: translateX(-100%); }
    }

    /* Styling for table layout */
    .table-container {
      margin-top: 70px;
      text-align: center;
    }

    .table {
      width: 60%; /* Table width */
      margin: auto;
      border-collapse: collapse;
    }

    .table th, .table td {
      border: 1px solid #ddd;
      padding: 8px;
    }
  </style>


<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">price</th>
      <th scope="col">Action</th>

    </tr>
  </thead>
  <tbody>
    <tr>
    <c:forEach items="${product }" var="p">
      <th scope="row">TECHONLY${p.id }</th>
      <td>${p.name }</td>
      <td>${p.description}</td>
      <td class="font-weight-bold">&#x20B9; ${p.price }</td>
      <td>
     <a href="delete/${p.id}"><i class="fa-solid fa-trash text-danger" style ="font-size: 30px;"></i></a>
     <a href="update/${p.id}"><i class="fas fa-pen-nib text-primary" style ="font-size: 30px;"></i></a>

      </td>
    </tr>
</c:forEach>
  </tbody>
</table>

  <div class ="container text-center">
  <a href="addproduct" class="btn btn-outline-success">Add Product</a>
  </div>

   </div>
   </div>
   </div>

</body>
</html>
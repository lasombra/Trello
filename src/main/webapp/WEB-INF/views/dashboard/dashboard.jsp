<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  <head>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Album example for Bootstrap</title>

	<c:url value="/" var="contextPath" />
	<link rel="stylesheet" href="${contextPath}resources/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${contextPath}resources/css/bootstrap-theme.min.css">

  </head>

  <body>
      
      <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
      	<h1 class="display-4">Dashboards</h1>
      	<p class="lead">All your dashboards with a count of total lists per dashboard</p>
      	<br>
   	 </div>

      <div class="album py-5 bg-light">
        <div class="container">

          <div class="row">
          
          <c:forEach var="dashboard" items="${dashboards }">
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="${contextPath}resources/images/default-image.png" height=60 width="130">
                <div class="card-body">
                  <p class="card-text">${dashboard.getTitle() }</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                    </div>
                    <small class="text-muted">Lists: ${totalListsPerDashboard }</small>
                  </div>
                  <br>
                  <br>
                </div>
              </div>
            </div>
           </c:forEach>
          
          </div> <!-- div  rows -->
          
        </div>
      </div>
      
  </body>
</html>

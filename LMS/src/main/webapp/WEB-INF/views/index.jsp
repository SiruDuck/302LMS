<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<style>
.notice a{
	text-decoration: none;
}
</style>
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel" style='margin:2rem 0 3rem 0'>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="300" src="resources/images/mainlogin/index_banner1.png" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false"></img>

    </div>
    <div class="carousel-item">
      <img class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="300" src="resources/images/mainlogin/index_banner2.png" role="img" aria-label="Placeholder: Second slide" preserveAspectRatio="xMidYMid slice" focusable="false"></img>

    </div>
    <div class="carousel-item">
     <img class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="300" src="resources/images/mainlogin/index_banner3.png" role="img" aria-label="Placeholder: Third slide" preserveAspectRatio="xMidYMid slice" focusable="false"></img>

    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div class="row">
    <div class="col-lg-6">
        <!-- Default Card Example -->
        <div class="card shadow mb-4">
            <!-- Card Header - Dropdown -->
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">공지사항</h6>
                <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    	<i class="fa-solid fa-plus text-gray-600"></i>
                        <!-- <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i> -->
                    </a>                    
                </div>
            </div>
            <!-- Card Body -->
            <div class="card-body notice border-bottom-primary">
                <div class='mb-3 ml-3'>
                	<a href='' class='text-gray-800'>공지사항</a>
                </div>
                <div class='mb-3 ml-3'>
                	<a href='' class='text-gray-800'>공지사항</a>
                </div>
                <div class='ml-3'>
                	<a href='' class='text-gray-800'>공지사항</a>
                </div>
            </div>
        </div>

        <!-- Basic Card Example
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Basic Card Example</h6>
            </div>
            <div class="card-body">
                The styling for this basic card example is created by using default Bootstrap
                utility classes. By using utility classes, the style of the card component can be
                easily modified with no need for any custom CSS!
            </div>
        </div> -->

    </div>

    <div class="col-lg-6">

        <div class="card shadow mb-4">
            <!-- Card Header - Dropdown -->
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-info">취업정보</h6>
                <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    	<i class="fa-solid fa-plus text-gray-600"></i>
                        <!-- <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i> -->
                    </a>                    
                </div>
            </div>
            <!-- Card Body -->
            <div class="card-body notice border-bottom-info">
                <div class='mb-3 ml-3'>
                	<a href='' class='text-gray-800'>정보</a>
                </div>
                <div class='mb-3 ml-3'>
                	<a href='' class='text-gray-800'>정보</a>
                </div>
                <div class='ml-3'>
                	<a href='' class='text-gray-800'>정보</a>
                </div>
            </div>
        </div>
    </div>
</div>



</body>
</html>
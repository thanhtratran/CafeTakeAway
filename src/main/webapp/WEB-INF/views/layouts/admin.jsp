<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>

<head>
	<!-- Basic Page Info -->
	<title>Cafe Slide Dashboard</title>
	<meta charset="utf-8">
	

	<!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="<c:url value="/assets/admin/vendors/images/apple-touch-icon.png" />">
	<link rel="icon" type="image/png" />" sizes="32x32" href="<c:url value="/assets/admin/vendors/images/favicon-32x32.png" />">
	<link rel="icon" type="image/png" />" sizes="16x16" href="<c:url value="/assets/admin/vendors/images/favicon-16x16.png" />">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&amp;display=swap"
		rel="stylesheet">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/admin/vendors/styles/core.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/admin/vendors/styles/icon-font.min.css" />">
	<%-- <link rel="stylesheet" type="text/css" href="<c:url value="/assets/admin/src/plugins/datatables/css/dataTables.bootstrap4.min.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/admin/src/plugins/datatables/css/responsive.bootstrap4.min.css" />"> --%>
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/admin/vendors/styles/style.css" />">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() { dataLayer.push(arguments); }
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
</head>

<body>


	<div class="header">
		<div class="header-left">
			<div class="menu-icon dw dw-menu"></div>
			<div class="search-toggle-icon dw dw-search2" data-toggle="header_search"></div>
			<div class="header-search">
			</div>
		</div>
		<div class="header-right">


			<div class="user-info-dropdown">
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown">
						<span class="user-icon">
							<img src="<c:url value="/assets/admin/vendors/images/admin-img.png" />" alt="">
						</span>
						<span class="user-name">Phạm Quyền</span>
						<span class="user-name">[ADMIN]</span>
					</a>
					<div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
						<a class="dropdown-item " href="<c:url value="/admin/profiles"/>"><i class="dw dw-user1"></i>Thông tin cá
							nhân</a>
						<a class="dropdown-item " href="<c:url value="/admin/profiles/updatePassword"/>"><i
								class="icon-copy fi-key"></i>Thay đổi mật khẩu</a>
						<a class="dropdown-item logoutLink" href=""><i class="dw dw-logout"/>"></i> Đăng xuất</a>
						<!-- <a href="" class="dropdown-toggle  no-arrow">
							<span class="micon"><i class="dw dw-logout" aria-hidden="true"></i></span><span class="mtext">Đăng xuất</span>
						</a> -->
						<form action="/logout" method="post" name="logoutForm" hidden="hidden">
							<input class="micon mtext" type="submit" value="Đăng xuất">
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>



	<div class="left-side-bar">
		<div class="brand-logo">
			<a href="<c:url value="/assets/admin/home"/>">
				<!-- <img src="vendors/images/deskapp-logo.svg" alt="" class="dark-logo"> -->
				<img src="<c:url value="/assets/user/img/home/c19.png" />" alt="" class="light-logo">
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li>
						<a href="<c:url value="/admin/home"/>" class="dropdown-toggle  no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Trang chủ</span>
						</a>

					</li>
					<li>
						<a href="<c:url value="/admin/orders"/>" class="dropdown-toggle  no-arrow">
							<span class="micon"><i class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
								class="mtext">Quản lý đơn hàng</span>
						</a>

					</li>
					<li>
						<a href="<c:url value="/admin/products"/>" class="dropdown-toggle  no-arrow">
							<span class="micon"><i class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
								class="mtext">Quản lý sản phẩm</span>
						</a>

					</li>
					<li>
						<a href="<c:url value="/admin/categories"/>" class="dropdown-toggle  no-arrow">
							<span class="micon"><i class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
								class="mtext">Quản lý danh mục</span>
						</a>

					</li>
					<li>
						<a href="<c:url value="/users"/>" class="dropdown-toggle  no-arrow">
							<span class="micon"><i class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
								class="mtext">Quản lý người dùng</span>
						</a>

					</li>
					<li>
						<a href="<c:url value="/admin/discounts"/>" class="dropdown-toggle  no-arrow">
							<span class="micon"><i class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
								class="mtext">Quản lý khuyến mãi</span>
						</a>

					</li>
					<li>
						<a href="<c:url value="/admin/feedbacks"/>" class="dropdown-toggle  no-arrow">
							<span class="micon"><i class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
								class="mtext">Quản lý phản hồi</span>
						</a>

					</li>
					<li>
						<a href="" class="dropdown-toggle logoutLink no-arrow">
							<span class="micon"><i class="dw dw-logout" aria-hidden="true"></i></span><span
								class="mtext">Đăng xuất</span>
						</a>
						<!-- <form th:action="@{/logout}" method="post" name = "logoutForm" th:hidden= "true">
							<input class="micon mtext" type="submit" value="Đăng xuất">
						</form> -->
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="mobile-menu-overlay"></div>

	<div>
		<div class="main-container" >
			<div class="pd-ltr-20">
				<div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4>Trang chủ</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="<c:url value="/assets/admin/home"/>">Trang chủ</a></li>
	
								</ol>
							</nav>
						</div>
	
					</div>
				</div>
				<div class="card-box pd-20 height-100-p mb-30">
					<div class="row align-items-center">
						<div class="col-md-4">
							<img src="<c:url value="/assets/admin/vendors/images/banner-img.png" />" alt="">
						</div>
						<div class="col-md-8">
							<h4 class="font-20 weight-500 mb-10 text-capitalize">
								Welcome <div class="weight-600 font-30 text-blue">Phạm Quyền !</div>
							</h4>
							<p class="font-18 max-width-600">Furnitica, kênh mua sắm sản phẩm Nội thất & Phụ kiện trang trí
								với hàng ngàn lựa chọn thỏa mãn nhu cầu trang trí nhà...
								Nhận thiết kế, thi công trọn gói nội thất chung cư, văn phòng, cửa hàng shop…</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-3 mb-30">
						<div class="card-box height-100-p widget-style1">
							<div class="d-flex flex-wrap align-items-center">
								<div class="progress-data">
									<div><i class="icon-copy fa fa-address-book text-primary" style="font-size: 85px;"
											aria-hidden="true"></i></div>
								</div>
								<div class="widget-data">
									<div class="h4 mb-0">11</div>
									<div class="weight-600 font-14">Người dùng</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 mb-30">
						<div class="card-box height-100-p widget-style1">
							<div class="d-flex flex-wrap align-items-center">
								<div class="progress-data">
									<div><i class="icon-copy dw dw-mail text-warning" style="font-size: 85px;"
											aria-hidden="true"></i></div>
											<i class=""></i>
								</div>
								<div class="widget-data">
									<div class="h4 mb-0">4</div>
									<div class="weight-600 font-14">Phản hồi</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 mb-30">
						<div class="card-box height-100-p widget-style1">
							<div class="d-flex flex-wrap align-items-center">
								<div class="progress-data">
									<div class="mr-2"><i class="icon-copy dw dw-box text-success" style="font-size: 85px;"
											aria-hidden="true"></i></div>
										
								</div>
								<div class="widget-data">
									<div class="h4 mb-0">13</div>
									<div class="weight-600 font-14">Sản phẩm</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 mb-30">
						<div class="card-box height-100-p widget-style1">
							<div class="d-flex flex-wrap align-items-center">
								<div class="progress-data">
									<div><i class="icon-copy dw dw-delivery-truck-1 text-info" style="font-size: 85px;"
											aria-hidden="true"></i></div>
								</div>
								<div class="widget-data">
									<div class="h4 mb-0">1</div>
									<div class="weight-600 font-14">Đơn hàng</div>
								</div>
							</div>
						</div>
					</div>
				</div>
	
				<!-- <div class="card-box mb-30">
					<h2 class="h4 pd-20">Sản phẩm bán nhiều nhất</h2>
					<table class=" table nowrap">
						<thead>
							<tr>
								<th class="table-plus">Sản phẩm</th>
								<th>Tên</th>
								<th>Bảo hành</th>
								<th>Size</th>
								<th>Giá</th>
								<th>Số lượng</th>
	
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="table-plus">
									<img src="vendors/images/product-1.jpg" width="70" height="70" alt="">
								</td>
								<td>
									<h5 class="font-16">Shirt</h5>
									by John Doe
								</td>
								<td>Black</td>
								<td>M</td>
								<td>$1000</td>
								<td>1</td>
	
							</tr>
							<tr>
								<td class="table-plus">
									<img src="vendors/images/product-1.jpg" width="70" height="70" alt="">
								</td>
								<td>
									<h5 class="font-16">Shirt</h5>
									by John Doe
								</td>
								<td>Black</td>
								<td>M</td>
								<td>$1000</td>
								<td>1</td>
	
							</tr>
							<tr>
								<td class="table-plus">
									<img src="vendors/images/product-1.jpg" width="70" height="70" alt="">
								</td>
								<td>
									<h5 class="font-16">Shirt</h5>
									by John Doe
								</td>
								<td>Black</td>
								<td>M</td>
								<td>$1000</td>
								<td>1</td>
	
							</tr>
							<tr>
								<td class="table-plus">
									<img src="vendors/images/product-1.jpg" width="70" height="70" alt="">
								</td>
								<td>
									<h5 class="font-16">Shirt</h5>
									by John Doe
								</td>
								<td>Black</td>
								<td>M</td>
								<td>$1000</td>
								<td>1</td>
	
							</tr>
							<tr>
								<td class="table-plus">
									<img src="vendors/images/product-1.jpg" width="70" height="70" alt="">
								</td>
								<td>
									<h5 class="font-16">Shirt</h5>
									by John Doe
								</td>
								<td>Black</td>
								<td>M</td>
								<td>$1000</td>
								<td>1</td>
	
							</tr>
						</tbody>
					</table>
				</div> -->
	
			</div>
		</div>
	</div>
	<!-- js -->
	<script src="<c:url value="/assets/admin/vendors/scripts/core.js" />"></script>
	<script src="<c:url value="/assets/admin/vendors/scripts/script.min.js" />"></script>
	<script src="<c:url value="/assets/admin/vendors/scripts/process.js" />"></script>
	<script src="<c:url value="/assets/admin/vendors/scripts/layout-settings.js" />"></script>
	<%-- <script src="<c:url value="/assets/admin/src/plugins/apexcharts/apexcharts.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/jquery.dataTables.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/dataTables.bootstrap4.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/dataTables.responsive.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/responsive.bootstrap4.min.js" />"></script> --%>
	
	<script src="<c:url value="/assets/admin/vendors/scripts/dashboard.js" />"></script>
	
	<%-- <script src="<c:url value="/assets/admin/src/plugins/datatables/js/dataTables.buttons.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/buttons.bootstrap4.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/buttons.print.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/buttons.html5.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/buttons.flash.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/pdfmake.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/vfs_fonts.js" />"></script> --%>
	<!-- Datatable Setting js -->
	<script src="<c:url value="/assets/admin/vendors/scripts/datatable-setting.js" />"></script>
	<script>
		var loadFile = function (event) {
			var image = document.getElementById('thumnail');
			image.src = URL.createObjectURL(event.target.files[0]);
		};
		function showPreviewOne(event) {
			if (event.target.files.length > 0) {
				let src = URL.createObjectURL(event.target.files[0]);
				let preview = document.getElementById("thumnail");
				preview.src = src;
				preview.style.display = "block";
			}
		}
		jQuery(document).ready(function () {
			$(".logoutLink").on("click", function (e) {
				e.preventDefault();
				document.logoutForm.submit();
			});
		});
	</script>
</body>

</html>
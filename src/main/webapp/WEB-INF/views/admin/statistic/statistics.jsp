<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="main-container">
	<div class="pd-ltr-20 xs-pd-20-10">
		<div class="page-header">
			<div class="row">
				<div class="col-md-6 col-sm-12">
					<div class="title">

						<h4>
							<span>Chỉnh sửa khuyến mãi</span>

						</h4>
					</div>
					<nav aria-label="breadcrumb" role="navigation">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="/admin/home">Trang
									chủ </a></li>
							<li class="breadcrumb-item active" aria-current="page"><span>Chỉnh
									sửa khuyến mãi</span></li>
						</ol>
					</nav>
				</div>

			</div>
		</div>

		<div class="card-box mb-30 p-5" style="min-height: 500px;">
			<div class="container mt-5 d-flex justify-content-center">
				<div class="row">
					<div class="col">
						<form action="/admin/discounts/saveOrUpdate" method="post"
							class="shadow-lg rounded bg-light p-2" style="width: 700px;">
							<h4 class="text-center text-primary">Thông tin sản phẩm
								khuyến mãi</h4>
							<div class="form-group">
								<label for="name">Tên sản phẩm:</label> <input type="text"
									class="form-control" id="name" readonly="" name="productName"
									value="Cà Phê Sữa Đá"> <input type="hidden"
									class="form-control" id="id" readonly="" name="discountId"
									value="12">
							</div>
							<div class="form-row">
								<div class="form-group col">
									<label for="startDay">Ngày bắt đầu:</label> <input
										class="form-control" placeholder="Chọn ngày" id="startDay"
										type="date" name="startDate" value="2021-09-21">
								</div>
								<div class="form-group col">
									<label for="endtDay">Ngày kết thúc:</label> <input
										class="form-control" placeholder="Chọn ngày" id="endtDay"
										type="date" name="endDate" value="2022-10-05">
								</div>
							</div>
							<div class="form-group">
								<label for="discount">Phần trăm giảm:</label> <input
									type="number" class="form-control" id="discount" required=""
									min="1" max="100" name="discountPercent" value="10">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">
									<h4 class="text-light">Đồng ý</h4>
								</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="pd-ltr-20 xs-pd-20-10">
		ACX<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-8">
					<a href="/admin/products/add" type="button"
						class="btn btn-outline-primary btn-lg m-2 mb-4">Thêm sản phẩm</a>
				</div>
				<div class="col-sm-6 col-md-4">
					<div class="form-group row">
						<div class="col-sm-12 col-md-10">
							<form action="/admin/products/page/1">
								<div class="form-inline float-left" style="margin-top: 10px;">
									<input class="form-control" placeholder="Tìm kiếm"
										type="hidden" style="width: 60%; display: block;"
										name="sortField" value="productId"> <input
										class="form-control" placeholder="Tìm kiếm" type="hidden"
										style="width: 60%; display: block;" name="sortDir"
										value="desc"> <input class="form-control"
										placeholder="Tìm kiếm" name="keyword" type="text" value=""
										style="width: 60%; display: block;">
									<button class="form-control btn btn-primary" type="submit">Tìm
										kiếm</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="card-box mb-30">
			<div class="pd-20" style="display: block; text-align: center;">
				<h3 class="text-blue h4 justify-content-center">Danh sách sản
					phẩm</h3>
			</div>
			<div class="pb-20">
				<table class=" table stripe hover nowrap">
					<thead>
						<tr>
							<th style="color: blue;"><a
								href="/admin/products/page/1?sortField=productId&amp;sortDir=asc">
									ID <span> <i class="icon-copy fa fa-arrow-up"
										aria-hidden="true"></i>
								</span> <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'asc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
							</a></th>
							<th>Sản phẩm</th>
							<th style="color: blue;"><a
								href="/admin/products/page/1?sortField=productName&amp;sortDir=asc">
									Tên sản phẩm </a></th>
							<th>Kích thước</th>
							<th style="color: blue;"><a
								href="/admin/products/page/1?sortField=enteredDate&amp;sortDir=asc">
									Ngày nhập </a></th>
							<th style="color: blue;"><a
								href="/admin/products/page/1?sortField=quantity&amp;sortDir=asc">
									Tồn kho </a></th>
							<th style="color: blue;"><a
								href="/admin/products/page/1?sortField=unitPrice&amp;sortDir=asc">
									Giá bán </a></th>
							<th class="datatable-nosort">Hành động</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>13</td>
							<td class="table-plus"><img
								src="/site/upload/hong-tra-latte.jpg" width="70" height="70"
								alt=""></td>
							<td>Hồng Trà Latte</td>
							<td>Vừa</td>
							<!-- <td th:text="${product.enteredDate}">29-03-2018</td> -->
							<td class="text-center">2022-02-14</td>
							<td>50</td>
							<td><span>52.000,00</span> đ</td>
							<td>
								<div class="dropdown">
									<a
										class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
										href="#" role="button" data-toggle="dropdown"> <i
										class="dw dw-more"></i>
									</a>
									<div
										class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
										<a class="dropdown-item" href="/admin/discounts/add/13"><i
											class="icon-copy fa fa-plus" aria-hidden="true"></i>Thêm
											khuyến mãi </a> <a class="dropdown-item"
											href="/admin/products/update/13"><i class="dw dw-edit2"></i>
											Chỉnh sửa</a> <a
											onclick="return confirm('Bạn muốn xóa sản phẩm ?');"
											class="dropdown-item" href="/admin/products/delete/13"><i
											class="dw dw-delete-3"></i>Xóa </a>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>12</td>
							<td class="table-plus"><img
								src="/site/upload/oolong-nuong-nong.jpg" width="70" height="70"
								alt=""></td>
							<td>Trà Sữa Oolong</td>
							<td>Lớn</td>
							<!-- <td th:text="${product.enteredDate}">29-03-2018</td> -->
							<td class="text-center">2022-02-14</td>
							<td>50</td>
							<td><span>70.000,00</span> đ</td>
							<td>
								<div class="dropdown">
									<a
										class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
										href="#" role="button" data-toggle="dropdown"> <i
										class="dw dw-more"></i>
									</a>
									<div
										class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
										<a class="dropdown-item" href="/admin/discounts/add/12"><i
											class="icon-copy fa fa-plus" aria-hidden="true"></i>Thêm
											khuyến mãi </a> <a class="dropdown-item"
											href="/admin/products/update/12"><i class="dw dw-edit2"></i>
											Chỉnh sửa</a> <a
											onclick="return confirm('Bạn muốn xóa sản phẩm ?');"
											class="dropdown-item" href="/admin/products/delete/12"><i
											class="dw dw-delete-3"></i>Xóa </a>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>11</td>
							<td class="table-plus"><img
								src="/site/upload/hong-tra-sua-tran-chau.jpg" width="70"
								height="70" alt=""></td>
							<td>Hồng Trà</td>
							<td>Vừa</td>
							<!-- <td th:text="${product.enteredDate}">29-03-2018</td> -->
							<td class="text-center">2022-02-14</td>
							<td>50</td>
							<td><span>50.000,00</span> đ</td>
							<td>
								<div class="dropdown">
									<a
										class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
										href="#" role="button" data-toggle="dropdown"> <i
										class="dw dw-more"></i>
									</a>
									<div
										class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
										<a class="dropdown-item" href="/admin/discounts/add/11"><i
											class="icon-copy fa fa-plus" aria-hidden="true"></i>Thêm
											khuyến mãi </a> <a class="dropdown-item"
											href="/admin/products/update/11"><i class="dw dw-edit2"></i>
											Chỉnh sửa</a> <a
											onclick="return confirm('Bạn muốn xóa sản phẩm ?');"
											class="dropdown-item" href="/admin/products/delete/11"><i
											class="dw dw-delete-3"></i>Xóa </a>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="ml-2">
					<div>
						Trang <strong>1</strong> trong tổng số 5 trang.
					</div>
					<div>Tổng số sản phẩm: 13.</div>
				</div>
				<div>
					<nav aria-label="..." class="">
						<ul class="pagination justify-content-center">
							<li class="page-item ">
								<!-- <span th:unless="${1 < currentPage}" class="page-link">Đầu</span> -->
							</li>
							<li class="page-item ">
								<!-- <span th:unless="${1 < currentPage}" class="page-link">Trước</span> -->
							</li>
							<li class="page-item"><span class="page-link">1</span></li>
							<li class="page-item"><a class="page-link"
								style="display: inline-block;"
								href="/admin/products/page/2?sortField=productId&amp;sortDir=desc">2
							</a></li>
							<li class="page-item"><a class="page-link"
								style="display: inline-block;"
								href="/admin/products/page/3?sortField=productId&amp;sortDir=desc">3
							</a></li>
							<li class="page-item"><a class="page-link"
								style="display: inline-block;"
								href="/admin/products/page/4?sortField=productId&amp;sortDir=desc">4
							</a></li>
							<li class="page-item"><a class="page-link"
								style="display: inline-block;"
								href="/admin/products/page/5?sortField=productId&amp;sortDir=desc">5
							</a></li>
							<li class="page-item "><a class="page-link"
								href="/admin/products/page/2?sortField=productId&amp;sortDir=desc">Tiếp</a>
								<!-- <span th:unless="${totalPages > currentPage + 1}" class="page-link">Tiếp</span> -->
							</li>
							<li class="page-item"><a class="page-link"
								href="/admin/products/page/5?sortField=productId&amp;sortDir=desc">Cuối</a>
								<!-- <span th:unless="${totalPages > currentPage}" class="page-link">Cuối</span> -->
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
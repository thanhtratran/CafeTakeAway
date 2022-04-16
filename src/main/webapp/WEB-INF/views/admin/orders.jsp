<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<div>
	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="page-header">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<div class="title">
							<h4>Quản lý đơn hàng</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item "><a href="/admin/home">Trang
										chủ</a></li>
								<li class="breadcrumb-item active" aria-current="page">
									Quản lý đơn hàng</li>
							</ol>
						</nav>
					</div>

				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-8"></div>
					<div class="col-sm-6 col-md-4">
						<div class="form-group row">
							<div class="col-sm-12 col-md-10">
								<form action="/admin/order/page/1">
									<div class="form-inline float-left" style="margin-top: 10px;">
										<input class="form-control" placeholder="Tìm kiếm"
											type="hidden" style="width: 60%; display: block;"
											name="sortField" value="orderDate"> <input
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
				<div class="pd-20">

					<div class="pd-20">

						<h4 class="text-blue text-center h3">Danh sách đơn hàng</h4>



					</div>
				</div>
				<div class="pb-20">
					<table class=" table stripe hover nowrap">
						<thead>
							<tr>
								<th style="color: blue;"><a
									href="<c:url value="/admin/order/page/1?sortField=orderDate&amp;sortDir=asc" />">
										Ngày <span> <i class="icon-copy fa fa-arrow-up"
											aria-hidden="true"></i>
									</span> <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'asc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>
								<th>Tổng tiền</th>
								<th style="color: blue;"><a
									href="<c:url value="/admin/order/page/1?sortField=orderStatus&amp;sortDir=asc" />">
										Tình trạng <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'asc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>

								<th class="datatable-nosort">Hành động</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="table-plus">2021-12-10</td>
								<td><span>52.000,00</span> đ</td>
								<td>Đặt hàng</td>
								<td>
									<div class="dropdown">
										<a
											class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
											href="#" role="button" data-toggle="dropdown"> <i
											class="dw dw-more"></i>
										</a>
										<div
											class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
											<a class="dropdown-item" href="<c:url value="/admin/order/orderDetail/9" />"><i
												class="dw dw-eye"></i> Xem</a> <a class="dropdown-item"
												href="<c:url value="/admin/order/orderDetail/update/9?status=Đã duyệt" />"><i
												class="dw dw-edit2"></i> Đã Giao</a> <a class="dropdown-item"
												href="<c:url value="/admin/order/orderDetail/update/9?status=Không duyệt" />"><i
												class="dw dw-delete-3"></i> Huỷ Đơn</a>
										</div>
									</div>
								</td>
							</tr>

						</tbody>

					</table>
					<!-- <div class="ml-2">
						<div>
							Trang <strong>1</strong> trong tổng số 1 trang.
						</div>
						<div>Tổng số đơn hàng: 1.</div>
					</div>

					<div>
						<nav aria-label="..." class="">
							<ul class="pagination justify-content-center">
								<li class="page-item ">
									<span th:unless="${1 < currentPage}" class="page-link">Đầu</span>
								</li>
								<li class="page-item ">
									<span th:unless="${1 < currentPage}" class="page-link">Trước</span>
								</li>
								<li class="page-item"><span class="page-link">1</span></li>
								<li class="page-item ">
									<span th:unless="${totalPages > currentPage + 1}" class="page-link">Tiếp</span>
								</li>
								<li class="page-item">
									<span th:unless="${totalPages > currentPage}" class="page-link">Cuối</span>
								</li>
							</ul>
						</nav>
					</div> -->
				</div>

			</div>

		</div>
	</div>
</div>
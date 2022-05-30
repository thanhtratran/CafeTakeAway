<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div>
	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="page-header">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<div class="title">
							<h4>Quản lý khuyến mãi</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="<c:url value="/admin/home" />">Trang
										chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page">Quản
									lý khuyến mãi</li>
							</ol>
						</nav>
					</div>

				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-8">
						<a href="/admin/products" type="button"
							class="btn btn-outline-primary btn-lg m-2 mb-4">Thêm khuyến
							mãi</a>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="form-group row">
							<div class="col-sm-12 col-md-10">
								<form action="/admin/discounts/page/1">
									<div class="form-inline float-left" style="margin-top: 10px;">
										<input class="form-control" placeholder="TÃ¬m kiáº¿m"
											type="hidden" style="width: 60%; display: block;"
											name="sortField" value="discountId"> <input
											class="form-control" placeholder="TÃ¬m kiáº¿m" type="hidden"
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
					<h4 class="text-blue text-center h3">Danh sách khuyến mãi</h4>

				</div>
				<div class="pb-20">
					<table class=" table stripe hover nowrap">
						<thead>
							<tr>
								<th style="color: blue;"><a
									href="/admin/discounts/page/1?sortField=discountId&amp;sortDir=asc ">
										ID <span> <i class="icon-copy fa fa-arrow-up"
											aria-hidden="true"></i>
									</span> <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'asc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>
								<th>Sản phẩm</th>

								<th style="color: blue;"><a
									href="/admin/discounts/page/1?sortField=product.productName&amp;sortDir=asc">
										Tên sản phẩm <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'asc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>
								<th style="color: blue;" class="text-center"><a
									href="/admin/discounts/page/1?sortField=startDate&amp;sortDir=asc">
										Ngày bắt đầu <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'asc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>
								<th style="color: blue;" class="text-center"><a
									href="/admin/discounts/page/1?sortField=endDate&amp;sortDir=asc">
										Ngày kết thúc <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'asc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>
								<th style="color: blue;" class="text-center"><a
									href="/admin/discounts/page/1?sortField=discountPercent&amp;sortDir=asc">
										Phần trăm giảm <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'asc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>


								<th class="datatable-nosort">Hành động</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>12</td>
								<td class="table-plus"><img
									src="<c:url value="/assets/user/upload/ca-phe-sua-da.jpg"/>" width="70" height="70"
									alt=""></td>
								<td>Cà Phê Sữa Đá</td>
								<td class="text-center">2021-09-21</td>
								<td class="text-center">2022-10-05</td>
								<td class="text-center">10</td>

								<td>
									<div class="dropdown">
										<a
											class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
											href="#" role="button" data-toggle="dropdown"> <i
											class="dw dw-more"></i>
										</a>
										<div
											class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">

											<a class="dropdown-item" href="<c:url value="/admin/discounts/update/12" />"><i
												class="dw dw-edit2"></i> Chỉnh sửa</a> <a
												onclick="return confirm('Bạn muốn xóa khuyến mãi ?');"
												class="dropdown-item" href="/admin/discounts/delete/12"><i
												class="dw dw-delete-3"></i>Xóa</a>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>7</td>
								<td class="table-plus"><img
									src="<c:url value="/assets/user/upload/tra-den-matchiato.jpg"/>" width="70" height="70"
									alt=""></td>
								<td>Trà Đen Macchiato</td>
								<td class="text-center">2021-01-06</td>
								<td class="text-center">2021-02-27</td>
								<td class="text-center">17</td>

								<td>
									<div class="dropdown">
										<a
											class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
											href="#" role="button" data-toggle="dropdown"> <i
											class="dw dw-more"></i>
										</a>
										<div
											class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">

											<a class="dropdown-item" href="/admin/discounts/update/7"><i
												class="dw dw-edit2"></i> Chỉnh sửa</a> <a
												onclick="return confirm('Bạn muốn xóa khuyến mãi ?');"
												class="dropdown-item" href="/admin/discounts/delete/7"><i
												class="dw dw-delete-3"></i>Xóa</a>
										</div>
									</div>
								</td>
							</tr>

						</tbody>

					</table>
					<div class="ml-2">
						<div>
							Trang <strong>1</strong> trong tống số 4 trang.
						</div>
						<div>Tổng số sản phẩm khuyến mãi: 8.</div>
					</div>

					<div>
						<nav aria-label="..." class="">
							<ul class="pagination justify-content-center">
								<li class="page-item ">
									<!-- <span th:unless="${1 < currentPage}" class="page-link">Ä�áº§u</span> -->
								</li>
								<li class="page-item ">
									<!-- <span th:unless="${1 < currentPage}" class="page-link">TrÆ°á»›c</span> -->
								</li>
								<li class="page-item"><span class="page-link">1</span></li>
								<li class="page-item"><a class="page-link"
									style="display: inline-block;"
									href="/admin/discounts/page/2?sortField=discountId&amp;sortDir=desc">2
								</a></li>
								<li class="page-item"><a class="page-link"
									style="display: inline-block;"
									href="/admin/discounts/page/3?sortField=discountId&amp;sortDir=desc">3
								</a></li>
								<li class="page-item"><a class="page-link"
									style="display: inline-block;"
									href="/admin/discounts/page/4?sortField=discountId&amp;sortDir=desc">4
								</a></li>
								<li class="page-item "><a class="page-link"
									href="/admin/discounts/page/2?sortField=discountId&amp;sortDir=desc">Tiếp</a>
									<!-- <span th:unless="${totalPages > currentPage + 1}" class="page-link">Tiáº¿p</span> -->
								</li>
								<li class="page-item"><a class="page-link"
									href="/admin/discounts/page/4?sortField=discountId&amp;sortDir=desc">Cuối</a>
									<!-- <span th:unless="${totalPages > currentPage}" class="page-link">Cuá»‘i</span> -->
								</li>
							</ul>
						</nav>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
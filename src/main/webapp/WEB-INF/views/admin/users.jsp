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
							<h4>Quản lý người dùng</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="/admin/home">Trang
										chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page">Quản
									lý người dùng</li>
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
								<form action="/admin/users/page/1">
									<div class="form-inline float-left" style="margin-top: 10px;">
										<input class="form-control" placeholder="Tìm kiếm"
											type="hidden" style="width: 60%; display: block;"
											name="sortField" value="userId"> <input
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
					<h4 class="text-blue h4 justify-content-center">Danh sách
						người dùng</h4>
				</div>
				<div class="pb-20">
					<table class=" table stripe hover nowrap">
						<thead>
							<tr>
								<th style="color: blue;"><a
									href="/admin/users/page/1?sortField=userId&amp;sortDir=asc">
										ID <span> <i class="icon-copy fa fa-arrow-up"
											aria-hidden="true"></i>
									</span> <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'desc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>
								<th style="color: blue;"><a
									href="/admin/users/page/1?sortField=fullname&amp;sortDir=asc">
										Họ tên <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'desc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>
								<th style="color: blue;"><a
									href="/admin/users/page/1?sortField=email&amp;sortDir=asc">
										Email <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'desc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>
								<th style="color: blue;"><a
									href="/admin/users/page/1?sortField=phone&amp;sortDir=asc">
										Số điện thoại <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'desc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>
								<th class="">Vai trò</th>
								<th style="color: blue; max-width: 150px;"><a
									href="/admin/users/page/1?sortField=address&amp;sortDir=asc">
										Địa chỉ <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'desc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>
								<th style="color: blue;"><a
									href="/admin/users/page/1?sortField=status&amp;sortDir=asc">
										Trạng thái <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'desc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>

								<th class="">Hành động</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>11</td>
								<td>Trần Văn Thạch</td>
								<td>thach@gmail.com</td>
								<td>0123456789</td>
								<td>PRODUCT_MANAGER</td>
								<td style="max-width: 150px;">125 Trần Phú , Cần Thơ</td>
								<td><span>Hoạt động</span></td>
								<td>
									<div class="dropdown">
										<a
											class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
											href="#" role="button" data-toggle="dropdown"> <i
											class="dw dw-more"></i>
										</a>
										<div
											class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">

											<a class="dropdown-item" href="/admin/users/update/11"><i
												class="dw dw-edit2"></i> Chỉnh sửa</a> <a
												onclick="return confirm('Bạn muốn xóa người dùng ?');"
												class="dropdown-item" href="/admin/users/delete/11"><i
												class="dw dw-delete-3"></i>Xóa</a>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>10</td>
								<td>Nguyễn Văn Anh</td>
								<td>anh@gmail.com</td>
								<td>0123456789</td>
								<td>CUSTOMER</td>
								<td style="max-width: 150px;">TPHCM</td>
								<td><span>Hoạt động</span></td>
								<td>
									<div class="dropdown">
										<a
											class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
											href="#" role="button" data-toggle="dropdown"> <i
											class="dw dw-more"></i>
										</a>
										<div
											class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">

											<a class="dropdown-item" href="/admin/users/update/10"><i
												class="dw dw-edit2"></i> Chỉnh sửa</a> <a
												onclick="return confirm('Bạn muốn xóa người dùng ?');"
												class="dropdown-item" href="/admin/users/delete/10"><i
												class="dw dw-delete-3"></i>Xóa</a>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>9</td>
								<td>Phạm Quyền</td>
								<td>admin@gmail.com</td>
								<td>0123456789</td>
								<td>ADMIN</td>
								<td style="max-width: 150px;">123/45 Lê Lợi - TpHCM</td>
								<td><span>Hoạt động</span></td>
								<td>
									<div class="dropdown">
										<a
											class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
											href="#" role="button" data-toggle="dropdown"> <i
											class="dw dw-more"></i>
										</a>
										<div
											class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">

											<a class="dropdown-item" href="/admin/users/update/9"><i
												class="dw dw-edit2"></i> Chỉnh sửa</a> <a
												onclick="return confirm('Bạn muốn xóa người dùng ?');"
												class="dropdown-item" href="/admin/users/delete/9"><i
												class="dw dw-delete-3"></i>Xóa</a>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>8</td>
								<td>Lê Văn Tính</td>
								<td>tinh@gmail.com</td>
								<td>0123456789</td>
								<td>SALE_MANAGER</td>
								<td style="max-width: 150px;">30/4, Can Tho</td>
								<td><span>Hoạt động</span></td>
								<td>
									<div class="dropdown">
										<a
											class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
											href="#" role="button" data-toggle="dropdown"> <i
											class="dw dw-more"></i>
										</a>
										<div
											class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">

											<a class="dropdown-item" href="/admin/users/update/8"><i
												class="dw dw-edit2"></i> Chỉnh sửa</a> <a
												onclick="return confirm('Bạn muốn xóa người dùng ?');"
												class="dropdown-item" href="/admin/users/delete/8"><i
												class="dw dw-delete-3"></i>Xóa</a>
										</div>
									</div>
								</td>
							</tr>

						</tbody>

					</table>
					<div class="ml-2">
						<div>
							Trang <strong>1</strong> trong tổng số 3 trang.
						</div>
						<div>Tổng số người dùng: 11.</div>
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
									href="/admin/users/page/2?sortField=userId&amp;sortDir=desc">2
								</a></li>
								<li class="page-item"><a class="page-link"
									style="display: inline-block;"
									href="/admin/users/page/3?sortField=userId&amp;sortDir=desc">3
								</a></li>
								<li class="page-item "><a class="page-link"
									href="/admin/users/page/2?sortField=userId&amp;sortDir=desc">Tiếp</a>
									<!-- <span th:unless="${totalPages > currentPage + 1}" class="page-link">Tiếp</span> -->
								</li>
								<li class="page-item"><a class="page-link"
									href="/admin/users/page/3?sortField=userId&amp;sortDir=desc">Cuối</a>
									<!-- <span th:unless="${totalPages > currentPage}" class="page-link">Cuối</span> -->
								</li>
							</ul>
						</nav>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
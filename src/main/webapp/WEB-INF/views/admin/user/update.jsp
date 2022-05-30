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
							<h4>Chỉnh sửa thông tin người dùng</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="/admin/home">Trang
										chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page">Chỉnh
									sửa thông tin người dùng</li>
							</ol>
						</nav>
					</div>

				</div>
			</div>

			<div class="card-box mb-30 p-5" style="min-height: 500px;">
				<div class="container mt-5 d-flex justify-content-center">
					<div class="row">
						<div class="col">
							<form action="/admin/users/saveOrUpdate" method="post"
								class="shadow-lg rounded bg-light p-2" style="width: 700px;">
								<h4 class="text-center text-primary">Thông tin người dùng</h4>

								<div class="form-group">
									<label for="name">Họ tên:</label> <input type="text"
										readonly="" class="form-control" id="name" name="fullname"
										value="${ user.ho } ${ user.ten }"> <input type="hidden"
										class="form-control" required="" id="userId" name="userId"
										value="11">
								</div>

								<div class="form-row">
									<div class="form-group col">
										<label for="email">Email</label> <input type="text"
											class="form-control" id="mail" required=""
											name="email" value="${ user.email }">
									</div>
									<div class="form-group col">
										<label for="phone">Số điện thoại:</label> <input type="text"
											class="form-control" id="phone" required=""
											name="phone" value="${ user.sdt }">
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col">

										<div class="form-group row">
											<label class="col-sm-12 col-md-2 col-form-label">Vai
												trò</label>
											<div class="col-sm-12 col-md-10">
												
											
												<select class="custom-select col-12" id="roleName"
													name="roleName">
													<c:forEach var="item" items="${ quyen }">
														<option value="${ item }" ${ user.chucVu == item ? 'selected="selected"' : '' }>${ item }</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>

								</div>
								<div class="form-row">
									<div class="form-group col">

										<div class="form-group row">
											<label class="col-sm-12 col-md-2 col-form-label">Tình
												trạng</label>
											<div class="col-sm-12 col-md-10">
												<select class="custom-select col-12" id="status"
													name="status">
													<option value="1" selected="selected">Hoạt động</option>
													<option value="0">Khóa</option>
												</select>
											</div>
										</div>
									</div>

								</div>

								<div class="form-group">
									<label for="inputAddress">Địa chỉ:</label> <input type="text"
										readonly="" class="form-control" id="inputAddress" required=""
										name="address" value="${ user.diaChi }">
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
	</div>
</div>
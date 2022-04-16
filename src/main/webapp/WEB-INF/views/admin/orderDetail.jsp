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
							<h4>Chi tiết đơn hàng</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Trang
										chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page">Chi
									tiết đơn hàng</li>
							</ol>
						</nav>
					</div>

				</div>
			</div>
			<div class="invoice-wrap">
				<div class="invoice-box">
					<div class="invoice-header">
						<div class="logo text-center">
							<img src="vendors/images/deskapp-logo.png" alt="">
						</div>
					</div>
					<h4 class="text-center mb-30 weight-600 text-success">Chi tiết
						đơn hàng</h4>
					<div class="row pb-30">
						
						<div class="col-md-6">
							<div class="text-right">
								<p class="font-14 mb-5">
									Ngày đặt hàng: <strong class="weight-600">2021-12-10</strong>
								</p>


							</div>
						</div>

					</div>

					<div class="invoice-desc pb-30">
						<table class=" table stripe hover nowrap">
							<thead>
								<tr>


									<th class="table-plus datatable-nosort">Sản phẩm</th>
									<th>Tên sản phẩm</th>



									<th>Số lượng</th>
									<th>Giá bán</th>
									<th class="text-danger">Thành tiền</th>
								</tr>
							</thead>
							<tbody>
								<tr>

									<td class="table-plus"><img
										src="<c:url value="/assets/user/upload/hong-tra-latte.jpg" />" width="70" height="70"
										alt=""></td>
									<td>Hồng Trà Latte</td>
									<td>1</td>
									<td><span>52.000,00</span> đ</td>
									<td><span>52.000,00</span> đ</td>

								</tr>

							</tbody>

						</table>
						

						<div class="col-11 text-right m-3">
							Tổng tiền: <span style="font-size: 20px;" class="text-success">102.000,00</span>
							đ VNĐ

						</div>
						<hr>
						<div>
							<form action="<c:url value="/admin/orders/orderDetail/update/9" />" method="POST">

								<div class="form-row">
									<div class="form-group col">

										<div class="form-group row">
											<label class="col-sm-12 col-md-4 col-form-label text-success">
												<strong style="font-size: large;">Tình trạng:</strong>
											</label>
											<div class="col-sm-12 col-md-8">
												<select class="custom-select col-12" name="status">
													<!-- <option th:selected="*{orderStatus=='Đặt hàng'}"
															value="Đặt hàng">Đặt hàng
														</option> -->
													<option value="Đã duyệt">Đã duyệt</option>
													<option value="Đang vận chuyển">Đang vận chuyển</option>
													<option value="Đã giao">Đã giao</option>
													<option value="Không duyệt">Không duyệt</option>
												</select>
											</div>
										</div>
									</div>
									<div class="form-group col">
										<div class="text-center">
											<button class=" btn btn-primary" type="submit">Cập
												nhập</button>
										</div>

									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">

	<div class="col-md-12">
		<div class="x_panel">
		<input type="hidden" value="${path }" id="path"/>
			<div class="x_title">
				<h2>
					餐饮新闻列表 <i class="fa fa-user"></i><small>${devUser.username}
						- 您可以进行查看修改以及新增操作。^_^</small>
				</h2>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
		</div>
	</div>
</div>
<div class="col-md-12 col-sm-12 col-xs-12">
	<div class="x_panel">
		<div class="x_content">
			<p class="text-muted font-13 m-b-30"></p>
			<div id="datatable-responsive_wrapper"
				class="dataTables_wrapper form-inline dt-bootstrap no-footer">
				<div class="row">
					<div class="col-sm-12">
					<a href="${pageContext.request.contextPath}/appInfo/appadd.html" class="btn btn-success btn-sm">新增新闻信息</a>
						<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline collapsed"
							cellspacing="0" width="100%" role="grid" aria-describedby="datatable-responsive_info" style="width: 100%;">
							<thead>
								<tr role="row">
									<th class="sorting_asc" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										style="width: 70px;" aria-label="First name: activate to sort column descending"
										aria-sort="ascending">新闻标题</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										style="width: 10px;"
										aria-label="Last name: activate to sort column ascending">
										创建时间</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										style="width: 20px;"
										aria-label="Last name: activate to sort column ascending">
										操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="appInfo" items="${pageinfo.list }" varStatus="status">
									<tr role="row" class="odd">
										<td tabindex="0" class="sorting_1">${appInfo.name}</td>
										<td>${appInfo.createDate }</td>
										<td>
														<div class="btn-group">
                      <button type="button" class="btn btn-danger">点击操作</button>
                      <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <span class="caret"></span>
                        <span class="sr-only">Toggle Dropdown</span>
                      </button>
										<ul class="dropdown-menu" role="menu">
					                        <li><a  class="viewApp" href="${path }/appInfo/select.html?id=${appInfo.id }" data-original-title="查看APP基础信息以及全部版本信息">查看</a></li>
					                      </ul>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-5">
						<div class="dataTables_info" id="datatable-responsive_info"
							role="status" aria-live="polite">共${pageinfo.pages }条记录
							${pageinfo.pageNum }/${pageinfo.pages }页</div>
					</div>
					<div class="col-sm-7">
						<div class="dataTables_paginate paging_simple_numbers"
							id="datatable-responsive_paginate">
							<ul class="pagination">
								<c:if test="${pageinfo.pageNum > 1}">
									<li class="paginate_button previous"><a
										href="${pageContext.request.contextPath }/appInfo/applist.html?pn=1&flag=select&count=backend"
										aria-controls="datatable-responsive" data-dt-idx="0"
										tabindex="0">首页</a>
									</li>
									<li class="paginate_button "><a
										href="${pageContext.request.contextPath }/appInfo/applist.html?pn=${pageinfo.pageNum-1}&flag=select&count=backend"
										aria-controls="datatable-responsive" data-dt-idx="1"
										tabindex="0">上一页</a>
									</li>
								</c:if>
								<c:if test="${pageinfo.pageNum < pageinfo.pages }">
									<li class="paginate_button "><a
										href="${pageContext.request.contextPath }/appInfo/applist.html?pn=${pageinfo.pageNum+1}&flag=select&count=backend"
										aria-controls="datatable-responsive" data-dt-idx="1"
										tabindex="0">下一页</a>
									</li>
									<li class="paginate_button next"><a
										href="${pageContext.request.contextPath }/appInfo/applist.html?pn=${pageinfo.pages }&flag=select&count=backend"
										aria-controls="datatable-responsive" data-dt-idx="7"
										tabindex="0">最后一页</a>
									</li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
</div>
<%@include file="common/footer.jsp"%>
<script src="${pageContext.request.contextPath }/statics/localjs/rollpage.js"></script>
<script src="${pageContext.request.contextPath }/statics/localjs/applist.js"></script>
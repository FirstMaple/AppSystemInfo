<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
      <input type="hidden" value="${path }" id="path"/>
        <h2>修改用户账户信息 <i class="fa fa-user"></i><small>${devUser.devname}</small></h2>
             <div class="clearfix"></div>
      </div>
      <div class="x_content">
        <form class="form-horizontal form-label-left" modelAttribute="devUser" method="post">
          <input type="hidden" name="id" id="id" value="${devUser.id}">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">登录名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="devcode" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" 
               name="devcode" value="${devUser.devcode}" required="required"
               placeholder="请输入登录名称" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">用户名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="devname" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" 
               name="devname" value="${devUser.devname}" required="required"
               placeholder="请输入用户名称" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">用户密码 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="devpassword" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" 
               name="devpassword" value="${devUser.devpassword}" required="required"
               placeholder="请输入用户密码" type="password" readonly="readonly">
            </div><a id="update">修改</a>
          </div>
          <div id="email" class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">用户邮箱 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="devemail" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" 
               name="devemail" value="${devUser.devemail}" required="required"
               placeholder="请输入用户邮箱" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">用户简介 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="devinfo" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" 
               name="devinfo" value="${devUser.devinfo}" required="required"
               placeholder="请输入用户简介" type="text">
            </div>
          </div>
          <div class="form-group">
            <div class="col-md-6 col-md-offset-3">
              <button id="send" type="submit" class="btn btn-success">保存</button>
              <button type="button" class="btn btn-primary" id="back">返回</button>
              <br/><br/>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<%@include file="common/footer.jsp"%>
<script src="${pageContext.request.contextPath }/statics/localjs/usermodify.js"></script>
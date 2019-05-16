<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>
<%@include file="common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>新增新闻信息 <i class="fa fa-user"></i><small>${devUserSession.devName}</small></h2>
             <div class="clearfix"></div>
      </div>
      <div class="x_content">
      <input type="hidden" id="path" value="${path }"/>
	  <!-- <div class="item form-group">
               <label class="control-label col-md-3 col-sm-3 col-xs-12" ></label>
               <div class="col-md-6 col-sm-6 col-xs-12">
                 <form action="uploadlogo" class="dropzone" style="height:100px;">
                 </form>
            <div class="clearfix"></div>
         </div>
       </div> -->
           <div class="clearfix"></div>
        <form class="form-horizontal form-label-left" method="post" enctype="multipart/form-data">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">新闻标题 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="name" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" name="name"  required="required"
               placeholder="请输入新闻标题" type="text">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">新闻作者 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="zuozhe" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" name="zuozhe"  required="required"
               placeholder="请输入新闻作者" type="text">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">新闻报告人 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="baogao" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" name="baogao"  required="required"
               placeholder="请输入新闻报告人" type="text">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">新闻摘要 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea style="height:500px" id="zhaiyao" class="form-control col-md-7 col-xs-12" name="zhaiyao" 
              	data-validate-length-range="20" data-validate-words="1"   required="required"
              	placeholder="请输入新闻摘要" type="text"></textarea>
            </div>
          </div>
          
          
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">新闻内容 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea style="height:500px" id="content" class="form-control col-md-7 col-xs-12" name="content" 
              	data-validate-length-range="20" data-validate-words="1"   required="required"
              	placeholder="请输入新闻内容" type="text"></textarea>
            </div>
          </div>
          
          <div class="item form-group">
           <label>上传图片</label>
		    	<input type="file" name="file"/>
          </div>
          <div class="ln_solid"></div>
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
<script src="${pageContext.request.contextPath }/statics/localjs/appinfoadd.js"></script>
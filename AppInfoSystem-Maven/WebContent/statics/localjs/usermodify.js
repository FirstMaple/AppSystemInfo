$(function(){
	$("#update").click(function(){
		$("#devpassword").attr("readonly",null);
		$("#email").before("<div id='rpwd' class='item form-group'><label class='control-label col-md-3 col-sm-3 col-xs-12' for='name'>确认密码 <span class='required'>*</span>"
            +"</label><div class='col-md-6 col-sm-6 col-xs-12'><input id='rpwd' class='form-control col-md-7 col-xs-12' "
               +"data-validate-length-range='20' data-validate-words='1' " 
                +"required='required' placeholder='请再次输入密码' type='password'></div></div>");
	});
	
	


});
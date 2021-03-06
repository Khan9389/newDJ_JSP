<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loginStat = StringUtil.defaultString((String) request.getAttribute("loginStat"), "");
	String MBR_ID = StringUtil.defaultString((String) session.getAttribute("MBR_ID")); // μ¬μ©μ ID
%>

<header>
	 <div class="header-div" style="display:  flex;">
	 
	 <div class="left-content">
          <ul class="MainUl">
       		<li id="heaher-logo"><Link to="/"><img src="static_resources/img/logo.png" alt=""></img></Link></li>
            <li id="menu-li"><a href="javascript:void(0)" class="Header-Menu">πλ§μΌ</a></li>
            <li id="menu-li"><a href="javascript:void(0)" class="Header-Menu">π¨βπ¨μμμ§κ»</a></li>
            <li id="menu-li"><a href="javascript:void(0)" class="Header-Menu">ββμ§λ¬Έ</a></li>
          </ul>
	 </div>
     <div class="right-content">
			<span class='offLogin' style="display:none"><a href="javascript:void(0);" onclick="goLoginPop()"	title="λ‘κ·ΈμΈ λ°λ‘κ°κΈ°">λ‘κ·ΈμΈ</a></span> 
			<span class='offLogin' style="display:none"><a href="javascript:void(0);" onclick="goJoinPop()" title="νμκ°μ λ°λ‘κ°κΈ°">νμκ°μ</a></span>
			<span class='onLogin' style="display:none">νμν©λλ€. <%=MBR_ID%> λ</span>
			<span class='onLogin' style="display:none"><a href="javascript:void(0);" onclick="goShowRoom()" title="λ§μ΄νμ΄μ§ λ°λ‘κ°κΈ°">λ§μ΄λ£Έ</a></span>
			<span class='onLogin' style="display:none"><a href="/logoutProc" >λ‘κ·Έμμ</a></span>
	 </div>
      </div>
   </div>
	

</header>
<!-- λ‘κ·ΈμΈ νμ [s] -->
<div class="layerPrivacy">
	<div class="bg"></div>
	<div class="popupcont">
		<div class="popupBody">
			<div class="btn_close">
				<a href="javascript:void(0);">close</a>
			</div>
			<div class="content login">
				<!-- νμ΄μ§νΉμ  ν΄λμ€ = login -->
				<div class="cont_head">
					<h4>λ‘κ·ΈμΈ</h4>
				</div>
				<div class="cont_body">
					<div class="form_wrap form_col_c form_full">
						<input type="hidden" name="_csrf">
						<div class="form_field">
							<label class="input_label sr-only">μμ΄λ</label>
							<div class="ui_col_12">
								<div class="input_wrap">
									<input type="text" name="mbrId" id="mbrId" placeholder="μμ΄λ" class="form_control" onkeyup="if( event.keyCode==13 ){ $('#mbrPw').focus();}">
								</div>
							</div>
						</div>
						
						<div class="form_field mt10">
							<label class="input_label sr-only">λΉλ°λ²νΈ</label>
							<div class="ui_col_12">
								<div class="input_wrap">
									<input type="password" name="mbrPw" id="mbrPw" class="form_control" placeholder="λΉλ°λ²νΈ" onkeyup="if( event.keyCode==13 ){ goLogin();}">
								</div>
							</div>
						</div>
						
						<div class="ui_row mt40">
							<div class="ui_col_12">
								<button type="button" class="btn btn_dark btn_block" onclick="goLogin()">
									<span>λ‘κ·ΈμΈ</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- λ‘κ·ΈμΈ νμ [e] -->


<!-- νμκ°μ νμ [s] -->
<div class="layerPrivacy_poly">
	<div class="bg"></div>
	<div class="popupcont">
		<div class="popupBody">
			<div class="btn_close">
				<a href="javascript:void(0);">close</a>
			</div>
			<div class="content login">
				<div class="cont_head">
					<h4>νμκ°μ</h4>
				</div>
				<div class="cont_body">
					<div class="form_wrap form_col_c form_full">
						<input type="hidden" name="_csrf">
						<div class="form_field mt10">
							<label class="input_label sr-only">μ΄λ¦</label>
							<div class="ui_col_12">
								<div class="input_wrap">
									<input type="text" name="joinPw" id="joinPw" class="form_control" placeholder="μ΄λ¦" onkeyup="if( event.keyCode==13 ){ $('#joinPwChk').focus();}">
								</div>
							</div>
						</div>
						<div class="form_field">
							<label class="input_label sr-only">μμ΄λ</label>
							<div class="ui_col_12">
								<div class="input_wrap">
									<input type="text" name="joinId" id="joinId" placeholder="μμ΄λ" class="form_control" onkeyup="if( event.keyCode==13 ){ $('#joinPw').focus();}">
								</div>
							</div>
						</div>
						
						<!-- λΉλ°λ²νΈ [s] -->
						<div class="form_field mt10">
							<label class="input_label sr-only">λΉλ°λ²νΈ</label>
							<div class="ui_col_12">
								<div class="input_wrap">
									<input type="password" name="joinPw" id="joinPw" class="form_control" placeholder="λΉλ°λ²νΈ" onkeyup="if( event.keyCode==13 ){ $('#joinPwChk').focus();}">
								</div>
							</div>
						</div>
						<!-- λΉλ°λ²νΈ [e] -->
						
						<!-- λΉλ°λ²νΈ νμΈ [s] -->
						<div class="form_field mt10">
							<label class="input_label sr-only">λΉλ°λ²νΈ νμΈ</label>
							<div class="ui_col_12">
								<div class="input_wrap">
									<input type="password" name="joinPwChk" id="joinPwChk" class="form_control" placeholder="λΉλ°λ²νΈ νμΈ" onkeyup="if( event.keyCode==13 ){ joinMbr();}">
								</div>
							</div>
						</div>
						<!-- λΉλ°λ²νΈ νμΈ [e] -->
						
						<div class="ui_row mt40">
							<div class="ui_col_12">
								<button type="button" class="btn btn_dark btn_block" onclick="joinMbr()">
									<span>νμκ°μ</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- νμκ°μ νμ [e] -->
<script>
$(function() {
	$('.layerPrivacy .btn_close, .layerPrivacy .bg').click(function() {
		$('.layerPrivacy').removeClass('on');
	});
	$('.layerPrivacy_poly .btn_close, .layerPrivacy_poly .bg').click(function() {
		$('.layerPrivacy_poly').removeClass('on');
	});
	
	var loginStat = "<%=loginStat%>";
	
	if(loginStat === "LOGIN_FAIL"){
		alert("λ‘κ·ΈμΈ μ λ³΄λ₯Ό νμΈνμΈμ.")
	}
	if( "<%=MBR_ID%>" == "" || "<%=MBR_ID%>" == undefined){
		$(".offLogin").show();
	}else{
		$(".onLogin").show();
	}
})	
	
function goLoginPop() {
	$("#mbrId").val('');
	$("#mbrPw").val('');
	$(".layerPrivacy").addClass('on');
}

function goJoinPop() {
	$("joinId").val('');
	$("joinPw").val('');
	$("#joinPwChk").val('');
	$('.layerPrivacy_poly').addClass('on');
}

function validateJoin(){
	
	if(cf_isEmpty($("#joinId").val().trim())){
		alert("μμ΄λλ₯Ό μλ ₯νμΈμ.");
		$("#joinId").focus();  return false;
	}
	if(cf_isEmpty($("#joinPw").val().trim())){
		alert("λΉλ°λ²νΈλ₯Ό μλ ₯νμΈμ.");
		$("#joinPw").focus();  return false;
	}
	
	if($("#joinPw").val() != $("#joinPwChk").val()){
		alert("λΉλ°λ²νΈλ₯Ό νμΈν΄μ£ΌμΈμ.")
		$("#joinPwChk").focus(); return false;		
	}
	return true;
}

function joinMbr() {
	if(!valideJoin())
		return;
	
	params = {
		mbrId : $('#joinId').val(),
		mbrPw : CryptoJS.SHA256($("#joinPw").val().toString())
	}
	cf_call("/joinMbr", params, joinMbrCB);
}

function joinMbrCB(data) {
	if(data.result == "succ"){
		alert("νμκ°μμ΄ μλ£λμ΅λλ€.");
		location.href="/"
	}else{
		alert("μ΄λ―Έ μ¬μ© μ€μΈ μμ΄λ μλλ€.")
	}
}

function goLogin() {
	
	if(!validataLogin()) return;
	
	var params = {
			mbrIf : $("mbrId").val(),
			inputMbrPw : CryptoJS.SHA256($("#mbrPw").val()).toString(),
		}
	cf_gotoUrl("/loginProc", params);		
}


function goMyPage() {
	location.href="/myPage";
}

function isLogin(){
	if("<%=MBR_ID%>" == "" || "<%=MBR_ID%>" == null || "<%=MBR_ID%>" == undefined){
		alert("λ‘κ·ΈμΈν μ΄μ© κ°λ₯ν©λλ€.")		
		return false;
	}
	return true;
}
	

</script>

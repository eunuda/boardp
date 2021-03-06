<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Home Section -->
<section class="page-section bg-dark-alfa-50 bg-scroll" data-background="images/full-width-images/section-bg-19.jpg" id="home">
	<div class="container relative">

		<div class="row">

			<div class="col-md-8">
				<div class="wow fadeInUpShort" data-wow-delay=".1s">
					<h1 class="hs-line-7 mb-20 mb-xs-10">회원가입</h1>
				</div>
				<div class="wow fadeInUpShort" data-wow-delay=".2s">
					<p class="hs-line-6 opacity-075 mb-20 mb-xs-0">
						개발자들의 안식처 Developers Vally
					</p>
				</div>
			</div>

		</div>

	</div>
</section>
<!-- End Home Section -->

<!-- Section -->
<section class="page-section bg-dark light-content">
	<div class="container">

		<!-- Registry Form -->
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<form action="signUp.do" method="post" onsubmit="return formCheck()" class="form contact-form">
					<div class="clearfix">

						<div class="form-group">
							<label for="memberId">아이디</label>
							<input type="text" name="memberId" id="memberId" class="input-lg round form-control" placeholder="Enter id" pattern=".{3,100}" required aria-required="true">
						</div>

						<div class="form-group">
							<label for="memberPassword">비밀번호</label>
							<input type="password" name="memberPassword" id="memberPassword"  class="input-lg round form-control" placeholder="Enter password" pattern=".{5,100}" required aria-required="true">
						</div>

						<div class="form-group">
							<label for="passwordCheck">비밀번호 확인</label>
							<input type="password" id="passwordCheck" onchange="pwdCheck()" class="input-lg round form-control" placeholder="Confirm password" pattern=".{5,100}" required aria-required="true">
							<div id="checkWord"></div>
						</div>

						<div class="form-group">
							<label for="memberMail">이메일</label>
							<input type="text" name="memberMail" id="memberMail" class="input-lg round form-control" placeholder="Enter email" pattern=".{3,100}" required aria-required="true">
						</div>

						<div class="form-group">
							<label for="memberName">이름</label>
							<input type="text" name="memberName" id="memberName" class="input-lg round form-control" placeholder="Enter name" pattern=".{3,100}" required aria-required="true">
						</div>

						<div class="form-group">
							<label for="memberPhone">전화번호</label>
							<input type="text" name="memberPhone" id="memberPhone" class="input-lg round form-control" placeholder="Enter phone number" pattern=".{3,100}" required aria-required="true">
						</div>

					</div>

					<!-- Send Button -->
					<div class="pt-10">
						<button type="submit" class="submit_btn btn btn-mod btn-large btn-round btn-full" id="reg-btn">회원가입</button>
					</div>

				</form>

			</div>
		</div>
		<!-- End Registry Form -->

	</div>

</section>
<!-- End Section -->

<!-- Divider -->
<hr class="mt-0 mb-0 white" />
<!-- End Divider -->

<script>
	function formCheck(){
		if(checkWord.style.color != green) {
			if(checkWord.style.color == red){
				alert('비밀번호를 일치시켜주세요')
			} else {
				alert('비밀번호를 확인해주세요')
			}
			return false;
		}
	}

	function pwdCheck(){
		var password = memberPassword.value;
		var check = passwordCheck.value;
		if(password == check){
			checkWord.innerText = '';
			checkWord.style.color="green";
			checkWord.innerText = '비밀번호가 일치합니다';
		} else {
			checkWord.innerText = '';
			checkWord.style.color="red";
			checkWord.innerText = '비밀번호가 일치하지 않습니다.';
		}

	}
</script>

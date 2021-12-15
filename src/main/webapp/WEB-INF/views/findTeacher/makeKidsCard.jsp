<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아  기  공  룡</title>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
</head>
<style>
img {
	width: 100px;
	height: 100px;
}

.container div {
	margin-top: 10px;
}
</style>
<body>
	<br>
	<br>
	<br>
	<form id="postForm" name="make_t_Card">
		<div class="wrapper">
			<div class="container">
				<div>
					<h3>아이카드등록</h3>
				</div>
				<div id="step1">
					<div>
						<div id="image_container">
							<h2>프로필 사진을 올려주세요.(필수사항)</h2>
						</div>
						<input type="file" id="k_img1" name="c_imgpath"
							class="form-control" />
					</div>
					<div class="row">
						<div>아이이름</div>
						<div class="col-md-2">
							<input class="form-control" type="text" placeholder="아이이름"
								id="k_name" name="k_name" aria-label="default input example">
						</div>
					</div>
					<div class="row">
						<div>성별</div>
						<div class="col-md-2">
							<select class="form-select" name="k_gender" id="k_gender"
								aria-label="Default select example">
								<option value="0" selected>성별</option>
								<option value="2">남자아이</option>
								<option value="1">여자아이</option>
							</select>
						</div>
					</div>
					<div>아이 출생년일</div>
					<div class="row">
						<div class="col-md-4">
							<input id="k_birth" type="date" class="form-control"
								autocomplete="off" name="k_birth" width="100" />
						</div>
						<div>
							<button class="btn btn-outline-primary" type="button"
								onclick="goStep(2)">다음으로</button>
						</div>
					</div>
				</div>

				<div id="step2" class="d-none">
					<div>
						<div>원하는 선생님 연령대</div>

						<div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
							<input type="checkbox" class="btn-check" name="check-age" value="1" id="btncheck1">
							<label class="btn want-age btn-outline-success check-age" for="btncheck1">20대</label>

							<input type="checkbox" class="btn-check" name="check-age" value="2" id="btncheck2">
							<label class="btn want-age btn-outline-success check-age" for="btncheck2">30대</label>

							<input type="checkbox" class="btn-check" name="check-age" value="3" id="btncheck3">
							<label class="btn want-age btn-outline-success check-age" for="btncheck3">40대</label>

							<input type="checkbox" class="btn-check" name="check-age" value="4" id="btncheck4">
							<label class="btn want-age btn-outline-success check-age" for="btncheck4">50대</label>

							<input type="checkbox" class="btn-check" name="check-age" value="5" id="btncheck5">
							<label class="btn want-age btn-outline-success check-age" for="btncheck5">60대</label>
						</div>
					</div>

					<div class="row">
						<div>원하는 돌봄 분야</div>
						<c:forEach var="c_list" items="${ care_list }">
							<div class="col-md-2">

								<input type="checkbox" class="btn-check" name="check-type" id="${ c_list.c_introduce }" value="${ c_list.c_introduce }" autocomplete="off" />
								<label class="btn btn-outline-success check-type" for="${ c_list.c_introduce }">${ c_list.c_introduce }</label>

							</div>
						</c:forEach>
					</div>

					<div>
						<button class="btn btn-outline-primary" type="button"
							onclick="goStep(3)">다음으로</button>
					</div>
				</div>

				<div id="step3" class="d-none">
					<div>
						<p>우리아이성향</p>
						<c:forEach var="k_opdto" items="${ k_list }">
							<div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" name="k_op" id="${k_opdto.c_introduce}" value="${k_opdto.c_introduce}" />
									<label class="form-check-label" for="${k_opdto.c_introduce}">${k_opdto.c_introduce} </label>
								</div>
							</div>
						</c:forEach>
					</div>

					<div>
						<p>우리아이소개</p>
						<div class="form-floating">
							<textarea name="" class="form-control"
								placeholder="Leave a comment here" id="floatingTextarea1"
								style="height: 200px"></textarea>
							<label for="floatingTextarea1">선생님에게 우리 아이를 소개해 주세요.</label>
						</div>
					</div>

					<div>
						<p>요청사항(선택)</p>
						<div class="form-floating">
							<textarea name="k_require" class="form-control"
								placeholder="Leave a comment here" id="floatingTextarea2"
								style="height: 100px"></textarea>
							<label for="floatingTextarea2">선생님에게 요청사항이 있으시면 적어주세요.</label>
						</div>
					</div>
					<div>
						<button type="button" onclick="regKidCard()"
							class="btn btn-outline-success">카드등록</button>
					</div>
				</div>
			</div>
		</div>
	</form>


	<script type="text/javascript">

	    // 아이카드 등록
	    function regKidCard() {

	        // 3스텝 유효성 검사

	        var introduce = $("#floatingTextarea1");
	        var INTRODUCT_VALID = false;
	        var requested = $("#floatingTextarea2");
	        var REQUESTED_VALID = false;


	        // 우리아이 성향 유효성 검사
	        if($("input[name=k_op]:checked").length == 0) {
	            alert("우리아이 성향을 선택해주세요.")
	        }

	        // 우리아이소개 유효성 검사
	        if(introduce.val().trim().length == 0) {
	            introduce.addClass('is-invalid');
	            introduce.removeClass('is-valid');
	            INTRODUCT_VALID = false;
	        } else {
	            introduce.addClass('is-valid');
	            introduce.removeClass('is-invalid');
	            INTRODUCT_VALID = true;
	        }

	        // 요청사항 유효성 검사
	        if(requested.val().trim().length == 0) {
	            requested.addClass('is-invalid');
	            requested.removeClass('is-valid');
	            REQUESTED_VALID = false;
	        } else {
	            requested.addClass('is-valid');
	            requested.removeClass('is-invalid');
	            REQUESTED_VALID = true;
	        }

	        let check_age = [];
	        $('input[name=check-age]:checked').each(function(i){
	            check_age.push($(this).val());
	        });

	        let check_type = [];
	        $('input[name=check-type]:checked').each(function(i){
	            check_type.push($(this).val());
	        });

	        let k_op = [];
	        $('input[name=k_op]:checked').each(function(i){
	            k_op.push($(this).val());
	        });

	        var saveIdx = '${sessionScope.saveIdx}';
	        var fileLength = $("input[name=c_imgpath]");

	        // 이미지 제외하고 정보 등록

	        var formData = new FormData();

	        formData.set("d_member_idx", saveIdx)                       // 맴버 테이블 회원 인덱스
	        formData.set("k_name", $("#k_name").val())                  // 아이 이름
	        formData.set("k_gender", $("#k_gender").val())              // 아이 성별
	        formData.set("k_tendency",k_op)                             // 아이 성향
	        formData.set("k_birth",  $("#k_birth").val())               // 아이 생년월일
	        formData.set("k_introduce", $("#floatingTextarea1").val())  // 아이 소개
	        formData.set("k_care_type", check_type)                     // 원하는 돌봄 분야
	        formData.set("teacher_type", check_age)                     // 원하는 선생님 연령대
	        formData.set("k_require", $("#floatingTextarea2").val())    // 요청 사항

	        for(var i = 0; i < fileLength.length; i++) {
	              if(fileLength[i].files[0] != undefined) {
	                  formData.set('kImg[' + i + ']', fileLength[i].files[0]);
	              }
	        };

	          $.ajax({
	                method: 'POST',
	                url: '${pageContext.request.contextPath}/makeKidsCard.do',
	                data: formData,
	                enctype: 'multipart/form-data',
	                processData: false,
	                contentType: false,
	                cache: false,
	                success: function(r) {
	                    console.log("--- r : ", r);
	                    window.alert("아이카드 등록 성공하셨습니다.");
	                    location.href='pickKidsCard.do?idx='+saveIdx;
	                },
	                error: function(e) {
	                    console.error(e);
	                    window.alert("아이카드 등록 실패하셨습니다.");
	                }
	          });
	    }

        //다음 스텝 이동
        function goStep(step) {

            if (step == 2) {

                var kName = $("#k_name");
                var NAME_VALID = false;
                var kGender = $("#k_gender");
                var GENDER_VALID = false;
                var kBirth = $("#k_birth");
                var BIRTH_VALID = false;

                // 파일 유효성 검사
                var file = $("#k_img1");
                var FILE_VALID = false;
                if(file[0].files.length == 0) {
                    file.addClass('is-invalid');
                    file.removeClass('is-valid');
                    FILE_VALID = false;
                } else {
                    file.addClass('is-valid');
                    file.removeClass('is-invalid');
                    FILE_VALID = true;
                }

                // TODO 이미지 파일
                let imgFile = $('#k_img1').val();
                console.log("이미지::", imgFile);

                let fileForm = /(.*?)\.(jpg|jpeg|png|gif|bmp|pdf|jfif|JPG|JPEG|PNG|GIF|BMP|PDF|JFIF)$/gi;

                if( imgFile == ""){
                    alert('이미지 첨부는 필수입니다.');
                    $('#k_img1').focus();
                    return
                }
                if(imgFile != "" && imgFile != null){
                    if(!imgFile.match(fileForm)){
                        alert('이미지 파일만 등록 가등합니다.');
                        return;
                    }
                }


                // 아이 이름 유효성 검사
                if(kName.val().trim().length == 0) {
                    kName.addClass('is-invalid')
                    kName.removeClass('is-valid')
                    NAME_VALID = false;
                } else {
                    kName.addClass('is-valid')
                    kName.removeClass('is-invalid')
                    NAME_VALID = true;
                }

                // 성별 유효성 검사
                if(kGender.val() == 0) {
                    kGender.addClass('is-invalid')
                    kGender.removeClass('is-valid')
                    GENDER_VALID = false;
                } else {
                    kGender.addClass('is-valid')
                    kGender.removeClass('is-invalid')
                    GENDER_VALID = true;
                }

                // 아이 출생년일 유효성 검사
                if(kBirth.val().length == 0) {
                    kBirth.addClass('is-invalid')
                    kBirth.removeClass('is-valid')
                    BIRTH_VALID = false;
                } else {
                    kBirth.addClass('is-valid')
                    kBirth.removeClass('is-invalid')
                    BIRTH_VALID = true;
                }

                if(!FILE_VALID || !NAME_VALID || !GENDER_VALID || !BIRTH_VALID) {
                    return false;
                }


                document.getElementById('step1').classList.add('d-none');
                document.getElementById('step2').classList.remove('d-none');

            } else if (step == 3) {

                var wantAge = $("input[name=check-age]:checked");
                var WANTAGE_VALID = false;
                var checkType = $("input[name=check-type]:checked");
                var CHECKTYPE_VALID = false;

                // 원하는 선생님 연령대 유효성검사
                if(wantAge.length == 0) {
                    $(".check-age").addClass('btn-outline-danger')
                    $(".check-age").removeClass('btn-outline-success')
                    WANTAGE_VALID = false;
                } else {
                    $(".check-age").addClass('btn-outline-success')
                    $(".check-age").removeClass('btn-outline-danger')
                    WANTAGE_VALID = true;
                }

                // 원하는 돌봄분야 유효성 검사
                if(checkType.length == 0) {
                    $(".check-type").addClass('btn-outline-danger')
                    $(".check-type").removeClass('btn-outline-success')
                    CHECKTYPE_VALID = false;
                } else {
                    $(".check-type").addClass('btn-outline-success')
                    $(".check-type").removeClass('btn-outline-danger')
                    CHECKTYPE_VALID = true;
                }

                if(!WANTAGE_VALID || !CHECKTYPE_VALID) {
                    return false;
                }

                document.getElementById('step2').classList.add('d-none');
                document.getElementById('step3').classList.remove('d-none');

            }
        }
	</script>


</body>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<script>
	// 아이카드 등록
	function regKidCard() {
		
		// 3스텝 유효성 검사
		
		var introduce = $("#floatingTextarea1");
		var INTRODUCT_VALID = false;
		var requested = $("#floatingTextarea2");
		var REQUESTED_VALID = false;
		
		
		// 우리아이 성향 유효성 검사
		if($("input[name=k_op]:checked").length == 0) {
			alert("우리아이 성향을 선택해주세요.")
		}
		
		// 우리아이소개 유효성 검사
		if(introduce.val().trim().length == 0) {
			introduce.addClass('is-invalid');
			introduce.removeClass('is-valid');
			INTRODUCT_VALID = false;
		} else {
			introduce.addClass('is-valid');
			introduce.removeClass('is-invalid');
			INTRODUCT_VALID = true;
		}
		
		// 요청사항 유효성 검사
		if(requested.val().trim().length == 0) {
			requested.addClass('is-invalid');
			requested.removeClass('is-valid');
			REQUESTED_VALID = false;
		} else {
			requested.addClass('is-valid');
			requested.removeClass('is-invalid');
			REQUESTED_VALID = true;
		}
		
		let check_age = [];
		$('input[name=check-age]:checked').each(function(i){
			check_age.push($(this).val());
		});
		
		let check_type = [];
		$('input[name=check-type]:checked').each(function(i){
			check_type.push($(this).val());
		});
		
		let k_op = [];
		$('input[name=k_op]:checked').each(function(i){
			k_op.push($(this).val());
		});
		
		var saveIdx = '${sessionScope.saveIdx}';
		var fileLength = $("input[name=c_imgpath]");
		 
		// 이미지 제외하고 정보 등록
		
		var formData = new FormData();
		
		formData.set("d_member_idx", saveIdx)						// 맴버 테이블 회원 인덱스
		formData.set("k_name", $("#k_name").val())					// 아이 이름
		formData.set("k_gender", $("#k_gender").val())				// 아이 성별
		formData.set("k_tendency",k_op) 							// 아이 성향
		formData.set("k_birth",  $("#k_birth").val())				// 아이 생년월일
		formData.set("k_introduce", $("#floatingTextarea1").val())	// 아이 소개
		formData.set("k_care_type", check_type) 					// 원하는 돌봄 분야
		formData.set("teacher_type", check_age) 					// 원하는 선생님 연령대
		formData.set("k_require", $("#floatingTextarea2").val())	// 요청 사항
		
		for(var i = 0; i < fileLength.length; i++) {
			  if(fileLength[i].files[0] != undefined) {
				  formData.set('kImg[' + i + ']', fileLength[i].files[0]);
			  } 
		  };
		
		formData.forEach(function(value, key){
			
			console.log(key, value);
		});
		
		
		  $.ajax({
				method: 'POST',
				url: '${pageContext.request.contextPath}/makeKidsCard.do',
				data: formData,
				enctype: 'multipart/form-data',
				processData: false,
				contentType: false,
				cache: false,
				success: function(r) {
					console.log("--- r : ", r);
					window.alert("아이카드 등록 성공하셨습니다.");
					location.href='pickKidsCard.do?idx='+saveIdx;
				},
				error: function(e) {
					console.error(e);
					window.alert("아이카드 등록 실패하셨습니다.");
				}
			  })
		  }
	
	/* 이미지 미리보기 (대기) */
	/* function setimage(event) {
		var reader = new FileReader();

		reader.onload = function(event) {
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			document.querySelector("div#image_container").appendChild(img);
		};

		reader.readAsDataURL(event.target.files[0]);
	}
 */
 
	//다음 스텝 이동
	function goStep(step) {
	
		if (step == 2) {
				
			var kName = $("#k_name");
			var NAME_VALID = false;
			var kGender = $("#k_gender");
			var GENDER_VALID = false;
			var kBirth = $("#k_birth");
			var BIRTH_VALID = false;
			
			// 파일 유효성 검사
			var file = $("#k_img1");
			var FILE_VALID = false;
			if(file[0].files.length == 0) {
				file.addClass('is-invalid');
				file.removeClass('is-valid');
				FILE_VALID = false;
			} else {
				file.addClass('is-valid');
				file.removeClass('is-invalid');
				FILE_VALID = true;
			}
			
			// TODO 이미지 파일
			let imgFile = $('#k_img1').val();
			console.log("이미지::", imgFile);
		  	
			let fileForm = /(.*?)\.(jpg|jpeg|png|gif|bmp|pdf|jfif|JPG|JPEG|PNG|GIF|BMP|PDF|JFIF)$/gi;

		  	if( imgFile == ""){
		  		alert('이미지 첨부는 필수입니다.');
		  		$('#k_img1').focus();
		  		return
		  	}
		  	
		  	if(imgFile != "" && imgFile != null){
		  		if(!imgFile.match(fileForm)){
		  			alert('이미지 파일만 등록 가등합니다.');
		  			return;
		  		}
		  	}
		  	
			// 아이 이름 유효성 검사
			if(kName.val().trim().length == 0) {
				kName.addClass('is-invalid')
				kName.removeClass('is-valid')
				NAME_VALID = false;
			} else {
				kName.addClass('is-valid')
				kName.removeClass('is-invalid')
				NAME_VALID = true;
			}
			
			// 성별 유효성 검사
			if(kGender.val() == 0) {
				kGender.addClass('is-invalid')
				kGender.removeClass('is-valid')
				GENDER_VALID = false;
			} else {
				kGender.addClass('is-valid')
				kGender.removeClass('is-invalid')
				GENDER_VALID = true;
			}
			
			// 아이 출생년일 유효성 검사
			if(kBirth.val().length == 0) {
				kBirth.addClass('is-invalid')
				kBirth.removeClass('is-valid')
				BIRTH_VALID = false;
			} else {
				kBirth.addClass('is-valid')
				kBirth.removeClass('is-invalid')
				BIRTH_VALID = true;
			}
			
			if(!FILE_VALID || !NAME_VALID || !GENDER_VALID || !BIRTH_VALID) {
				return false;
			}
			
			
			document.getElementById('step1').classList.add('d-none');
			document.getElementById('step2').classList.remove('d-none');

		} else if (step == 3) {
			
			var wantAge = $("input[name=check-age]:checked");
			var WANTAGE_VALID = false;
			var checkType = $("input[name=check-type]:checked");
			var CHECKTYPE_VALID = false;
			
			// 원하는 선생님 연령대 유효성검사
			if(wantAge.length == 0) {
				$(".check-age").addClass('btn-outline-danger')
				$(".check-age").removeClass('btn-outline-success')
				WANTAGE_VALID = false;
			} else {
				$(".check-age").addClass('btn-outline-success')
				$(".check-age").removeClass('btn-outline-danger')
				WANTAGE_VALID = true;
			}
			
			// 원하는 돌봄분야 유효성 검사
			if(checkType.length == 0) {
				$(".check-type").addClass('btn-outline-danger')
				$(".check-type").removeClass('btn-outline-success')
				CHECKTYPE_VALID = false;
			} else {
				$(".check-type").addClass('btn-outline-success')
				$(".check-type").removeClass('btn-outline-danger')
				CHECKTYPE_VALID = true;
			}
			
			if(!WANTAGE_VALID || !CHECKTYPE_VALID) {
				return false;
			}
			
			document.getElementById('step2').classList.add('d-none');
			document.getElementById('step3').classList.remove('d-none');

			}
		}
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>P E T M A L L</title>
<style>
.my-page {
    margin: 30px;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jspf" %>

<div class="my-page">
    <h1>๐ค๋์ ์ ๋ณด</h1>
</div>

<section class="user-dashboard page-wrapper" style="padding: 0;">
    <hr class="color-hr">
	<div class="container">
		<div class="row">
			<div class="col-md-12" style="width: 97%; padding: 0;">
				<div class="dashboard-wrapper user-dashboard" style="margin: 30px 0 30px 0;">
					<div class="media">
						<div class="media-body">
							<h1 class="media-heading">ํ์ํฉ๋๋ค. ${member.id}๋!</h1>
							<hr>
							<div class="member-info" style="font-size: 20px; line-height: 50px;">
                                <span>๊ณ ๊ฐ๋ช : ${member.name}</span><br>
                                <span>์ฐ๋ฝ์ฒ : ${member.phone}</span><br>
                                <span>์ด๋ฉ์ผ : ${member.email}</span><br>
                                <span>์ฃผ์ : ${member.address}</span><br>
                                <hr>
							</div>
						</div>
					</div>
					<div class="total-order me-20">
					    <h3>๐ณ๊ฒฐ์  ์๋จ ๋ฑ๋ก</h3>
					    <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>๋ฒํธ</th>
                                        <th>์ ํ</th>
                                        <th>์ด๋ฆ</th>
                                        <th>๋ฑ๋ก์ผ์</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><a href="#!">#1</a></td>
                                        <td>์ ์ฉ์นด๋</td>
                                        <td>๊ตญ๋ฏผ ์นด๋ - ๊ถ๋ฏผ์ด ์๋์ ๊ฐ ์นด๋</td>
                                        <td>Mar 25, 2022</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
					</div>
					<hr>
					<div class="total-order mt-20">
						<h3>๐ฆ์ฃผ๋ฌธ ๋ด์ญ</h3>
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>์ฃผ๋ฌธ๋ฒํธ</th>
										<th>์ํ๋ช</th>
										<th>์ฃผ๋ฌธ์ผ์</th>
										<th>์ํ์</th>
										<th>๊ฐ๊ฒฉ</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a href="#!">#252125</a></td>
										<td>ํธ ๊น์ธ ๋ฏธ๋๋ฆฌ๊ฐ ์ฐพ๋ ํน์ ์ด๋ถ</td>
										<td>Oct 12, 2022</td>
										<td>1</td>
										<td>27300์</td>
									</tr>
									<tr>
                                        <td><a href="#!">#21156</a></td>
                                        <td>ํฉ๋งจ ๊ฐ๊ตฌ๋ฆฌ๋ฅผ ์ํ ์ฌ๋๋ฐฅ</td>
                                        <td>Oct 10, 2022</td>
                                        <td>1</td>
                                        <td>5500์</td>
                                    </tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="/WEB-INF/views/include/footer.jspf" %>

<script>

    //alert("js test 00");

    function comingSoon() {
        alert("์๋ฐ์ดํธ ์์ ์๋๋ค.");
    }

</script>


</body>
</html>


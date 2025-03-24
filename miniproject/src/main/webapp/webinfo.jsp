<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="cr" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="weekdays">
	<p>
		금주분양 매물정보<br> <em>이번주 신규 매물정보!</em>
	</p>
	<div class="week_estates">
		<ul>
			<cr:forEach var="widata" items="${wiList}">
				<li><a> <span>${widata.b_status}</span>
						<div>${widata.b_name}</div>
						<aside>${widata.b_addr}</aside> <span>${widata.b_cate} | ${widata.b_lease_type}</span> <label>${widata.b_sale_date} | ${widata.b_movein_date}</label>
						<div>
							<img src="./room/${widata.b_img}">
						</div>
				</a></li>
			</cr:forEach>
		</ul>
	</div>
</div>
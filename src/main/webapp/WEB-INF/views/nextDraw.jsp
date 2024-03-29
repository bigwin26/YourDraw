<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<article id="nextDraw">
	<h2 class="major">Next Draw</h2>
	<c:choose>
	<c:when test="${not empty NextDrawList}">
		<div class="main-wrapper">
			<div class="grid-wrapper">
						<c:forEach var="NextDrawList" items="${NextDrawList}">
							<div class="grid-item">
								<div class="item-product-info-wrapper">
									<a class="product-thumbnail-img"> <img
										<c:if test="${'Y' eq NextDrawList.launched}">style="opacity:.6"</c:if>
										src="${Path}/resources/images/shoes/<c:out value="${NextDrawList.product_num}"/>.jpg">
									</a>
									<div class="product-info">
										<h2 class="thumbnail__product__name">
											<c:out value="${NextDrawList.name}" />
										</h2>
										<span class="thumbnail__product__color">
											<c:out value="${NextDrawList.color}"/>
										</span>
										<br>
										<span
											<c:if test="${'Y' eq NextDrawList.launched}">style="display:none"</c:if>
										class="thumbnail__product__price"> 
											<c:out value="${NextDrawList.price}"/>
										</span>
									</div>
								</div>
								<div class="product-draw-info-wrapper">
									<div class="product-draw-info">
										<div class="product-date">
											<span class="product-date-label">Launch Date</span>
											<div class="product-release-date">
												<c:choose>
													<c:when test="${'N' eq NextDrawList.launched}">
														<span>${NextDrawList.release_date}</span>
													</c:when>
													<c:when test="${'Y' eq NextDrawList.launched}">
														<span>LAUNCHED on ${NextDrawList.release_date}</span>
													</c:when>
												</c:choose>
											</div>
											<span class="product-code-label"></span>
											<div class="product-code">
												<span><c:out value="${NextDrawList.product_num}" /></span>
											</div>
										</div>
									</div>
								</div>
								<a href="${NextDrawList.release_url}"
									<c:if test="${'Y' eq NextDrawList.launched}">style="display:none";</c:if>
									class="enter-draw-button">Enter Draw</a>
							</div>
						</c:forEach>
			</div>
			<!--END grid-wrapper -->
		</div>
	</c:when>
	<c:otherwise>
		<p>예정된 드로우가 없습니다.</p>
	</c:otherwise>
	</c:choose>
</article>
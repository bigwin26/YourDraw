<article id="pastDraw">
	<h2 class="major">Past Draw</h2>
	<div class="main-wrapper">
		<div class="grid-wrapper">
			<c:forEach var="PastDrawList" items="${PastDrawList}">
				<div class="grid-item">
					<div class="item-product-info-wrapper">
						<a class="product-thumbnail-img"> <img
							<c:if test="${'Y' eq PastDrawList.launched}">style="opacity:.6"</c:if>
							<%-- src="/image/<c:out value="${PastDrawList.product_num}"/>.jpg"> --%>
							src="${Path}/resources/images/shoes/<c:out value="${PastDrawList.product_num}"/>.jpg">
						</a>
						<div class="product-info">
							<h2 class="thumbnail__product__name">
								<c:out value="${PastDrawList.name}" />
							</h2>
							<span class="thumbnail__product__color"><c:out
									value="${PastDrawList.color}" /></span> <span
								<c:if test="${'Y' eq PastDrawList.launched}">style="display:none"</c:if>
								class="thumbnail__product__price"> <c:out
									value="${PastDrawList.price}$" /></span>
						</div>
					</div>
					<div class="product-draw-info-wrapper">
						<div class="product-draw-info">
							<div class="product-date">
								<span class="product-date-label">Launch Date</span>
								<div class="product-release-date">
									<c:choose>
										<c:when test="${'N' eq PastDrawList.launched}">
											<span>${PastDrawList.release_date}</span>
										</c:when>
										<c:when test="${'Y' eq PastDrawList.launched}">
											<span>LAUNCHED on ${PastDrawList.release_date}</span>
										</c:when>
									</c:choose>
								</div>
							</div>
						</div>
					</div>
					<a
						<c:if test="${'Y' eq PastDrawList.launched}">style="display:none"</c:if>
						class="enter-draw-button">Enter Draw</a>
				</div>
			</c:forEach>

		</div>
		<!--END grid-wrapper -->
	</div>
</article>
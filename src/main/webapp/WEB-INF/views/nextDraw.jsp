<article id="nextDraw">
	<h2 class="major">Next Draw</h2>
	<div class="main-wrapper">
		<div class="grid-wrapper">
			<c:forEach var="shoesList" items="${shoesList}">
				<div class="grid-item">
					<div class="item-product-info-wrapper">
						<a class="product-thumbnail-img"> <img
							<c:if test="${'Y' eq shoesList.launched}">style="opacity:.6"</c:if>
							<%-- src="/image/<c:out value="${shoesList.product_num}"/>.jpg"> --%>
							src="${Path}/resources/images/shoes/<c:out value="${shoesList.product_num}"/>.jpg">
						</a>
						<div class="product-info">
							<h2 class="thumbnail__product__name">
								<c:out value="${shoesList.name}" />
							</h2>
							<span class="thumbnail__product__color"><c:out
									value="${shoesList.color}" /></span> <span
								<c:if test="${'Y' eq shoesList.launched}">style="display:none"</c:if>
								class="thumbnail__product__price"> <c:out
									value="${shoesList.price}$" /></span>
						</div>
					</div>
					<div class="product-draw-info-wrapper">
						<div class="product-draw-info">
							<div class="product-date">
								<span class="product-date-label">Launch Date</span>
								<div class="product-release-date">
									<c:choose>
										<c:when test="${'N' eq shoesList.launched}">
											<span>${shoesList.release_date}</span>
										</c:when>
										<c:when test="${'Y' eq shoesList.launched}">
											<span>LAUNCHED on ${shoesList.release_date}</span>
										</c:when>
									</c:choose>
								</div>
								<span class="product-code-label"></span>
								<div class="product-code">
									<span><c:out value="${shoesList.product_num}" /></span>
								</div>
							</div>
						</div>
					</div>
					<a
						<c:if test="${'Y' eq shoesList.launched}">style="display:none"</c:if>
						class="enter-draw-button">Enter Draw</a>
				</div>
			</c:forEach>

		</div>
		<!--END grid-wrapper -->
	</div>
</article>
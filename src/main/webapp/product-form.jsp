<%@ include file="header.jsp" %>

<div class="row">
    <div class="col-lg-8 col-md-10 mx-auto">
        <div class="card border-0 mb-5">
            <div class="card-header border-0 py-3 d-flex align-items-center">
                <c:if test="${product != null}">
                    <h3 class="mb-0"><i class="fa-solid fa-pen-to-square mr-3" style="color: var(--accent-glow);"></i>Modifier le Produit</h3>
                </c:if>
                <c:if test="${product == null}">
                    <h3 class="mb-0"><i class="fa-solid fa-plus-circle mr-3" style="color: var(--accent-glow);"></i>Ajouter un Produit</h3>
                </c:if>
            </div>
            <div class="card-body p-4">
                <c:if test="${product != null}">
                    <form action="<%= request.getContextPath() %>/update-product" method="post">
                    <input type="hidden" name="id" value="<c:out value='${product.id}' />" />
                </c:if>
                <c:if test="${product == null}">
                    <form action="<%= request.getContextPath() %>/create-product" method="post">
                </c:if>

                    <div class="form-group">
                        <label for="name"><i class="fa-solid fa-tag mr-2 text-muted"></i>Nom du produit</label>
                        <input type="text" class="form-control" id="name" name="name" value="<c:out value='${product.name}' />" required placeholder="Ex: Ordinateur Portable">
                    </div>

                    <div class="form-group">
                        <label for="description"><i class="fa-solid fa-align-left mr-2 text-muted"></i>Description</label>
                        <textarea class="form-control" id="description" name="description" rows="4" placeholder="Description détaillée du produit..."><c:out value='${product.description}' /></textarea>
                    </div>

                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label for="price"><i class="fa-solid fa-euro-sign mr-2 text-muted"></i>Prix</label>
                            <input type="number" step="0.01" class="form-control" id="price" name="price" value="<c:out value='${product.price}' />" required placeholder="0.00">
                        </div>

                        <div class="col-md-6 form-group">
                            <label for="stockQuantity"><i class="fa-solid fa-cubes mr-2 text-muted"></i>Quantité en stock</label>
                            <input type="number" class="form-control" id="stockQuantity" name="stockQuantity" value="<c:out value='${product.stockQuantity}' />" required placeholder="0">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="sku"><i class="fa-solid fa-barcode mr-2 text-muted"></i>SKU (Code produit unique)</label>
                        <input type="text" class="form-control" id="sku" name="sku" value="<c:out value='${product.sku}' />" required placeholder="Ex: LAPTOP-2023-XYZ">
                    </div>

                    <hr class="mt-4 mb-4" style="border-color: rgba(255,255,255,0.05);">

                    <div class="d-flex justify-content-end">
                        <a href="<%= request.getContextPath() %>/products" class="btn btn-secondary mr-3 text-white px-4">
                            <i class="fa-solid fa-times mr-2"></i> Annuler
                        </a>
                        <button type="submit" class="btn btn-primary px-4">
                            <i class="fa-solid fa-save mr-2"></i> Enregistrer
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>
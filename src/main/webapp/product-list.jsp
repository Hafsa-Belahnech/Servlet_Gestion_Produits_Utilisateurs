<%@ include file="header.jsp" %>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h2><i class="fa-solid fa-box-open mr-2" style="color: var(--accent-glow);"></i>Liste des Produits</h2>
</div>

<div class="row mb-4 align-items-center">
    <div class="col-md-6">
        <a href="<%= request.getContextPath() %>/product-form" class="btn btn-success">
            <i class="fa-solid fa-plus-circle mr-2"></i> Ajouter un Produit
        </a>
    </div>
    <div class="col-md-6">
        <form action="<%= request.getContextPath() %>/products" method="get" class="form-inline float-right">
            <div class="input-group">
                <input type="text" class="form-control" name="keyword" placeholder="Rechercher..." value="${keyword}">
                <div class="input-group-append">
                    <button type="submit" class="btn btn-primary px-4"><i class="fa-solid fa-search"></i></button>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="card border-0 mb-5">
    <div class="card-body p-0">
        <div class="table-responsive">
            <table class="table table-hover mb-0">
                <thead class="thead-dark">
                    <tr>
                        <th class="border-top-0 rounded-left py-3 px-4">ID</th>
                        <th class="border-top-0 py-3">Nom</th>
                        <th class="border-top-0 py-3">Prix</th>
                        <th class="border-top-0 py-3">Stock</th>
                        <th class="border-top-0 py-3">SKU</th>
                        <th class="border-top-0 rounded-right py-3 text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="product" items="${products}">
                        <tr>
                            <td class="px-4"><c:out value="${product.id}" /></td>
                            <td class="font-weight-bold" style="color: var(--text-main);"><c:out value="${product.name}" /></td>
                            <td class="text-success font-weight-bold"><c:out value="${product.price}" /> €</td>
                            <td>
                                <span class="badge badge-pill ${product.stockQuantity > 10 ? 'badge-success' : (product.stockQuantity > 0 ? 'badge-warning' : 'badge-danger')} px-3 py-2">
                                    <c:out value="${product.stockQuantity}" />
                                </span>
                            </td>
                            <td class="text-muted"><c:out value="${product.sku}" /></td>
                            <td class="text-center">
                                <a href="<%= request.getContextPath() %>/product-form?action=edit&id=<c:out value='${product.id}' />" class="btn btn-primary btn-sm mr-2" title="Modifier">
                                    <i class="fa-solid fa-pen"></i> Modifier
                                </a>
                                <a href="<%= request.getContextPath() %>/delete-product?id=<c:out value='${product.id}' />" class="btn btn-danger btn-sm" onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce produit?')" title="Supprimer">
                                    <i class="fa-solid fa-trash"></i> Supprimer
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>
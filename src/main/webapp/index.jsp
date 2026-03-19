<%@ include file="header.jsp" %>

<div class="jumbotron text-center">
    <div class="mb-4">
        <i class="fa-solid fa-boxes-packing fa-4x" style="color: var(--accent-glow); text-shadow: 0 0 20px rgba(56,189,248,0.5);"></i>
    </div>
    <h1 class="display-4">Bienvenue dans l'application de <span style="color: var(--accent-glow);">Gestion d'Inventaire</span></h1>
    <p class="lead mt-3">Cette application démontre l'intégration de JSP, Servlet, Hibernate avec Jakarta EE et un DAO générique.</p>
    
    <hr class="my-4">
    <p class="text-muted mb-5">Utilisez les liens ci-dessous pour naviguer dans l'application :</p>

    <div class="row">
        <div class="col-md-6 mb-4">
            <div class="card h-100 border-0">
                <div class="card-header text-center pt-4 pb-3 border-0">
                    <i class="fa-solid fa-users-gear fa-3x mb-3" style="color: var(--accent-glow-secondary);"></i>
                    <h4 class="mb-0">Gestion des Utilisateurs</h4>
                </div>
                <div class="card-body text-center d-flex flex-column">
                    <p class="text-muted flex-grow-1">Gérez les utilisateurs de l'application. Ajoutez, modifiez ou supprimez des profils.</p>
                    <div class="mt-3">
                        <a class="btn btn-primary mr-2" href="<%= request.getContextPath() %>/users" role="button">
                            <i class="fa-solid fa-eye mr-2"></i> Voir les Utilisateurs
                        </a>
                        <a class="btn btn-success" href="<%= request.getContextPath() %>/user-form" role="button">
                            <i class="fa-solid fa-user-plus mr-2"></i> Ajouter
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 mb-4">
            <div class="card h-100 border-0">
                <div class="card-header text-center pt-4 pb-3 border-0">
                    <i class="fa-solid fa-dolly fa-3x mb-3" style="color: var(--accent-glow-secondary);"></i>
                    <h4 class="mb-0">Gestion des Produits</h4>
                </div>
                <div class="card-body text-center d-flex flex-column">
                    <p class="text-muted flex-grow-1">Gérez l'inventaire des produits. Gardez une trace des prix et des quantités en stock.</p>
                    <div class="mt-3">
                        <a class="btn btn-primary mr-2" href="<%= request.getContextPath() %>/products" role="button">
                            <i class="fa-solid fa-eye mr-2"></i> Voir les Produits
                        </a>
                        <a class="btn btn-success" href="<%= request.getContextPath() %>/product-form" role="button">
                            <i class="fa-solid fa-plus-circle mr-2"></i> Ajouter
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>
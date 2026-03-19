<%@ include file="header.jsp" %>

<div class="row">
    <div class="col-lg-8 col-md-10 mx-auto">
        <div class="card border-0 mb-5">
            <div class="card-header border-0 py-3 d-flex align-items-center">
                <c:if test="${user != null}">
                    <h3 class="mb-0"><i class="fa-solid fa-user-pen mr-3" style="color: var(--accent-glow);"></i>Modifier l'Utilisateur</h3>
                </c:if>
                <c:if test="${user == null}">
                    <h3 class="mb-0"><i class="fa-solid fa-user-plus mr-3" style="color: var(--accent-glow);"></i>Ajouter un Utilisateur</h3>
                </c:if>
            </div>
            <div class="card-body p-4">
                <c:if test="${user != null}">
                    <form action="<%= request.getContextPath() %>/update-user" method="post">
                    <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                </c:if>
                <c:if test="${user == null}">
                    <form action="<%= request.getContextPath() %>/create-user" method="post">
                </c:if>

                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label for="firstName"><i class="fa-solid fa-signature mr-2 text-muted"></i>Prénom</label>
                            <input type="text" class="form-control" id="firstName" name="firstName" value="<c:out value='${user.firstName}' />" required placeholder="Ex: Jean">
                        </div>

                        <div class="col-md-6 form-group">
                            <label for="lastName"><i class="fa-solid fa-id-card mr-2 text-muted"></i>Nom</label>
                            <input type="text" class="form-control" id="lastName" name="lastName" value="<c:out value='${user.lastName}' />" required placeholder="Ex: Dupont">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="email"><i class="fa-solid fa-envelope mr-2 text-muted"></i>Email</label>
                        <input type="email" class="form-control" id="email" name="email" value="<c:out value='${user.email}' />" required placeholder="jean.dupont@example.com">
                    </div>

                    <div class="form-group">
                        <label for="password"><i class="fa-solid fa-lock mr-2 text-muted"></i>Mot de passe</label>
                        <input type="password" class="form-control" id="password" name="password" <c:if test="${user == null}">required</c:if> placeholder="••••••••">
                        <c:if test="${user != null}">
                            <small class="form-text mt-2 text-muted" style="color: var(--accent-glow-secondary) !important;">
                                <i class="fa-solid fa-circle-info mr-1"></i> Laissez vide pour conserver le mot de passe actuel.
                            </small>
                        </c:if>
                    </div>

                    <hr class="mt-4 mb-4" style="border-color: rgba(255,255,255,0.05);">

                    <div class="d-flex justify-content-end">
                        <a href="<%= request.getContextPath() %>/users" class="btn btn-secondary mr-3 text-white px-4">
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
<%@ include file="header.jsp" %>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h2><i class="fa-solid fa-users mr-2" style="color: var(--accent-glow);"></i>Liste des Utilisateurs</h2>
    <a href="<%= request.getContextPath() %>/user-form" class="btn btn-success">
        <i class="fa-solid fa-user-plus mr-2"></i>Ajouter un Utilisateur
    </a>
</div>

<div class="card border-0 mb-5">
    <div class="card-body p-0">
        <div class="table-responsive">
            <table class="table table-hover mb-0">
                <thead class="thead-dark">
                    <tr>
                        <th class="border-top-0 rounded-left py-3 px-4">ID</th>
                        <th class="border-top-0 py-3">Prénom</th>
                        <th class="border-top-0 py-3">Nom</th>
                        <th class="border-top-0 py-3">Email</th>
                        <th class="border-top-0 py-3">Date de création</th>
                        <th class="border-top-0 rounded-right py-3 text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td class="px-4"><c:out value="${user.id}" /></td>
                            <td class="font-weight-bold"><c:out value="${user.firstName}" /></td>
                            <td><c:out value="${user.lastName}" /></td>
                            <td class="text-muted"><c:out value="${user.email}" /></td>
                            <td><c:out value="${user.createdAt}" /></td>
                            <td class="text-center">
                                <a href="<%= request.getContextPath() %>/user-form?action=edit&id=<c:out value='${user.id}' />" class="btn btn-primary btn-sm mr-2" title="Modifier">
                                    <i class="fa-solid fa-pen"></i> Modifier
                                </a>
                                <a href="<%= request.getContextPath() %>/delete-user?id=<c:out value='${user.id}' />" class="btn btn-danger btn-sm" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet utilisateur?')" title="Supprimer">
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
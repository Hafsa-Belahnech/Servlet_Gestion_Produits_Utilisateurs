<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gestion d'Inventaire</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top">
            <div class="container">
                <a class="navbar-brand" href="<%= request.getContextPath() %>/">
                    <i class="fa-solid fa-boxes-stacked mr-2" style="color: var(--accent-glow);"></i>Gestion d'Inventaire
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown mr-3">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">
                                <i class="fa-solid fa-users mr-1"></i> Utilisateurs
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="<%= request.getContextPath() %>/users"><i class="fa-solid fa-list mr-2"></i>Liste des Utilisateurs</a>
                                <a class="dropdown-item" href="<%= request.getContextPath() %>/user-form"><i class="fa-solid fa-user-plus mr-2"></i>Ajouter Utilisateur</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown">
                                <i class="fa-solid fa-box-open mr-1"></i> Produits
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="<%= request.getContextPath() %>/products"><i class="fa-solid fa-list mr-2"></i>Liste des Produits</a>
                                <a class="dropdown-item" href="<%= request.getContextPath() %>/product-form"><i class="fa-solid fa-plus-circle mr-2"></i>Ajouter Produit</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="container mt-4">
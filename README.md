#  Gestion de Stock & Utilisateurs (Jakarta EE 10 / Hibernate)

Application Java EE robuste basée sur une architecture **n-tiers**, utilisant **Hibernate** pour la persistance des données et déployée sur **Tomcat 10**.

## Objectifs
- **Architecture par Couches** : Séparation claire entre les entités, la couche d'accès aux données (DAO) et la couche de présentation.
- **DAO Pattern** : Centralisation des opérations CRUD pour les entités `User` et `Product`.
- **Gestion du Cycle de Vie** : Utilisation d'un `Listener` pour l'initialisation et la fermeture de la `SessionFactory` Hibernate.
- **Rendu JSP & Fragments** : Utilisation de `header.jsp` et `footer.jsp` pour une interface modulaire et réutilisable.

##  Description 
- **Hibernate ORM** : Mapping objet-relationnel avancé avec gestion des sessions via `HibernateUtil`.
- **Jakarta EE 10** : Utilisation des dernières spécifications Servlets pour le traitement des requêtes.
- **Modularité des Vues** : Pages de formulaires et de listes distinctes pour une maintenance simplifiée.
- **Gestion Centralisée des Erreurs** : Redirection automatique vers `error.jsp` en cas d'exception.

##  Outils Techniques
- **Langage :** Java 17
- **Serveur d'application :** Apache Tomcat 10.x (ou Smart Tomcat)
- **Framework ORM :** Hibernate 6.0.0
- **Framework ORM :** H2
- **API Web :** Jakarta Servlets & JSP
- **Build Tool :** Maven
- **IDE :** IntelliJ IDEA
- **Antigravity :** Pour le design (CSS3)

## 📂 Architecture du Code (Basée sur l'Arborescence)
- `com.example.model` : Classes d'entités persistantes.
- `com.example.dao` : Couche d'accès aux données (Logique SQL/Hibernate).
- `com.example.controller` : Servlets assurant la liaison entre le Web et les DAOs.
- `com.example.listener` : Gestion du contexte de l'application (Démarrage/Arrêt).
- `com.example.util` : Utilitaires techniques (Configuration Hibernate).
- `webapp/` : Interface utilisateur (JSP, CSS, WEB-INF).

## 📸 Captures d'écran
# Console 
<img width="1600" height="765" alt="image" src="https://github.com/user-attachments/assets/bf79642b-f63a-4aa4-8764-cc12dde8a1c0" />
<img width="1600" height="611" alt="image" src="https://github.com/user-attachments/assets/acff05e7-8d73-4f80-b917-1b03c8e4226b" />


## 🎥 Démonstration Vidéo


https://github.com/user-attachments/assets/ab08cab7-7ed7-483d-8d48-7c2c81c13be6

---
**Réalisé par :** Hafsa Belahnech

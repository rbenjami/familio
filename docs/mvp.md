Voici la **formalisation du MVP** de l'app de coordination familiale (SaaS #3) sous forme de **user stories** claires, regroupées par fonctionnalité. Le tout est **mobile-first**, pensé pour Flutter.

---

## ✅ MVP – Nom : *Familio*

---

### 📁 1. Gestion de foyer

| User Story                           | Description                                                                                         |
| ------------------------------------ | --------------------------------------------------------------------------------------------------- |
| **US01 – Créer un foyer**            | En tant qu’utilisateur, je veux créer un foyer afin d’y inviter les membres de ma famille.          |
| **US02 – Rejoindre un foyer**        | En tant qu’utilisateur, je veux rejoindre un foyer via un lien ou un code d’invitation.             |
| **US03 – Voir les membres du foyer** | En tant qu’utilisateur, je veux voir les membres de mon foyer et leur rôle (parent, grand-parent…). |

---

### 📅 2. Planning des enfants

| User Story                    | Description                                                                                                      |
| ----------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| **US04 – Ajouter un enfant**  | En tant qu’utilisateur, je veux créer un profil d’enfant (prénom, âge, avatar) pour l’associer à des événements. |
| **US05 – Créer un événement** | En tant qu’utilisateur, je veux créer un événement (activité, RDV, garde) lié à un ou plusieurs enfants.         |
| **US06 – Voir un planning**   | En tant qu’utilisateur, je veux voir une vue calendrier ou timeline des événements à venir.                      |
| **US07 – Filtrer par enfant** | En tant qu’utilisateur, je veux pouvoir filtrer le planning par enfant.                                          |

---

### ✅ 3. Todo / tâches familiales

| User Story                              | Description                                                                                          |
| --------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| **US08 – Ajouter une tâche**            | En tant qu’utilisateur, je veux créer une tâche familiale (courses, lessive, RDV…) pour la partager. |
| **US09 – Assigner une tâche**           | En tant qu’utilisateur, je veux pouvoir assigner une tâche à un ou plusieurs membres du foyer.       |
| **US10 – Cocher une tâche**             | En tant qu’utilisateur, je veux cocher une tâche quand elle est faite.                               |
| **US11 – Ajouter une note/commentaire** | En tant qu’utilisateur, je veux pouvoir commenter une tâche pour donner un détail ou un rappel.      |

---

### 🔗 4. Collaboration

| User Story                       | Description                                                                                            |
| -------------------------------- | ------------------------------------------------------------------------------------------------------ |
| **US12 – Lien d’invitation**     | En tant qu’utilisateur, je veux inviter un membre via un lien ou un code.                              |
| **US13 – Notifications locales** | En tant qu’utilisateur, je veux recevoir une notification quand une tâche m’est assignée ou commentée. |

---

### 📱 5. Interface et personnalisation

| User Story                    | Description                                                                                 |
| ----------------------------- | ------------------------------------------------------------------------------------------- |
| **US14 – Choisir un avatar**  | En tant qu’utilisateur, je veux choisir un avatar pour mon profil et celui des enfants.     |
| **US15 – Thème clair/sombre** | En tant qu’utilisateur, je veux basculer entre thème clair et sombre selon mes préférences. |

---

## 🚀 Priorité MVP (Sprint 1–2)

| Priorité        | User Stories clés        |
| --------------- | ------------------------ |
| 🥇 Must have    | US01 à US06, US08 à US10 |
| 🥈 Should have  | US07, US11, US12         |
| 🥉 Nice to have | US13 à US15              |

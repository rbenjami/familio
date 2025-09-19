# Supabase Functions

Ce dossier contient les Edge Functions de Supabase pour le projet Familio.

## Structure

```
supabase/
├── functions/
│   ├── _shared/           # Utilitaires partagés
│   │   └── cors.ts        # Configuration CORS
│   ├── register-user/     # Fonction d'inscription
│   │   └── index.ts
│   ├── ensure-user-profile/ # Vérification/création de profil
│   │   └── index.ts
│   └── deno.json          # Configuration Deno
├── config.toml            # Configuration Supabase
└── .gitignore
```

## Edge Functions

### register-user
Gère l'inscription complète d'un utilisateur :
- Création de l'utilisateur Auth
- Création du profil utilisateur
- Création optionnelle d'un home
- Ajout automatique comme admin du home

**Endpoint:** `POST /functions/v1/register-user`

**Body:**
```json
{
  "email": "user@example.com",
  "password": "password123",
  "displayName": "John Doe",
  "homeName": "Ma Famille" // optionnel
}
```

### ensure-user-profile
Vérifie et crée le profil utilisateur si nécessaire :
- Utilisée après la connexion
- Crée automatiquement le profil manquant
- Retourne les données du profil

**Endpoint:** `POST /functions/v1/ensure-user-profile`

**Headers:**
```
Authorization: Bearer <jwt_token>
```

## Déploiement

Les fonctions sont automatiquement déployées via l'API Supabase depuis l'application Flutter.

## Variables d'environnement

Les fonctions utilisent automatiquement :
- `SUPABASE_URL`
- `SUPABASE_SERVICE_ROLE_KEY`
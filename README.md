# Wordesia — Flutter Web (GitHub Pages)

Flutter Web minimal pour landing + mentions légales de **Wordesia**.

## Utilisation locale
```bash
flutter pub get
flutter run -d chrome
```

## Déploiement automatique sur GitHub Pages
1. Crée un dépôt (ex. `wordesia-flutter-site`) et pousse ce code sur la branche `main`.
2. Le workflow **Deploy Flutter Web to GitHub Pages** :
    - Installe Flutter stable
    - Active le support Web
    - Construit le site avec `--base-href "/<repo>/"`
    - Publie les fichiers sur la branche **gh-pages**
3. Dans GitHub → Settings → Pages :
    - **Source**: *Deploy from a branch* (si demandé)
    - **Branch**: `gh-pages`

### Cas particuliers
- Si ton dépôt est `username.github.io`, adapte la tâche build :
  ```yaml
  flutter build web --release --web-renderer canvaskit --base-href "/"
  ```
- Domaine personnalisé : ajoute un fichier `CNAME` à la racine de la branche `gh-pages` avec `wordesia.com`.

## Routes disponibles
- `/` — Accueil (landing)
- `/#/privacy` — Politique de confidentialité
- `/#/terms` — Conditions d’utilisation
- `/#/legal` — Mentions légales
- `/#/delete-data` — Suppression des données

> Les pages sont in-app via routes Flutter. Le `web/404.html` redirige vers l’app pour les deep-links.

© 2025 Mahugnon Services Ltd

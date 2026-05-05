# Securite

Le site est statique et ne traite pas de mot de passe ni de paiement.

Mesures appliquees :
- suppression des scripts externes et CDN inutiles ;
- liens externes avec `rel="noopener noreferrer"` ;
- politique CSP restrictive dans `index.html`, `_headers` et `.htaccess` ;
- blocage de l'indexation des dossiers avec `Options -Indexes` pour Apache ;
- headers de securite pour Netlify/Cloudflare Pages via `_headers`.

Avant mise en ligne :
- remplacer les chemins relatifs du sitemap par l'URL finale du domaine ;
- verifier que le mail de contact est correct ;
- ne pas ajouter de formulaire sans protection anti-spam cote serveur.

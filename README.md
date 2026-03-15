# MacroDroid Web Remote
**Version 1.0.0** — Créé par Yves Balestra ([yves.balestra@gmail.com](mailto:yves.balestra@gmail.com))

Une interface web simple, élégante et autonome pour déclencher vos macros [MacroDroid](https://macrodroidforum.com/) depuis n'importe quel navigateur web (sur PC, Mac ou tablette). 

![Capture d'écran de l'application](https://via.placeholder.com/800x400.png?text=MacroDroid+Web+Remote)

## 🌟 Fonctionnalités

*   **100% Client-Side** : Aucune donnée n'est envoyée sur un quelconque serveur (en dehors de MacroDroid). Et l'application fonctionne comme un fichier local `.html`.
*   **Design Moderne & PWA** : Thème sombre, effets "Glassmorphism", installable directement sur l'écran d'accueil comme une vraie application.
*   **Persistence Automatique** : Votre Device ID et vos raccourcis sauvegardés dans le stockage local du navigateur.
*   **Envoi Silencieux & Feedback Visuel** : La macro se lance sans ouvrir de nouvel onglet ni changer de page. Le bouton émet une pulsation lumineuse pour confirmer l'envoi du signal.
*   **Mode Édition Intégré** : Modifiez instantanément le nom ou le déclencheur d'un bouton existant en cliquant sur l'icône "Crayon" ✏️, sans avoir à le recréer à zéro.
*   **Aide Intégrée** : Des infobulles claires pour guider les nouveaux utilisateurs sur les subtilités des déclencheurs Webhook de MacroDroid.
*   **Sauvegarde et Restauration** : Exportez/Importez en un clic vos boutons configurés. Une notification et un "flash" vert confirment la bonne restauration. L'identifiant de l'appareil (`Device ID`) n'est **jamais** inclus dans ce fichier pour garantir une sécurité totale.

---

## 🚀 Installation & Utilisation

Puisque ce projet est une simple page HTML autonome incluant tout le code nécessaire (HTML, CSS, Javascript), l'installation est immédiate.

1. **Téléchargez** le fichier `index.html`.
2. **Ouvrez-le** simplement dans votre navigateur web préféré (Chrome, Edge, Firefox, Safari...).
3. Vous pouvez l'ajouter en "Favoris" pour le retrouver plus facilement !

---

## ⚙️ Configuration avec MacroDroid

Pour que cette télécommande puisse communiquer avec votre téléphone, vous devez créer des macros avec le déclencheur **Webhook (URL)**.

### 1. Trouver votre Device ID
L'identifiant de votre téléphone est unique.
1. Sur MacroDroid, créez une nouvelle macro.
2. Ajoutez un Nouveau **Déclencheur > Connectivité > Webhook (URL)**.
3. MacroDroid vous affiche l'URL de déclenchement. Elle ressemble à cela :
   `https://trigger.macrodroid.com/1234abcd-5678-efgh-9012-ijklmnop/votre_identifiant`
4. Copiez **uniquement** la partie centrale (ici : `1234abcd-5678-efgh-9012-ijklmnop`).
5. Collez cet identifiant web dans le premier champ en haut de l'application web.

### 2. Ajouter un Bouton d'Action
1. Sur le même déclencheur MacroDroid, donnez un identifiant à votre macro (par exemple : `prendre_photo` ou `lampe_torche`). Ne mettez pas d'espaces.
2. Sauvegardez la macro sur votre téléphone avec l'action de votre choix.
3. Sur l'application web, descendez au formulaire "Ajouter".
4. Écrivez un beau libellé (Ex: "Allumer Torche").
5. Écrivez **exactement** le même Identifiant de Webhook (`prendre_photo` ou `lampe_torche`).
6. C'est fait ! Cliquez sur votre nouveau bouton et admirez le résultat sur votre téléphone.

---

## 💾 Sauvegarde (Export / Import)

Si vous supprimez souvent les données de navigation ou le cache de votre navigateur, vous pouvez sauvegarder vos boutons créés en sécurité :

1. Cliquez sur le bouton **"📤 Exporter"** pour télécharger un petit fichier `macrodroid_boutons_sauvegarde.json` sur votre ordinateur. *(Rassurez-vous, votre Device ID confidentiel n'y figurera pas, seulement la configuration des boutons).*
2. Après un nettoyage du navigateur ou sur un autre PC, cliquez sur **"📥 Importer"** et sélectionnez ce fichier json ; vos boutons réapparaitront instantanément. 
3. Il vous suffira de renseigner à nouveau votre fameux "Device ID" unique et tout fonctionnera comme avant !

---

## 🛠️ Dépannage Technique

*   **Rien ne se passe au clic** : Vérifiez que votre téléphone capte bien internet (Wi-Fi ou 4G/5G). L'appel Webhook passe par les serveurs de MacroDroid avant d'arriver sur votre appareil.
*   **Erreur lors de l'ajout du Device ID** : Vérifiez que vous n'avez conservé aucun "https://" ou "/mon_declencheur" à la fin de la chaine de caractères. Le programme tente de les nettoyer automatiquement, mais l'UUID brut est la meilleure approche.

---

## 📝 Licence
Ce projet est open-source et libre de droits. N'hésitez pas à forker ce dépôt, modifier le design (les variables CSS sont facilement accessibles au début du fichier) et l'adapter à vos besoins !

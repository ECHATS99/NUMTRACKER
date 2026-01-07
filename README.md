# BLACK HAWKS OSINT

Script OSINT léger et rapide pour Termux / Linux, créé par **Elioth Mikabou & Hawks**.  
Permet l'analyse rapide d'emails, de numéros, d'IMEI et de noms/prénoms, en ouvrant
automatiquement les recherches Web pertinentes.

---

## 🔥 Fonctionnalités

### ✔ 1. OSINT Email  
- HaveIBeenPwned (API, fuites de données)  
- Recherche DuckDuckGo  

### ✔ 2. OSINT Numéro  
- Google Dorking automatique

### ✔ 3. OSINT IMEI  
- imei24.com  
- imei.info  
- imeipro.info  

### ✔ 4. OSINT Nom & Prénom  
- Recherche Google  
- Recherche DuckDuckGo  

---

## 📦 Installation

```bash
git clone https://github.com/ECHATS99/NUMTRACKER.git
cd NUMTRACKER
chmod +x NUMTRACKER
```

Sur Termux :
```bash
pkg install curl jq
```
sur kali
```bash
apt install curl jq
---

## 🚀 Utilisation
```bash
bash NUMTRACKER.sh
```

---

## 🧩 Dépendances
- bash
- curl
- jq
- termux-open-url (pour Termux)

---

## ⚠ Note sur HaveIBeenPwned
Le script contient un placeholder :

```
hibp-api-key: 000000000000
```

Ajoutez votre clé API dans `api.sh` si vous voulez des résultats réels.

---

## 🛡 Licence
Ce projet est sous licence MIT.  
Voir le fichier `LICENSE`.

---

## ✨ Auteur
**ECHATS OSINT**

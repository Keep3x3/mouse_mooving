# Mouse Mover

Petit utilitaire Windows qui bouge automatiquement la souris toutes les N secondes pour empêcher la mise en veille / le statut "absent".

## Prérequis

- Windows 10 ou 11 (PowerShell est inclus par défaut, aucune installation nécessaire).
- **Git** : non installé par défaut sur Windows. Deux options :
  - Télécharger l'installeur depuis https://git-scm.com/download/win
  - Ou via winget (inclus dans Windows 10/11 récents) :
    ```bat
    winget install --id Git.Git -e
    ```

> Si vous ne voulez pas installer Git, vous pouvez télécharger le projet directement depuis GitHub : bouton **Code** → **Download ZIP**, puis extraire le dossier. Sautez alors l'étape `git clone` ci-dessous.

## Installation

```bat
git clone https://github.com/<votre-utilisateur>/mouse-mover.git
cd mouse-mover
```

## Utilisation

Depuis un terminal Windows (cmd ou PowerShell), dans le dossier du projet :

### Via le fichier .bat (le plus simple)

```bat
run.bat 30
```

Le nombre est l'intervalle en **secondes** entre chaque mouvement. Par défaut : 30 secondes.

Exemples :

```bat
run.bat 10      :: bouge toutes les 10 secondes
run.bat 60      :: bouge toutes les 60 secondes
run.bat         :: intervalle par défaut (30s)
```

### Directement via PowerShell

```powershell
powershell -ExecutionPolicy Bypass -File mouse-mover.ps1 -Interval 30
```

## Arrêter le script

Appuyez sur **Ctrl+C** dans la fenêtre du terminal, ou fermez la fenêtre.

## Fonctionnement

Le script déplace le curseur d'1 pixel puis le remet à sa position initiale. Cela suffit à être détecté comme activité par Windows, sans gêner l'utilisation de l'ordinateur.

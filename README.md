# Carnet de chant
Carnet de chant pour la ville de Rueil
# Si vous voulez installer le logiciel
 Veuillez vous référer à la [documentation officielle.](http://patacrep.readthedocs.io/fr/latest/installation.html)
(Ce n'est pas du tout une obligation !!)

#Pour écrire les chants
Il s'agit de LateX simplifié, utilisez votre éditeur habituel ! (Si vous n'avez pas d'idée, je vous conseille [atom](https://atom.io/))

```
  \selectlanguage{english}
  \songcolumns{2}
  \beginsong{Sad robot}
    [by=Pornophonique,album=8-bit lagerfeuer]

    \cover
    \gtab{Dm}{XX0231}
    \gtab{F}{1:022100}
    \gtab{C}{X32010}
    \utab{Dm}{2210}
    \utab{F}{2010}
    \utab{C}{0003}

    \begin{verse}
      His \[Dm]steely skin is covered
      By \[F]centuries of dust
      \[C]Once he was a great one
      \[Dm]Now he's dull and rust
    \end{verse}

    \begin{verse*}
        An \[Dm]oily tear he's crying
        \[F]Can you feel the pain
        Of the \[C]sad, sad robot
        And it's \[Dm]driving him insane
    \end{verse*}

      \begin{verse*}
        He can't \[Dm]turn back time nor history
        So his \[F]life became a misery
        He \[C]has to face the destiny
        Nobody \[Dm]cares anymore
      \end{verse*}

      \begin{chorus}
        \[Dm]Sad, sad robot
        \[F]Sad, sad robot
        \[C]Sad, sad robot
        All a\[Dm]lone
      \end{chorus}
  \endsong
```

Comme vous pouvez le voir dans cet exemple, il faut :

1. Commencer la chanson par la langue :
```
\selectlanguage{english} or \selectlanguage{french} or \selectlanguage{spanish}
```
2. Ensuite :
```
\songcolumns{2} or \songcolumns{1}
```
Cela dépend de la taille des lignes du chant, plus les lignes sont longues plus il faut viser 1 seule colonne.

3. Puis :
```
\beginsong{Titre}
  [by=Auteur,album=Album]
```
Il faut commencer la chanson, en mettant les informations précises. Le nom de l'album n'est pas une obligation.

4. Enfin :
```
  \cover
  \gtab{Dm}{XX0231}
  \gtab{F}{1:022100}
  \gtab{C}{X32010}
  \utab{Dm}{2210}
  \utab{F}{2010}
  \utab{C}{0003}
```
Mettre les accords qui sont en lien avec la chanson (au moins les accords qui ne sont pas des accords commun)

5. L'écriture de la chanson en elle-même :

Pour cela, plusieurs choix :
```
\begin{verse}
  blabla\[Dm]blablablabla
  blab\[F]blablablabla
\end{verse}
```
Il faut pour cela, mettre les accords de la façon suivante : \[F] pour qu'ils soient au dessus du texte.
Il existe aussi :
```
\begin{verse*}
\end{verse*}
```
Qui permet de créer un couplet qui ne sera pas numeroté.

```
\begin{chorus}
\end{chorus}
```
Qui permet de créer le refrain.

**Ne pas oublier de fermer la chanson**
par
```
\endsong
```

Si vous voulez chercher d'autres balises : [documentation officielle.](http://patacrep.readthedocs.io/fr/latest/song/latex.html)

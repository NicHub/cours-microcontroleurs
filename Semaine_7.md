
pandoc -f html -t markdown ExercicesLibres.html



Semaine 7

Les exercices libres de la semaine 6 sont plus bas.
Ceux de la semaine 5 sont plus bas.
Ceux de la semaine 4 sont plus bas.
Ceux de la semaine 3 sont plus bas.
Ceux de la semaine 2 sont beaucoup plus bas !
Ceux de la semaine 1 sont tout en bas !

Voici les fichiers LearnCbot de la semaine :
pour Arduino : LC7.pdf
pour Energia/MSP430 : LC7-msp.pdf

Les programmes correspondant sont disponibles sous forme de fichier zip :
pour Arduino : LC7ino.zip
pour Energia/MSP430 : LC7msp.zip


Ex 7.2-1 Servos

Pour un robot à patte, on teste le mouvement
des deux servos. La jambe doit d’abord faire un angle
de 60 degré en 1 seconde.
Puis la cuisse et la jambe se déplacent de 60 degrés
en 1 seconde pour être alignés.
Les servos couvrent un angle de 120 degrés pour
des impulsions entre 1 et 2ms distantes de 20ms.
Les servos sont documentés 120 degrés
(pour 1 à 2ms), et 60 degrés en 0.1s.
Comment ralentir le mouvement ? Rappelez-vous que l’on envoie la consigne de position toutes les 20ms. Les servos tournent dans le sens horaire si l’impulsion est plus longue. La position initiale correspond à 1ms.



Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le Corrigé !

Ex 7.3-1 D’ou vient la lumière ?

Deux photorésistances (LDR) sont
câblées en diviseur de tension. La
tension du point milieu envoyé sur A0
dépend de la différence d’éclairage
sur les deux LDR, quelque soit
l’intensité lumineuse.
On éclaire avec une lampe de poche,
et on veut que les leds Led1 et Led2
indiquent d’ou vient la lumière.


Réfléchissez à la variation de tension en A0 avant de programmer.
Utilisez le terminal pour observer les valeurs lues.



Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le Corrigé !

Ex 7.4-1 Filtrage de mesures

Les microcontrôleurs sont beaucoup utilisés dans des systèmes de mesure et d’acquisition de données. Très souvent, un traitement des mesures doit être effectué. Le "traitement numérique du signal" (Digital Signal Processing) est un sujet très vaste, qui fait appel à des techniques mathématiques adaptées. Un excellent MOOC est proposé par l’EPFL à ce sujet.

Beaucoup plus simplement, nous allons ici réaliser un filtre de type "hysteresis". Une LDR (photo-résistance) mesure la luminosité ambiante. La technique de mesure de la résistance par mesure du temps de décharge d’un condensateur peut être utilisée. On souhaite réaliser un "interrupteur crépusculaire" : une lampe doit être allumée la nuit et éteinte le jour. Voici un exemple de mesure obtenue à l’aube :


Avec le programme suivant, on applique simplement un seuil (indiqué en pointillé) :

#define Seuil 70
int mesure;
while (1) {
  mesure = MesureLum();
  if (mesure < Seuil) {
    AllumeLampe;
  } else {
    EteintLampe;
  }
}
On voit que la lampe risque de ne pas s’éteindre (ou s’allumer) d’un seul coup (courbe bleue). On cherche à obtenir plutôt la courbe verte : 5 valeurs successives doivent dépasser le "seuil haut" pour que la mesure soir vue comme "haute". Le même mécanisme sera appliqué avec un "seuil bas".

Modifiez le programme en conséquence !



Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le Corrigé !




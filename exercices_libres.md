
# Semaine 6

Voici les fichiers **LearnCbot** de la semaine :

- pour *Arduino* :  [LC6.pdf](http://www.didel.com/coursera/LC6.pdf)
- pour *Energia/MSP430* : [LC6-msp.pdf](http://pyr.ch/coursera/LC6-msp.pdf)

Les programmes correspondant sont disponibles sous forme de fichier zip :

- pour *Arduino* :  [LC6ino.zip](http://www.didel.com/coursera/LC6ino.zip)
- pour *Energia/MSP430* : [LC6msp.zip](http://pyr.ch/coursera/LC6msp.zip)

## Ex 6.2-1 Dessin sur un afficheur matriciel

Un afficheur matriciel de 16 × 16 LEDs est commandé par un microcontrôleur. Des procédures d’écriture de point on été écrites :

	void SetPoint (int x; int y)
	void ClearPoint (int x; int y)

Les coordonnées _x_ et _y_ varient de _0_ à _15_. Le point _(0, 0)_ est en haut à gauche de l’afficheur.

On dispose aussi d’une procédure `void Affiche (int duree)` qui raffaîchit l’affichage, dont la durée est multiple de 10 ms.

Ecrivez un programme qui affiche de manière “dynamique” la lettre Z, un peu comme Zorro le fait avec son épée !

Une vidéo montre l’effet désiré : [exemple-aff.mp4](http://pyr.ch/coursera/exemple-aff.mp4)

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex6-2-1) !

**Vous pouvez même tester votre programme :** Un afficheur programmable à distance vous est proposé dans la page des devoirs de programmation.



## Ex 6.2-2 Affichage des changement de joueur

Pour le championnat inter-universitaire de football, les étudiants d’une école d’ingénieurs décident de fabriquer une panneau pour indiquer les changements de joueurs. Les étudiants en génie mécanique ont réalisé une maquette qui se présente de la manière suivante :

![](https://d396qusza40orc.cloudfront.net/microcontroleurs/images/foot-change.jpg)

Des LEDs rouges et vertes de 5 mm de diamètre sont utilisées. Deux paires de boutons-poussoirs permettent de choisir les numéros des joueurs qui entrent et qui sortent.

Les étudiants en génie électrique sont chargés de réaliser la commande électronique. Les LEDs Rouges choisies ont une tension de _2 V_, les vertes _3V_. Les deux modèles ont un courant nominal de _10 mA_.

Proposez un schéma pour réaliser la commande de ce panneau.

Choisissez un microcontrôleur et l’électronique nécessaire pour commander les 4 fois 7 segments de 28 LEDs chacun.

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex6-2-2) !



## Ex 6.3-1 Routines SPI

Le but ce cet exercice est de comparer trois approches pour transférer 16 bits dans un registre à décalage commandant 16 LEDs.

Pour la première solution, utilisez la primitive `shiftOut` d’*Arduino*, abondamment documentée sur internet. Il faudra appeler 2 fois `shiftOut` pour un transfert 16 bits.

Exécutez le transfert 1000 fois et changez l’état de la Led1 pour évaluer le temps d’exécution. Notez la taille du code généré.

Pour la 2e solution, utilisez la librairie SPI qui passe par le registre SPI interne du microcontrôleur. Il faut utiliser les pins SPI.
[ReferenceSPI](http://arduino.cc/en/Reference/SPI)

Pour la 3e solution, utilisez les instructions *C* `(bitSet, bit Clear);` le choix de pins n’a pas d’importance, vous pouvez utiliser les même que dans l’exemple *Arduino*. Notez aussi la taille mémoire et le temps d’exécution.

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex6-3-1) !



## Ex 6.5-1 Système sur batteries

Pour essayer d’effrayer les taupes qui faisaient des ravages dans son jardin potager, un jardinier a installé un dispositif qui émet des bruits de manière pseudo-aléatoires, par courtes séquences. En moyenne, le dispositif est actif au total 90 secondes chaque heure. La consommation en mode actif est de 40mA. Le microcontrôleur consomme lui-même 1mA en permanence, en fonctionnant à 1 MHz. Les deux piles 1.5V AA utilisées ont une capacité de 1300mAh.

Calculez la durée de vie d’un jeu de piles. Proposez des solutions pour que le système consomme globalement moins de courant, en vue de lui donner une meilleure autonomie.

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex6-5-1) !




# Semaine 5

Voici les fichiers **LearnCbot** de la semaine :

- pour *Arduino* :  [LC5.pdf](http://www.didel.com/coursera/LC5.pdf)
- pour *Energia/MSP430* : [LC5-msp.pdf](http://pyr.ch/coursera/LC5-msp.pdf)

Les programmes correspondant sont disponibles sous forme de fichier zip :

- pour *Arduino* :  [LC5ino.zip](http://www.didel.com/coursera/LC5ino.zip)
- pour *Energia/MSP430* : [LC5msp.zip](http://pyr.ch/coursera/LC5msp.zip)

Voici également quelques exercices de la session 2013, qui pourrons aussi vous aider :

## Ex 5.1-1 Message Morse

Vous connaissez déjà le sujet, à cause du devoir de la semaine 3 ! Allons un peu plus dans le détail.

L’exercice est de lire avec le terminal un caractère et de clignoter son code en Morse.


Chaque lettre est codée dans 8 bits, 3 bits pour le nombres de ti-ta, 5 bits pour le code, 0 pour ti, 1 pour ta. La figure montre quelques exemples de ce codage.

Voici un extrait tiré de [Wikipedia](http://en.wikipedia.org/wiki/Morse_code)

International Morse code is composed of five elements:

1. short mark, dot or “dit” (·) — “dot duration” is one time unit long
2. longer mark, dash or “dah” (–) — three time units long
3. inter-element gap between the dots and dashes within a character — one dot duration or one unit long
4. short gap (between letters) — three time units long
5. medium gap (between words) — seven time units long[1]
    If W is the word/min (10-20), dot period T is 1200 / W

![](https://d396qusza40orc.cloudfront.net/microcontroleurs/images/morse1.png)

La période _T_, durée d’un _dot_, sert à définir les autres durées. Pour le test, limitons-nous au début du code ASCII. En morse, la lettre _A_ sera naturellement en _0_ dans la table. En ASCII, si on tape _ABC_ avec le programme terminal, on obtient les code _0x41 42 43_ qu’il faut faire correspondre aux entrées _0 1 2_ de la table :

	//              A    B    C    D    E    F    G    H
	TaMorse [] = {0x42,0x81,0x85,0x61,0x20,0x84,0x63,0x80};

![](https://d396qusza40orc.cloudfront.net/microcontroleurs/images/morse2.png)

![](https://d396qusza40orc.cloudfront.net/microcontroleurs/images/morse3.png)

Le programme attend une lettre du terminal (lettre-CR, voir doc) et joue les flash ou sons. Les espaces entre lettres et mots peuvent être ignorés.

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex5-1-1) !



## Ex 5.4-1 Lire 4 poussoirs sur une entrée analogique

On peut lire plusieurs poussoirs en n’utilisant qu’une entrée analogique. Plusieurs câblages sont possibles. La solution proposée pour 4 poussoirs est spécialement simple à comprendre, son inconvénient éventuel est de consommer 1 mA en permanence ( la
    pull-down ne consomme rien).

![](https://d396qusza40orc.cloudfront.net/microcontroleurs/images/pouss4.png)

Evidemment, pour lire les poussoirs, faut tester les tensions...

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex5-4-1) !



## Ex 5.5-1 Affichage de nombres

Si on exécute `Serial.print (3,BIN)` : le résultat est 11. On aimerait bien voir `00000011`. C’est logique de supprimer les _0_ non significatifs dans les nombres décimaux, mais pas pour le binaire et l’hexa.

Ecrire la fonction `PrintBin ()` qui affiche le nombre binaire complet. Elle est facile à programmer: on regarde un bit après l’autre en décalant à gauche et on affiche en ASCII _0_ ou _1_. Le code de _0_ est _'0'_, mais le terminal travaille avec des chaînes de caractères ASCII: il faut écrire `Serial.print ("0")`.

Programmez et testez aussi la fonction `PrintHex ()`, qui vous fera réfléchir comment convertir les chiffre 4 bits: `0000 ⇒ '0' 1010 ⇒ 'A'`

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex5-5-1) !

Les corrigés compatibles *Arduino* se trouvent dans [Sem5SolutionsArduino.zip](http://www.didel.com/coursera/Sem5SolutionsArduino.zip)



# Semaine 4

Voici les fichiers **LearnCbot** de la semaine :

- pour *Arduino* :  [LC4.pdf](http://www.didel.com/coursera/LC4.pdf)
- pour *Energia/MSP430* : [LC4-msp.pdf](http://pyr.ch/coursera/LC4-msp.pdf)

Les programmes correspondant sont disponibles sous forme de fichier zip :

- pour *Arduino* :  [LC4ino.zip](http://www.didel.com/coursera/LC4ino.zip)
- pour *Energia/MSP430* : [LC4msp.zip](http://pyr.ch/coursera/LC4msp.zip)

Voici également des exercices de la session 2013, qui pourrons aussi vous aider à préparer les devoirs et l’évaluation :

## Ex 4.1-1 Cadre lumineux d’une enseigne

Une enseigne publicitaire est entourée d’un cadre réalisé avec des segments lumineux, selon le croquis suivant :

![](https://d396qusza40orc.cloudfront.net/microcontroleurs/images/CadreEnseigne.png)

On cherche à donner une impression de rotation, en allumant successivement les groupes de segments suivants :

	- S0, S1, S3, S4, S6, S7, etc (011011011011)
	- S1, S2, S4, S5, S7, S8, etc (110110110110)
	- S0, S2, S3, S5, S6, S8, etc (101101101101)

On dispose d’une procédure `AfficheCadre (unsigned int segments)` qui affiche les segments _S0_ à _S11_ selon les bits _0_ à _11_ du paramètre “segments” et d’une procédure `AttenteMs (int ms)`.

Ecrivez la boucle principale du programme qui fait “tourner” le cadre dix fois dans un sens, puis dix fois dans l’autre sens.

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex4-1-1) !



## Ex 4.2-2 Détection de sortie par l’entrée d’un super-marché

Afin de lutter contre le vol à l’étallage, la direction d’un super-marché souhaite contrôler que les clients n’utilisent pas l’entrée pour sortir du magasin.

Deux barrières lumineuses vont être installées au niveau de l’entrée, à la même hauteur, distantes l’une de l’autre de 5 cm. Lorsqu’un client entre, la première barrière est coupée, puis la seconde. Si un client passe dans l’autre sens, ce sera le contraire. Un microcontrôleur reçoit les signaux de ces deux capteurs.

Ecrivez le programme pour commander le contact d’un avertisseur sonore durant 5 secondes lorsqu’un client sort du magasin par l’entrée.

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex4-2-2) !



## Ex 4.3-1 Automate simple

On a construit une machine avec un moteur et un contact qui se ferme à chaque tour. En pressant sur un bouton on veut que la machine fasse un tour et s’arrête. Vous voulez voir une jolie application ? <http://www.bricobot.ch/kits/Miaou.pdf>

Pour tester le programme, on utilise Pous1 pour démarrer, Led1 pour dire que le moteur tourne et Pous2 comme fin de course.

![](https://d396qusza40orc.cloudfront.net/microcontroleurs/images/Miaou1.png)

Le diagramme des temps montre les états possibles. Il faut tenir compte du fait que le signal Start peut durer plus longtemps que l’action, et le fin de course peut encore être activé après l’arrêt du moteur. Le programme est plus simple si on enlève ces conditions, mais ce n’est que de 2 instructions!

![](https://d396qusza40orc.cloudfront.net/microcontroleurs/images/Miaou2.png)

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex4-3-1) !



## Ex 4.3-2 Commande d’un monte-charge

La cabine d’un monte charge entre deux étages est actionné par un moteur, dont la commande dispose des entrées `Monte` et `Descend`.

Deux interrupteurs de fin de course `FinHaut` et `FinBas` détectent les positions des étages.

Deux poussoirs `AppelHaut` et `AppelBas` permettent de faire monter et descendre la cabine.

Le programme qui commande le monte charge est une machine d’état.

Voici une proposition de marche à suivre pour faciliter le dessin du graphe d’état :

- établissez la liste des entrées et des sorties
- définissez des états pour le système
- notez les valeurs de sortie pour chaque état
- repérez les transitions entre les états
- notez les conditions associées à ces transitions.

Une fois le graphe d’état établi, écrivez le programme par étapes successives, en suivant les information du graphe d’état :

- définissez les états (par un enum)
- associez les valeurs des sorties
- écrivez les transitions

Il reste à s’occuper de l’implémentation matérielle des entrées et des sorties.

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex4-3-2) !



## Ex 4.4-1 Dé électonique

Les 7 LEDs d’un dé sont câblées comme ci-contre pour utiliser un nombre minimum de sorties du microcontrôleur. Ces sorties sont les pins _0_ à _4_ du `PORTC` *Arduino* _(pins 14,15,16,17,18)_ ou pour *MSP* les pins _0_ à _4_ de `P2`. Créer la table correspondant aux 6 états du dé et écrire le programme qui “lance le dé” toutes les secondes. Evidemment, on ne va pas définir les pins indépendamment. Dans le setup on dit que les bits _0_ à _3_ sont en sorties, et on copie les configurations de bits correspondant aux faces du dé directement sur le _port C_.

![](https://d396qusza40orc.cloudfront.net/microcontroleurs/images/DeJdn.png)

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex4-4-1) !



# Semaine 3

Vous trouvez ci-dessous des exercices libres qui ont été proposés pour notre premier MOOC en octobre 2013. Ils complètent notre suite d’exemples et exercices à tester avec le LearnCbot ou un câblage équivalent. Voici les fichiers de la semaine :

- pour *Arduino* :  [LC3.pdf](http://www.didel.com/coursera/LC3.pdf)
- pour *Energia/MSP430* : [LC3-msp.pdf](http://pyr.ch/coursera/LC3-msp.pdf)

Ces documents doivent être lus attentivement pour se familiariser avec la richesse du C.

Les programmes sont disponibles sous forme de fichier zip :

- pour *Arduino* :  [LC3ino.zip](http://www.didel.com/coursera/LC3ino.zip)
- pour *Energia/MSP430* : [LC3msp.zip](http://pyr.ch/coursera/LC3msp.zip)

Ils vous permettent de passer plus de temps sur leur lecture et vos essais de modification. Prenez plaisir à vos progrès !

## Ex 3.1-1 Variables et arithmétique

Nous avons les variables suivantes :

	byte x=8; byte y=3; byte z=250;

Rappels:

- le type byte (ou unsigned char) est un nombre entier de 8 bits, capable de prendre des valeurs de 0 à 255.
- l’opération / est la division entière
- l’opération % est le reste de la division entière

**Question :** Calculez :

1. `x + y`
2. `y + z`
3. `x + z`
4. `y - x`
5. `x / y`
6. `y / x`
7. `z / y`
8. `z % y`

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex3-1-1) !



## Ex 3.1-2 Autre manière d’écrire la boucle `for`

Quand on écrit une boucle : for (i=0; i&lt;10; i++) {instructions} on passe trois paramètres au compilateur :

- l’instruction d’initialisation (ici `i=0;`) : cette instruction qui va s’exécuter une et une seule fois au début
- la condition d’exécution de la boucle (ici i&lt;10;) : un test, répété à chaque début de boucle, qui permet de savoir si elle doit s’exécuter (ou s’arrêter)
- l’instruction “d’incrémentation” (ici `i++`) : ce terme est inexact. Il s’agit souvent d’une incrémentation, mais c’est simplement une instruction qui s’exécute à la fin de chaque itération de la boucle.

Ecrivez cette même action sans le mot `for` !

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex3-1-2) !



## Ex 3.1-3 Utilisation de l’instruction `break`

L’instruction `break;` permet de sortir d’un `{ bloc d’instructions }` avant sa fin. Il est souvent utilisé comme une sortie “en catastrophe”. Par exemple, on peut lancer un clignotement dans une boucle `while ()` et en sortir avec un break; après le 3e clignotement :

	// extrait du programme Solution310.ino
	byte i=0;
	while (1)
	  Led1On; delay (500);
	  Led1Off; delay (500);
	  if (i >= 3) { break; }
	  i++;
	}
	delay (1000); // on continue avec d’autres instructions ou on recommence dans la boucle principale.

**Question :** Ecrire un programme qui attend une pression sur Pous1 et sort de l’attente en clignotant si on ne presse pas dans les 5 secondes. On doit donc presser régulièrement pour réinitialiser un compteur qui augmente avec une période de
    50ms.

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex3-1-3) !



## Ex 3.2-1 Test de tous les ports d’un microcontrôleur

Ecrivez un programme qui teste toutes les sorties d’un microcontrôleur en les faisant clignoter : tous les bits pairs allumés, puis tous les bits impairs.

Ecrivez-le pour un *AVR* ou un *MSP430G*.

Rappels :

- Le microcontrôleur *ATmega328* de l’*Arduino* dispose des port `B`, `C` et `D`. Les bits pairs sont `PB0`, `PB2`, `PB4`, ..., `PC0`, `PC2`,... et les bits impairs `PB1`, `PB3`,..., `PC1`, `PC3`... Les registres de direction s’appellent `DDR` (`DDRB`, `DDRC`, etc.) et les registres de sortie s’appellent `PORT` (`PORTB`, `PORTC`, etc.)
- Le microcontrôleur *MSP430G2553* du *LaunchPad* dispose des ports `P1` et `P2`. Les registres de direction s’appellent `P1DIR` (et `P2DIR`) et les registres de sortie s’appellent `P1OUT` (et `P2OUT`).

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex3-2-1) !



## Ex 3.2-2 Charlie-plexing

Comment faire lorsqu’on a 6 LED, qu’on doit pouvoir en allumer une parmi les 6 et qu’on ne dispose que de 3 pattes sur un microcontrôleur ?

Il existe une solution astucieuse, connue sous le nom de Charlieplexing !

Voici le schéma :

![](https://d396qusza40orc.cloudfront.net/microcontroleurs/images/charlieplexing-3.png)

Ecrivez les deux instructions qui allume la LED 5 sans en allumer d’autre.

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex3-2-2) !



## Ex 3.3-1 Champs de bits

Ecrivez d’une manière plus lisible l’instruction suivante : DDRC = 0b01000001;

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex3-3-1) !



## Ex 3.4-1 Combien de 1 ?

On doit compter le nombre de 1 dans un mot de 16 bits. L’algorithme consiste à tester si le bit en extrémité vaut _1_ ou _0_, puis à décaler.

Indiquez le résultat par des clignotements. Tester des données en :

- binaire : mot = 0b0000 1000 0100 1100; résultat 4
- hexadécimal : mot = 0x 3C41; résultat 6
- décimal : mot = 1025; résultat 2 // le compilateur converti en binaire, pas en BCD.

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex3-4-1) !



## Ex 3.5-1 Clignoter toujours plus

On vient de voir une boucle `for` pour clignoter un certain nombre de fois. Ecrivez une fonction qui permettra d’écrire dans le programme :

	ClignoterNfois (nombre de fois);

Utiliser cette fonction dans un programme qui clignote une fois, deux fois, etc et s’arrête à _5_ fois.

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex3-5-1) !



## Ex 3.5-2 Clignoter davantage en accélérant

Cette fonction a un 2e paramètre qui est la vitesse. Testez avec un programme qui à la fois augmente le nombre de clignotement et la fréquence, avec une durée de salve constante. On voit donc le produit de la période par le nombre d’impulsions est constant.

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex3-5-2) !



## Ex 3.5-3 Mesurer une durée

On veut une fonction qui mesure la durée pendant laquelle on presse sur un poussoir. La durées sera en unité de 50ms, mais on essayera des valeurs plus faibles jusqu’à être perturbé par les rebonds de contact. Pour tester, écrire le programme qui allume
    la Led1 si on est très rapide, et la Led2 si on est lent.

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex3-5-3) !



_Les exercices libres de la semaine 1 sont [plus bas](#sem1)._

# Semaine 2

Vous trouvez ci-dessous des exercices libres. Comme le passage des vidéos à ces exercices a été jugé trop brutal, décourageant plusieurs étudiants, nous avons été amenés à écrire une série de documents détaillant les notions essentielles et s’appuyant sur des exemples progressifs à vérifier avec du matériel, le LearnCbot (ou un câblage équivalent sur Breadboard, décrit dans la dernière vidéo). La semaine dernière, nous vous avions déjà proposé :

- pour *Arduino/Diduino* : [LC1.pdf](http://didel.com/coursera/LC1.pdf)
- pour *Energia/MSP430* : [LC1-msp.pdf](http://pyr.ch/coursera/LC1-msp.pdf)

Assurez-vous d’avoir compris le premier document ! Vous êtes encouragés cette semaine à travailler avec le second document :

- pour *Arduino/Diduino* : [LC2.pdf](http://didel.com/coursera/LC2.pdf)
- pour *Energia/MSP430* : [LC2-msp.pdf](http://pyr.ch/coursera/LC2-msp.pdf)



## Ex 2.2-1 Microprocesseur et microcontrôleur

**Question :** Quelle est la différence entre un microcontrôleur et un microprocesseur ?

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex2-2-1) !



## Ex 2.3-1 Microcontrôleurs 8-16-32 bits

Dans une application qui nécessite une bonne précision de calcul, on doit effectuer plusieurs fois par seconde quelques calculs arithmétiques avec des nombre de 32 bits.

**Question :** Est-ce qu’on est obligé alors de choisir un microcontrôleur 32 bits ?

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex2-3-1) !



## Ex 2.3-2 Fréquence et puissance de calcul

**Question :** Si la fréquence d’un microcontrôleur est supérieure à celle d’une autre microcontrôleur, peut-on dire alors que sa puissance de calcul est supérieure ?

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex2-3-2) !



## Ex 2.4-1 Programmation en *C/Arduino* : clignoter pendant que l’on presse

Un poussoir actif a zéro est câblé sur la pin 4. Une Led sur la pin 5. Si on presse (statique), la Led doit clignoter à 2 Hz (période 500 ms).

Cherchez par vous-même à écrire le programme. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex2-4-1) !



## Ex 2.4-2 Programmation en *C/Arduino* : allumer 2 secondes quand on presse

Si on presse (dynamique), le programme doit allumer la Led pendant 2 secondes. Tester en pressant plus ou moins vite.

Cherchez par vous-même à écrire le programme. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex2-4-2) !



## Ex 2.4-3 Programmation en *C/Arduino* : Un poussoir pour 2 leds

On a un poussoir et deux leds. Le poussoir a une action quand on presse. Si on presse, la Led1 change d’état. Si on presse et seulement si la led1 es allumée, la Led 2 change d’état.

Ecrire le programme et dire ce que l’on a programmé.

Cherchez par vous-même à écrire le programme. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex2-4-3) !



## Ex 2.4-4 Programmation en *C/Arduino* : Deux poussoir pour une leds

Le poussoir Pous1 doit allumer la Led. Le poussoir Pous2 doit l’éteindre. On va reconnaître la bascule RS.

Cherchez par vous-même à écrire le programme. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex2-4-4) !



## Ex 2.5-1 Programmation d’un compteur up/down

On a une variable `byte compteur;` dont on va modifier la valeur avec deux poussoirs qui agissent statiquement. On ne sait pas encore comment afficher cette valeur, mais pour avoir une idée, on allume la led pour les
    valeurs impaires. Un clignotement de la led indique que le compteur augmente ou diminue (rajouter des leds si vous voulez).

Quand on pèse sur Pous1 et on maintien pressé (action statique), le compteur augmente chaque 0.2 seconde, mais se bloque à 7, led allumée puisque c’est impair.

Quand on pèse sur Pous1 et maintien pressé, le compteur décompte et se bloque à zéro, led éteinte.

Cherchez par vous-même à écrire le programme. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex2-5-1) !



## Ex 2.5-2 Estimation de la durée de la fonction *Arduino* `Map ()`

La fonction *Arduino* `map()` doit faire des multiplications et division. Quel est son temps de calcul ?

On met cette fonction dans une boucle exécutée 10’000 fois (max 30000 en 16 bits signés). On mesure la période entre deux basculements de la led. Si la fonction dure 100 microsecondes, la période est de 1 secondes. Ecrire le programme et dire quelle
    est la durée de la fonction map().

Cherchez par vous-même à écrire le programme. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex2-5-2) !



# Semaine 1

Nous vous proposons cette semaine quelques exercices sur l’électronique. L’introduction au langage C se fera la semaine prochaine. Vous pouvez déjà faire quelques pas en programmation en suivant le premier volet de nos exercices :

- Pour *Arduino* :  [LC1.pdf](http://www.didel.com/coursera/LC1.pdf)
- Pour *Energia/MSP430* : [LC1-msp.pdf](http://pyr.ch/coursera/LC1-msp.pdf)

Le devoir de programmation de la semaine vous demande de montrer que vous avez un environnement *Arduino* ou *Energia* opérationnel. Toutes les indications se trouvent dans la page “Devoirs de programmation”, en cliquant sur “View instructions”.



Voici donc quelques exercices sur l’électronique. Nous sommes conscients qu’ils seront trop difficile pour ceux qui n’ont aucune connaissance préalable en électronique et qu’ils seront trop simples pour ceux qui sont déjà électroniciens. Nous espérons qu’ils seront malgré tout utiles à certains. Mais la maîtrise de ces exercices n’est pas nécessaire pour la suite du MOOC !



[English translation](http:///www.pyr.ch/Coursera/EnW1FreeEx.pdf)

## Ex 1.2-1 : Détecteur de gel

Le montage suivant, alimenté en 5 V, permet de réaliser un détecteur de gel :

![](https://d396qusza40orc.cloudfront.net/microcontroleurs/images/transistor-ctn.png)

Il utilise une thermistance. Ce composant a une résistance variable en fonction de la température. Un transistor est utilisé pour amplifier le signal de la thermistance. Il est utilisé en “tout ou rien” : tant que la résistance est trop élevée pour que le transitor conduise, la LED est éteinte. Mais dès que la thermistance atteint une résistance suffisamment faible pour que la tension de seuil du transistor soit atteinte, le transistor va conduire et la LED s’allumer.

On considère que le transistor a un gain important et qu’on peut donc négliger le courant de base dans les calculs. Le composant noté CTN est une thermistance dont le coefficient de température est négatif. Sa résistance (donnée en kOhm) varie avec le température selon la courbe suivante :

![](https://d396qusza40orc.cloudfront.net/microcontroleurs/images/thermistance.gif)

**Question :** Quel valeur doit-on donner à la résistance R pour que le détecteur avertisse du risque de gel vers 1 ºC ?

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex1-2-1) !



## Ex 1.3-1 : Logique à transistors

**Question :** Quelle est la fonction logique réalisée par ce montage ?

![](https://d396qusza40orc.cloudfront.net/microcontroleurs/images/D3q1.gif)

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex1-3-1) !



## Ex 1.4-1 : Schéma du OU-exclusif

Voici la table de vérité de la fonction OU-exclusif :

| A | B | S |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |


**Question :** Dessinez le schéma logique correspondant.

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex1-4-1) !



## Ex 1.4-2 Diagramme temporel

**Question :** Donnez la table de vérité du système combinatoire décrit par ce diagramme temporel.

![](https://d396qusza40orc.cloudfront.net/microcontroleurs/images/diagramme-temp-ex.png)

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex1-4-2) !



## Ex 1.5-1 Machine d’état

**Question :** Etudiez la réalisation d’un compteur-décompteur par 5. Vous pouvez successivement :

- dessiner le schéma-bloc du système, avec ses entrées et ses sorties
- dessiner le graphe d’état
- réfléchir au nombre de bascules nécessaires
- dessiner et remplir la table de vérité du système combinatoire
- écrire les équation du système combinatoire.

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex1-5-1) !



## Ex 1.6-1 Conversion décimal-binaire

**Question :** Convertissez en binaire les nombres décimaux suivant : `5`, `12`, `63`, `257`, `1280`

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex1-6-1) !



## Ex 1.6-2 Conversion binaire-Hexadécimal

**Question :** Convertissez en hexadécimal les nombres binaires suivant : `0b00110111`, `0b01011111`, `0b1110010011011001`, `0b101111001`

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex1-6-2) !



## Ex 1.6-3 Conversion BCD-décimal

**Question :** Convertissez en décimal les nombres BCD suivant : `0010001101011001` et `1110010011011001`

Cherchez par vous-même la réponse. Ensuite, vous pourrez voir le [Corrigé](/microcontroleurs-004/wiki/view?page=corr-ex1-6-3) !





program jeu_Oie;

uses crt;

//BUT : Jouer au jeu de l'oie seul
//ENTRÉES : Touche Entrée
//SORTIES : Le nombre de la case
{
VAR
dice,jcase: ENTIER

CONST
depart<-0 :ENTIER
fin<-66 :ENTIER
double<-9 :ENTIER
ndouble<-63 :ENTIER
crane<-58 :ENTIER

DEBUT

ECRIRE "Pressez Entrée pour commencer le jeu"
LIRE
dice<-0   //Mise à zéro du dé
jcase<-0   //Mise à zéro de la case
ECRIRE "Pour le début du jeu, vous commencez à la case Départ"

REPETER ECRIRE "Appuyez sur Entrée pour continuer"
	LIRE
	ECRIRE "Lancez les dés !"
	dice<-aleatoire(2,12)
	ECRIRE "Les dés ont roulés ",dice
	jcase<- jcase + dice
	ECRIRE "Vous êtes tombé sur la case ", jcase

	SI (jcase MOD double=0) ET (jcase<>ndouble) ALORS //Si on tombe sur une case oie
		jcase <- dice+case  //...les dés sont doublés
		ECRIRE "Vous êtes tombé sur une case Oie. Vous dés sont doublés et allez à la case", case
	FINSI

	SI (jcase=crane) ALORS
		jcase=0
		ECRIRE "Vous retournez à la case départ ! Quel dommage !"
	FINSI

	SI (jcase=fin) ALORS
		jcase<-(jcase-(jcase-fin))
		ECRIRE "Vous allez à la case", jcase
	FINSI
JUSQU'A (place=fin)
ECRIRE "GG, VOUS AVEZ GAGNER !"

FIN.
}
CONST

depart=0;
fin=66;
double=9;
ndouble=63;
crane=58;

VAR

jcase, dice : INTEGER;


BEGIN

clrscr;

writeln ('Pressez Entree pour commencer le jeu');
readln;
dice:=0;   //Mise à zéro du dé
jcase:=0;   //Mise à zéro de la case
writeln ('Pour le debut du jeu, vous commencez à la case Depart');

REPEAT 
	writeln ('Appuyez sur Entree pour continuer');
	readln;
	writeln ('Lancez les des !');
	Randomize;
	dice:= random(11)+2;
	writeln ('Les des ont roules ', dice);
	jcase:= (jcase + dice);
	writeln ('Vous etes tombe sur la case ', jcase);

	IF ((jcase MOD double=0) AND (jcase<>ndouble)) THEN //Si on tombe sur une case oie
		BEGIN
			jcase := (dice+jcase);  //...les dés sont doublés
			writeln ('Vous etes tombe sur une case Oie. Vos des sont doubles et allez a la case ', jcase);
		END;

	IF (jcase=crane) THEN
		BEGIN
		jcase:=0;
		writeln ('Vous retournez a la case depart ! Quel dommage !');
		END;

	IF (jcase>fin) THEN
		BEGIN
			jcase:= fin*2-jcase;
			writeln ('Vous allez a la case', jcase);
		END;

UNTIL (jcase=fin);
writeln ('GG, VOUS AVEZ GAGNER !');

END.
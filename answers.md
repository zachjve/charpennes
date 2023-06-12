12 key : e4599fa9-1cc4-4916-a394-ce455a954d86

J'ai utiliser l'outil "gobuster" avec cette commande : gobuster vhost --useragent "PENTEST" --wordlist "/path/to/new/wordlist.txt" --url http://hackycorp.com pour brutforce le virtualhost.

J'ai trouver une wordlist sur internet et je l'ai duplique en rajoutant .hackycorp.com comme ceci : awk '{print $0".hackycorp.com"}' /path/to/original/wordlist.txt > /path/to/new/wordlist.txt

J'ai eu en retour : 
Found: ADMIN.hackycorp.com Status: 200 [Size: 108]
Found: admin.hackycorp.com Status: 200 [Size: 108]
Found: Admin.hackycorp.com Status: 200 [Size: 108]

J'ai donc : curl -H "Host: admin.hackycorp.com" http://hackycorp.com et j'ai trouvé la clef.




13 key : 29e5c97c-7230-46ae-937c-6c56ff33b84f

script 13.txt




14 key : 9f883f22-6ea5-4631-bbe8-95841ad63f56

dig TXT key.z.hackycorp.com




15 key : e5fce970-6d94-43c1-bdd5-a06c2b235f9c

Avec cette commande : dig NS z.hackycorp.com, j'ai compris que le serveur DNS pour "z.hackycorp.com" est lui-même donc j'ai fais le transfert : dig AXFR z.hackycorp.com @z.hackycorp.com




16 key : b55b45a8-63b1-42f7-bd12-a36219ff883d

La commande dig : dig AXFR @z.hackycorp.com int




17 Voici le retour de la version bind que j'ai : 

;; ANSWER SECTION:
version.bind.		0	CH	TXT	"9.9.5-3-Ubuntu"

J'ai pu y avoir accès grace à cette commande dig : dig @z.hackycorp.com version.bind chaos txt




18 key : Hacky Dev (d0fad5ef-ebb2-467c-8868-34e3cf4878b4)

Suffit d'aller sur le repo test1 : https://github.com/hackycorp/test1




19 key : 80cb2045-c8bf-4357-8931-a28dd0f3fbb9 
En effet hackycorpdev possede un autre repo publique que je peux explorer sur github on peut trouver dans un fichier TEST un key qui correspond sans doute a des infos sensibles qui ne devrait pas etre sur github.



20 key : 9590c69b-f9d0-469d-9475-827bf0e1126e
Lorsque je git clone le repo et que j'analyse avec git log les commit on trouve une adresse laisse par l'autheur :

commit 98b4472d5e46af145968345b262bc930c4b8c6e3
Author: Hacky Dev <9590c69b-f9d0-469d-9475-827bf0e1126e@hackycorp.com>
Date:   Wed Nov 18 10:49:08 2020 +1100

21 key : a60b4aee-642a-483b-9262-ccfc2ed46f0d
Pareil je git clone le repo et sur la branche "test" on trouve un fichier KEY 

22 key : 3ee505c2-8aa9-4d5e-810e-921778dce1e6
git clone puis git log -p | grep '^-' et je trouve un fichier Key.
Et avec tig on trouve encore plus rapidement la clef.

23 key : 5c75cfe9-52dd-475b-8cfa-7ffc492abeca
Je pense qu'il y a une erreur de frappe c'est pas tic dans l'enonce mais tig qu'il faut utiliser pour analyser les commit docn en parcourant les commit rapidement avec tig je trouve cette clef.

24 key : e94ab8a5-b0c1-4559-8bc7-cae2e53b10e0
J'ai utiliser : curl http://assets.hackycorp.com/key.txt

25 key : d6b75269-97a3-44de-be32-fff0dd55e7ef
En parcourant les fichier de script et en faisant ctrl f pour rechercher la clef on tombe finalement dessus comme attendu.q/:



Faire linkedin learning

https://roadmap.sh/backend

Objectif avoir le referentiel et les modules associe pour revoir les competences aquises afin d'etre pret pour le dossier de validation et monter en competence. 
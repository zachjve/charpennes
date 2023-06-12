12 key : e4599fa9-1cc4-4916-a394-ce455a954d86

J'ai utiliser l'outil "gobuster" avec cette commande : gobuster vhost --useragent "PENTEST" --wordlist "/path/to/new/wordlist.txt" --url http://hackycorp.com pour brutforce le virtualhost.

J'ai trouver une wordlist sur internet et je l'ai duplique en rajoutant .hackycorp.com comme ceci : awk '{print $0".hackycorp.com"}' /path/to/original/wordlist.txt > /path/to/new/wordlist.txt

J'ai eu en retour : 
Found: ADMIN.hackycorp.com Status: 200 [Size: 108]
Found: admin.hackycorp.com Status: 200 [Size: 108]
Found: Admin.hackycorp.com Status: 200 [Size: 108]

J'ai donc : curl -H "Host: admin.hackycorp.com" http://hackycorp.com et j'ai trouvé la clef.

13 

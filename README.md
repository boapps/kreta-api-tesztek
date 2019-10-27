# kreta-api-tesztek
A krétások elkezdtek blokkolni/lassítani olyan lekérdezéseket, amiket nem a saját fejlesztésű eKréta ellenőrzűjük küld.
Néha egyáltalán nem jön válasz (asszem 104-es hibakód), néha meg fél perc egy lekérdezés.

A blokkolás/lassítást úgy oldották meg, hogy a UserAgent header-t figyelik és ha az a olyan, mint a hivatalos appé, akkor engedik teljesen a lekérdezést.

Egy héttel ezelőtt (okt. 18-án) írtam nekik e-mailt ezzel kapcsolatban, de még nem válaszoltak. A saját weboldalukon még azt írják, hogy engedik a nem hivatalos alkalmazások fejlesztését illetve korábban e-mailben is ezt mondták.

Amíg nem sikerül rendezni a helyzetet, úgy döntöttem, hogy ezt a "hibát" én "kijavítom"

Írtam egy scriptet, ami letesztel néhány lehetséges header-t és ezt ide közzé is teszem, talán később még mást is rakok ide.

Az aktuális nem blokkolt headert a következő api-ból lehet lekérni: https://www.e-szivacs.org/mirror/settings.json

Most úgy tűnik, hogy header nélkül is menne, de régen nem ment, úgyhogy nem ajánlom a használatát.

"Kreta.Ellenorzo"                                       > Blokkolva
"Kreta.Ellenorzo/2.9.4.2019101401"                      > Blokkolva
"Kreta.Ellenorzo/2.9.4.2019101401 (Android; G8341 0.0)" > Működik
SEMMI                                                   > Működik (most)

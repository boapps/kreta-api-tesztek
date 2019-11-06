# kreta-api-tesztek
A krétások elkezdtek blokkolni/lassítani olyan lekérdezéseket, amiket nem a saját fejlesztésű eKréta ellenőrzűjük küld.
Néha egyáltalán nem jön válasz (asszem 104-es hibakód), néha meg fél perc egy lekérdezés.

A blokkolás/lassítást úgy oldották meg, hogy a UserAgent header-t figyelik és ha az a olyan, mint a hivatalos appé, akkor engedik teljesen a lekérdezést.

~~Egy héttel ezelőtt (okt. 18-án) írtam nekik e-mailt ezzel kapcsolatban, de még nem válaszoltak.~~ A saját weboldalukon még azt írják, hogy engedik a nem hivatalos alkalmazások fejlesztését illetve korábban e-mailben is ezt mondták.

A krétások ma válaszoltak, szerintük nem kéne másolni az UserAgentüket és az apiKey-t is tilos használni.

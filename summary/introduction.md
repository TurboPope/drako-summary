Die Integration von immer mehr mobilen Endgeräten in das Leben jedes Menschen ist eine große Herausforderung für die drahtlose Kommunikation dar.

**Mobilität** kann meinen: **Benutzermobilität** und **Gerätemobilität**. Die Begriffe **Wireless** und **mobil** sind nicht synonym, *aber die Beispiele hier zu sind Mist*.

Gewöhnlicher Weise sind mobile Endgeräte mit einer **infrastructure**-Verbindung an ein größeres, hierarchiches Netzwerk angebunden (z.B. Telekommunikationsnetzwerke, Broadcastnetzwerke, Sattelitennetzwerke, lokale Netze). Es gibt jedoch auch so genannte **ad-hoc**-Netze, bei denen mehrere Endgeräte ein kleines, abgeschlossenes Netzwerk mit einander bilden . Es wird unterschieden zwischen **single-hop ad-hoc**-Netzwerken, bei denen alle Geräte direkt mit einander verbunden sind (z.B. Bluetooth), und **multi-hop ad-hoc**-Netzwerken, bei denen eine komplexere Gliederung vorliegt und in denen Geräte nicht unbedingt *direkt* mit einander verbunden sein müssen (z.B. Wireless Sensor Networks).

Drahlose Netzwerke bringen im Vergleich zu drahtgebundenen Netzwerken einige Probleme mit sich:

* Höhere Fehlerraten durch Interferenzen
* Restriktivere Regulierungen der Frequenzbereiche
* Niedrigere Übertragungsraten
* Höhere Verzögerungen, größere Schwankungen
* Geringere Sicherheit gegenüber Abhören, aktive Attacken
* Stets geteiltes Medium

Relevante Anwendungen drahtloser Kommunikation sind natürlich ständige Verbindung mit dem Internet und Mobiltelefonie, aber auch Radios in Autos, GPS und intervehikuläre Kommunikation. Außerdem kann sie feste Infrastuktur in schwer zugänglichen Gebieten oder Kriesengebieten ersetzen.


# Geschichte der drahtlosen Kommunikation

Am Anfang hat man sich ganz schön angestellt und hat mit Flaggen rumgehampelt (**Semaphore**) oder hat eroberte Städte abgefackelt um Rauchsignale zu versenden. Nachdem man dann ein bisschen was über Physik und vor allem Wellen gelernt hatte, wurde um 1900 zum ersten mal drahtlos **telegraphiert**.

Das Ganze wurde dann schnell kommerzialisiert und 1958 wurde in Deutschland das **A-Netz** gebaut, das ziemlich mies gewesen sein muss. Daher baute man schnell (auch in anderen Ländern) weitere Netze, bis auffiel, dass man vielleicht zusammen an so etwas arbeiten sollte, so dass 1982 mit der **GSM-Spezifikation** begonnen wurde, mit dem Ziel ein europaweites Netz zu bauen. Das dauerte wohl einigen Leuten zu lange, also baute man erst noch 1986 das **C-Netz**, nur um 1992 dann doch mit GSM loszulegen und **D-Netze** und das **E-Netz** zu bauen.

1997 wird **Wireless LAN** Standart und bis 2006 verkompliziert sich die Sache für Anwender mit Begriffen wie **GPRS**, **UMTS**, **3G** und **HSDPA**. In 2010 endet unsere Reise mit **LTE** weil die Vorlesungsfolien von 2012 sind.


# Vereinfachtes Referenzmodell

1. Anwendungsschicht
2. Transportschicht
  * Staukontrolle, Flusskontrolle
  * Dienstequalität
3. Netzwerkschicht
  * Adressierung, Wegewahl, Endgerätlokalisierung
  * Handover
4. Sicherungsschicht
  * Authentifizierung
  * Medienzugriff
  * Multiplexing
  * Medienzugangskontrolle (*???*)
5. Bitübertragungsschicht
  * Verschlüsselung
  * Modulation
  * Interferenzen (*Ja, die werden hier erzeugt**)
  * Dämpfungen
  * Frequenzen (*Auch die werden hier hergestellt*)

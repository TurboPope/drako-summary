Medienzugriffsverfahren aus der drahtgebundenen Kommunikation können nicht ohne weiteres übernommen werden. CSMA/CD kann aufgrund des **Hidden Terminal Problem** manche Kollisionen nicht feststellen und verhindert aufgrund des **Exposed Terminal Problem** manchmal unnötig Übertragungen.

![Hidden Terminal Problem Beispiel](/img/hidden-terminal.png)

![Exposed Terminal Problem Beispiel](/img/exposed-terminal.png)

Die bereits vorgestellten Multiplexing-Verfahren können hier eingesetzt werden, um den Medienzugriff zu steuern.


# Space Division Multiple Access (SDMA)
Joa man benutzt halt gerichtete Antennen oder Sektorantennen.


# Frequency Division Multiple Access (FDMA)
Jedes Gerät bekommt ein oder mehrere Frequenzbänder zugewiesen.


# Time Division Multiple Access (TDMA)

## Clock-Sync und Inter Frame Spacing
**Clock Drift** tritt auf, wenn das Timing nicht perfekt stimmt und führt zu Überschneidungen beim senden. Die Lösung: **Clock-Sync**. Über Timestamps oder einen "Beacon"-Koordinator werden Akteure synchronisiert.

**Varying Delays** bezeichnen variierende **Propagation Delays** (Ausbreitungsverzögerung) oder Verzögerungen durch überlange Bearbeitungszeit (**Processing Delay**). Die Lösung: Zwischen Zeitslots (Frames) kleine Puffer lassen (**Inter Frame Spacing**).

## Statisches TDMA
Bezeichnet TDMA in seiner Reinform.

## Carrier Sense Multiple Access (CSMA)
Kann man machen, aber es ist bei drahtloser Kommunikation nicht möglich gleichzeitig auf dem Kanal zu hören uns zu senden. Deswegen müssen **Request To Send (RTS)**-Nachrichten benutzt werden.

Festzustellen, ob ein Kanal frei ist, ist nicht trivial, da immer Rauschen vorhanden ist. Kann man aber gut durch einen Threshold oder durch Scannen nach **Outliers** (*nicht ganz klar wie das geht*) herausfinden.

## Aloha/Slotted Aloha
**Aloha**: Jeder sendet wann er will. **Slotted Aloha**: Jeder sendet in einem beliebigen Zeitslot. Kollisionen sind an der Tagesordnung, aber damals klang das wohl nach einer guten Idee.

## Demand Assigned Multiple Access (DAMA)
Sender reservieren irgendwie Zeistlots.

Bei **Explizierter Reservierung nach Roberts** streiten sich die Sender während einer Aloha-Phase um Reservierungen, einer der Sender bekommt dann die Reservierung, und darf in der Reserved-Phase senden.

Bei **Impliziter Reservierung** streiten sich die Sender irgendwie um sich wiederholende Zeislots die sie nach erfolgreicher Reservierung so lange behalten, bis sie sie nicht mehr benutzen.

Bei **Reservation TDMA** (*verwirrender Name*) besteht ein Rahmen aus $n$ Minischlitzen und $n \cdot k$ Datenschlitzen. Jeder Sender hat einen festen Minischlitz und darf in diesem $k$ Datenschlitze reservieren. Ungenutzte Datenschlitze können anschließend irgendwie nach [Round Robin](http://userpages.uni-koblenz.de/~mbrack/Dynamic%20Priority%20Round%20Robin.htm) verteilt werden.

## Polling
Eine Zentraleinheit verwaltet den Zugriff und fragt Endgeräte periodisch ab.

## Inhibit Sense Multiple Access (ISMA)
Zentraleinheit oder Empfänger verwendet Busytones und Bestätigungspakete auf einem dafür reservierten Kanal um Zugriff zu koordinieren. Busytones auf anderen Kanälen sind aber unter Umständen problematisch, wenn sie anders Faden als die gesendeten Daten oder Kommunikationen verhindern, die eigentlich unproblematisch wären.

## Multiple Access with Collision Avoidance (MACA)
Benutzt **Request to Send (RTS)**- und **Clear to Send (CTS)**-Pakete mit Senderadresse, Empfängeradresse und Paketgröße zur Kollisionsvermeidung. Hiermit sind Hidden-Terminal und Exposed-Terminal gelöst.

Es muss allerdings ein geschickter **Backoff** nach nicht-erhaltenen CTS eingeführt werden, damit sich RTS nicht dauerhaft gegenseitig blockieren.

*Todo: Vielleicht noch bisschen was über Throughput schreiben.*


# Code Division Multiple Access (CDMA)

* Alle Stationen operieren auf derselben Frequenz und nutzen so gleichzeitig die gesamte Bandbreite des Übertragungskanals
* Signal wird auf der Senderseite mit einer für den Sender eindeutigen Pseudozufallszahl verknüpft (XOR)
* Empfänger kann mittels bekannter Sender-Pseudozufallsfolge und einer Korrelationsfunktion das Originalsignal restaurieren

*Todo: Verstehen warum das funktioniert und warum es praktikabel ist.*

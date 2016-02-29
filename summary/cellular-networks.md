# Zellgeometrie
Idealisierende Annahme: Sender (Basisstationen) sind in Dreiecksstruktur mit immer gleichem Abstand $d$ und immer gleichem Senderadius $r$ angeordnet. Damit ergibt sich ein hexagonaler Bereich um den Sender, in dem ihm jeder Punkt am nächsten ist.

![Rote Punkte: Sender. Tote Linien: Abstände zwischen Sendern. Blaue Hexagone: Sendebereiche](img/cellular-structure.png)

![Celldistance und Cellradius](img/cell-distance-and-radius.png)

Zelldistanz $d$ und Zellradius $r$ stehen in folgendem Verhältnis: $d = \sqrt{3} \cdot r$


# Frequency-Reuse
Jeder Basisstation soll ein Frequenzblock zugeordnet werden. Wenn zwei Basisstationen weit genug von einander entfernt sind, können sie den selben Block benutzen, ohne dass es Inteferenzen gibt. Das ist der Fall wenn wie nicht gegenseitig in ihren Interferenzradien (größer als der Senderadius) liegen.

In einem hexagonalen Zellgitter kann die Distanz zweier Zellen über einen **Zelldistanzvektor** angegeben werden. Es gibt zwei Basisvektoren (eigentlich drei, aber es sind immer nur 2 relevant) die linearkombiniert werden. Für die Positionen der Zellen $C$ und $D$ gilt dann mit Hilfe der Basisvektoren $u$ und $v$:

$$
D = C + i \cdot u + j \cdot v \quad i, j \in \mathbb{Z}
$$

![Zelldistanzvektor. Es ist egal welchen "Pfad" man nimmt.](img/celldistancevector.png)

In der Abbildung ist der Zelldistanzvektor $(i, j) = (4, 3)$.

## Konstruktion
Um ein Frequency-Reuse-Pattern zu bauen zeichnet man zunächst eine Zelle in der Mitte ($C$). Dann wählt man eine weitere Zelle möglichst nahe zur ersten, aber außerhalb des Interferenzradius ($C_1$). Mit Hilfe des Zelldistanzvektors zeichnet man nun 5 weitere Zellen, die zu einander und zu $C$ den gleichen (ggf. rotierten) Zelldistanzvektor haben ($C_2 ... C_5$).

![Konstruktion eines Frequency-Reuse-Pattern: Schritt 1](img/frequency-reuse-pattern-1.png)

Dann weist man den für jede Zelle gleich ihren Nachbarn Frequenzblöcke zu, bis das Muster geschlossen ist.

![Konstruktion eines Frequency-Reuse-Pattern: Schritt 1](img/frequency-reuse-pattern-2.png)

Frequency-Reuse-Pattern können nicht beliebig groß sein, die Anzahl $n$ ihrer Zellen erfüllt immer

$$
n = i^2 + j^2 + (i \cdot j) \quad i, j \in \mathbb{N}
$$


# Übliche Systemfunktionen
Die an realen zellularen Systemen beteiligten Komponenten sind:

* **Mobile Unit (MU)**: Zum Beispiel Handy oder so
* **Base-Station (BS)**: Sendemasten
* **Mobile Telecommunications Switching Office (MTSO)**: Verwaltet eine Region von Base-Stations und ist mit dem Rest des Netzwerks verbunden

Folgende Funktionen kommen üblicher Weise zum Einsatz:

* **Mobile-Unit-Initialization**: Base-Stations broadcasten Setup-Signal. MU wählt periodisch BS mit bestem Empfang
* **Mobile-Originated-Call**: MU prüft auf BS-Forward-Channel ob ein Channel für einen Anruf frei ist. Sendet dann Verbindungsanfrage via BS an MTSO.
* **Paging**: MTSO beauftragt BS mit Zielgerät das Zielgerät mit Broadcast über Anruf zu informieren
* **Call-Accepted**: MU erkennt Paging-Signal, akzeptiert und MTBS kooriniert dann den Anruf
* **Ongoing-Call**: Der Anruf ist aufgebaut und die teilnehmenden MUs kommunizieren via Base-Stations und MTSO.
* **Handoff**: Teilnehmer wechselt Zelle und das Gespräch wird weiter über neue BS geführt

Wann ein Handoff stattfindet kann über verschiedene Parameter entschieden werden, der wichtigste ist die Signalstärke. Um nicht fehlerhaft oder zu oft zu wechseln muss hier mit Schwellwerten und/oder Hysteresis (so tun als ob ein Signal schwächer ist als es ist) gearbeitet werden.

**Sendeleistungskontrolle** ist ein Verfahren um die Sendeleistung dynamisch an die Gegebenheiten anzupassen, um temporäre Pfadverluste zu kompensieren und Interferenzen zu minimieren. Zwei Techniken: **Open-Loop** (MU misst Signal) und **Closed-Loop** (BS misst Signal).


# Ausbreitungsmodelle
Das **Okumura/Hata Ausbreitungsmodell** gibt einen geschätzten Pfadverlust an, basierend auf:

* Trägerfrequenz
* Höhe der BS
* Höhe der MU
* Distanz zwischen BS und MU
* Einem Korrekturfaktor für die Umgebung


# Traffic-Engineering
Sind die mittlere Anzahl an Anrufen pro Minute $\lambda$ und die mittlere Bedienzeit pro erfolgreichem Anruf $h$ gegeben, kann die **Verkehrsintensität** $A$ berechnet werden:

$$
A = \lambda \cdot h \quad [Erlang]
$$

**Erlang** ist die magische Einheit für Verkehrsintensität, *das muss man so hinnehmen*. Ein Beispiel: Durchschnittlich 20 Anrufe pro Minute, durchschnittlich 3 Minuten Dauer:

$$
A = 20 \cdot 3 = 60 \ Erlang
$$

Hat ein System eine Kapazität von $N$ Kanälen ist die mittlere Auslastung $\rho$

$$
\rho = A / N
$$

Die mittlere Auslastung im Beispiel oben wäre bei $N = 120$ Kanälen $50\%$, bei $N = 60$ Kanälen $100\%$.


# Beispiel: GSM


# Beispiel: UMTS

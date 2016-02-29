# Zellgeometrie
Idealisierende Annahme: Sender (Basisstationen) sind in Dreiecksstruktur mit immer gleichem Abstand $d$ und immer gleichem Senderadius $r$ angeordnet. Damit ergibt sich ein hexagonaler Bereich um den Sender, in dem ihm jeder Punkt am nächsten ist.

![Rote Punkte: Sender. Tote Linien: Abstände zwischen Sendern. Blaue Hexagone: Sendebereiche](/img/cellular-structure.png)

![Celldistance und Cellradius](/img/cell-distance-and-radius.png)

Zelldistanz $d$ und Zellradius $r$ stehen in folgendem Verhältnis: $d = \sqrt{3} \cdot r$


# Frequency-Reuse
Jeder Basisstation soll ein Frequenzblock zugeordnet werden. Wenn zwei Basisstationen weit genug von einander entfernt sind, können sie den selben Block benutzen, ohne dass es Inteferenzen gibt. Das ist der Fall wenn die Zellen, die von ihrern Interferenzradien (größer als der Senderadius) berührt werden, sich nicht überschneiden.

In einem hexagonalen Zellgitter kann die Distanz zweier Zellen über einen **Zelldistanzvektor** angegeben werden. Es gibt zwei Basisvektoren (eigentlich drei, aber es sind immer nur 2 relevant) die linearkombiniert werden. Für die Positionen der Zellen $C$ und $D$ gilt dann mit Hilfe der Basisvektoren $u$ und $v$:

$$
D = C + i \cdot u + j \cdot v \quad i, j \in \mathbb{Z}
$$

![Zelldistanzvektor. Es ist egal welchen "Pfad" man nimmt.](/img/celldistancevector.png)

In der Abbilddung ist der Zelldistanzvektor $(i, j) = (4, 3)$.


# Übliche Systemfunktionen


# Ausbreitungsmodelle


# Traffic-Engineering


# Beispiel: GSM


# Beispiel: UMTS

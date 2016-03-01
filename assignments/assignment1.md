# Blatt 1

## Aufgabe 1

**a)** Es geht von einer Sinuskurve immer mehr zu einer Sägezahnkurve.

**b)** Zwischen 1 und -1, wobei je größer $k$ ist, desto mehr nährt sich die Kurve an eine mit nur diesen beiden Werten an.

**c)** Aufgrund der harten, kalten Realität.

**d)** Folgende Effekte:

**Form:** Das Signal kann z.B. rauschen und dadurch ungenau werden.

**Amplitude:** Das Signal kann abschwächen und die Amplitude dadurch sinken.

**Bandbreite:** Durch die oben genannten Effekte kann die verfügbare Bandbreite sinken, da der Empfänger unter Umständen die Bits nicht mehr außeinanderhalten kann.

**Phase:** Die Phase kann sich verschieben (Dopplereffekt).


## Aufgabe 2

**a)** Seien $a\%$ der Antenne ist als Richtung designiert. Insgesamt strahlt die Antenne dann mit $20 dB \cdot a\%$.

**b)** Man nehme die **Friis-Freiraum-Gleichung** und ersetze das riesige Teil in Klammern mit $A$, weil der Pfadverlust gegeben ist:

$$
P_R = P_T \cdot G_R \cdot G_T \left( \frac{\lambda}{4\pi d^2} \right)^2 = P_T \cdot G_R \cdot G_T \cdot A
$$

Und setze die Werte ein:

* Sendeleistung $P_T = 10 dBm$

* Empfänger-Gain $G_R = 1$

* Sender-Gain $G_T = 20 dB$

* Pfadverlust $A = 60dB$.

Todo: keine Ahnung wie man die Einheiten aus den dB rausfrimelt, dass man am Ende da $\frac{W}{m^2}$ hat.

$$
P_R = 10 dBm \cdot 1 \cdot 20 dB \cdot 60 dB = ???
$$

**c)** Falls der Gain $> 1$ ist dann ja, weil es wird reinmultipliziert.

**d)** Weil die Einheiten nunmal so funktionieren. Bei $dBm$ geht es um Milliwatt, bei $dB$ nur um ein Verhältnis.

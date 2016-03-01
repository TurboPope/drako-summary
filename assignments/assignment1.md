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

* Empfänger-Gain $G_R = 0 dB$

* Sender-Gain $G_T = 20 dB$

* Pfadverlust $A = 60dB$.

Also wird das Signal mit $10 dBm$ um $60 dB$ gedämpft und um $20 dB$ verstärkt. Obwohl oben in der Formel multipliziert wird, ignoriert man das mal kurz weil $dB$-Magie und ändert es einfach in $+$ und $-$ um, keine Ahnung warum:

$$
(10 - 60 + 0 + 20) dBm = -30 dBm
$$

**c)** Falls der Gain $> 1$ ist dann ja, weil es wird reinmultipliziert.

**d)** Weil die Einheiten nunmal so funktionieren. Bei $dBm$ geht es um Milliwatt, bei $dB$ nur um ein Verhältnis.


## Aufgabe 3

Hier braucht man die folgende Formel:

$$
c = v \cdot \lambda
$$

* Lichtgeschwindigkeit: $c = 3 \cdot 10^8 \frac{m}{s}$

* Frequenz $f$ in $Hz$

* Wellenlänge $\lambda$ in $m$

**a)** Man formt die Formel um:

$$
c = f \cdot \lambda \Leftrightarrow \lambda = \frac{c}{f}
$$

Und setzt ein:

$$
\lambda = \frac{3 * 10^8 \frac{m}{s}}{868 MHz} \approx 0.35 m
$$

**b)** Wieder umformen:

$$
c = f \cdot \lambda \Leftrightarrow f = \frac{c}{\lambda}
$$

Und einsetzen:

$$
f = \frac{3 * 10^8 \frac{m}{s}}{6 cm} \approx 5 GHz
$$

**c)** Da es eine lambda/4-Antenne ist, gilt $\lambda = 4x$. Nach obiger Formel ist die Frequenz:

$$
f = \frac{3 * 10^8 \frac{m}{s}}{4x} \approx \frac{7.495 \cdot 10^7 \frac{m}{s}}{x}
$$


## Aufgabe 4

**a)** Einsetzen:

$$
G = e_a \left( \frac{\pi f d}{c} \right)^2 = 0.6 \left( \frac{\pi \cdot 4 GHz \cdot 0.6 m}{3 * 10^8 \frac{m}{s}} \right)^2 = 379
$$

In mysteriösen Dezibel: $10 \cdot log_{10}(379) \approx 25.8 dB$

**b)** Noch ne Runde:

$$
G = 0.6 \left( \frac{\pi \cdot 4 GHz \cdot 0.9 m}{3 * 10^8 \frac{m}{s}} \right)^2 = 852.7
$$

Also $10 \cdot log_{10}(852.7) \approx 29.31 dB$


## Aufgabe 5

Nach Friis ist $A = \left( \frac{\lambda}{4 \pi d^2} \right)^2$.

Aus der gegebenen Tabelle geht hervor dass $-6 dB = 10^\frac{-6}{10} \approx 0.25 = \left( \frac{\lambda}{4 \pi km^2} \right)^2$.

Daraus kann man jetzt die Wellenlänge $\lambda$ herausfrimeln:

$$
0.25 = \left( \frac{\lambda}{4 \pi km^2} \right)^2
$$
$$
\Leftrightarrow 0.25 = \frac{\lambda^2}{16 \pi^2 km^4}
$$
$$
\Leftrightarrow 1 = \frac{4 \lambda^2}{16 \pi^2 km^4}
$$
$$
\Leftrightarrow 1 = \frac{\lambda^2}{4 \pi^2 km^4}
$$
$$
\Leftrightarrow \frac{1}{\lambda^2} = \frac{1}{4 \pi^2 km^4}
$$
$$
\Leftrightarrow \lambda^2 = 4 \pi^2 km^4
$$
$$
\Leftrightarrow \lambda = 2 \pi km^2
$$

**distance (km)** | **wireless (dB)** | **wired(dB)**
----------------- | ----------------- | ---------
**1**             | **-6**            | **-3**
**2**             | Todo              | -6
**4**             | Todo              | -12
**8**             | Todo              | -24
**16**            | Todo              | -48

# Elektromagnetische Wellen

Bei der Ausbreitung einer **elektromagnetischen Welle** von einer Antenne trennt die **Frauenhofer-Distanz** das **Nahfeld** vom **Fernfeld** und ist gegeben durch $distance = \frac{2d^2}{\lambda}$ mit Antennen-Durchmesser $d$ und Wellenlänge $\lambda$.

Das E-Feld der Welle kann dargestellt werden durch

$$
s(t) = \frac{\alpha}{d} \cdot sin(2 \pi f t) \quad \left[ \frac{V}{m} \right]
$$

* $\alpha$ Amplidtude
* $d$ Antennen-Durchmesser
* $f$ Frequenz der Welle
* $t$ Zeit

*TODO: Humane Beschreibung der Formel*

Die **Wellenlänge** $\lambda$ einer Welle lässt sich aus der Frequenz $f$ und der Lichtgeschwindigkeit (Konstante) $c$ berechnen:

$$
\lambda = \frac{c}{f} \quad \left[ m \right]
$$

Die **übertragene Leistung** einer Welle in einem Qudadratmeter der Oberfläche der Ausbreitungskugel $P$ ist proportional zur Distanz zur Antenne $d$:

$$
P \propto \left( \frac{\alpha}{d} \right)^2 \quad \left[ \frac{W}{m^2} \right]
$$

**Kraft** (force) gibt an, wie fest an etwas gezogen wird. Kraft beschleunigt Dinge mit Masse. Kraft wird in **Newton** angegeben, oder in SI-Basiseinheiten:

$$
1N = 1 \frac{kg \cdot m}{s^2}
$$

*Um einen 100 Gramm schweren Apfel zu heben muss eine Kraft von 1 Newton aufgewendet werden.*

**Energie** (energy) bezeichnet Potential, etwas zu tun, und ist definiert als die Energie die umgesetzt wird, wenn ein Objekt entgegen einer Kraft von 1 Newton 1 Meter bewegrt wird. Sie wird in **Joule** angegeben, oder in SI-Basiseinheiten:

$$
1J = 1 N \cdot m
$$

*Um den Apfel 1 Meter hoch zu heben muss 1 Joule umgesetzt werden.*

**Leistung** (power, $P$) bezeichnet eine über Zeit umgesetzte Leistung und wird in **Watt** angegeben, oder in SI-Basiseinheiten:

$$
1W = 1 \frac{J}{s}
$$

*Will man den Apfel innherhalb 1 Sekunde die 1 Meter hoch heben, muss man 1 Watt leisten.*

Elektrische **Ladung** wird in **Coulomb** ($C$) angegeben.

**Stromstärke** (current, $I$) gibt an, wie viel Ladung pro Sekunde durch einen Leiter bewegt wird, und wird in **Ampere** angegeben.

$$
1A = 1\frac{C}{s}
$$

**Spannung** (voltage, $U$) gibt an, wie viel Energie nötig ist, um eine Ladung innerhalb eines elektrischen Feldes zu bewegen. Sie wird in **Volt** angegeben.

$$
1V = 1\frac{J}{C}
$$

Ein elektrischer **Wiederstand** (resistance, $R$) gibt an, welche Spannung erforderlich ist, um eine bestimmte Stromstärke durch einen Leiter fließen zu lassen, und wird in **Ohm** angeben.

$$
1\Omega = 1\frac{V}{A}
$$

Die Leistung $P$, die in einem elektrischen System verrichtet wird, kann durch angelegte Spannung $U$ und Stromstärke $I$ berechnet werden:

$$
P = U \cdot I
$$

Ist ein Widerstand $R$ gegeben und soll ein Strom $I$ fließen, ist eine Spannung $U$ nötig:

$$
U = R \cdot I
$$


# Frequenzen und Regulierungen

Die bekanntesten Frequenzbereiche sind:
* **LF - Low Frequency** Langwellen-Radio, $30 kHz$ bis $300 kHz$
* **MF - Medium Frequency** Mittelwellen-Radio, $300 kHz$ bis $3 MHz$
* **HF - High Frequency** Kurzwellen-Radio, $3 MHz$ bis $30 MHz$
* **VHF - Very High Frequency** Ultrakuzwellen-Radio (UKW), $30 MHz$ bis $300 MHz$

Die **ITU-R** ist eine internationale Organisation die Radiofrequenzen vergibt.


# Antennen

**Antennen** befördern oder empfangen Wellenenergie aus dem Raum. Eine **isomorphe Antenne** strahlt Kugelförmig in alle Richtungen, ist aber eine idealisierte Darstellung die man so in der Realität selten findet.

Ein **Radiation Pattern** (Richtdiagramm) ist eine Darstellung der Stärke der Abstrahlung einer Antenne in den Raum, es werden jedoch nicht absulte Werte, sondern das Verhältnis der Werte untereinander dargestellt. Die **Bündelbreite** gibt den Winkel an, an dem nur noch die Hälfte der maximalen Leistung abgestrahlt wird. Der **antenna gain** gibt das Verhältnis der Leistung einer Richtung im Vergleich mit einer isotopischen Antenne an.

Eine reale Antenne ist der **herzsche Dipol**, bei dem sich das Richtdiagramm torusförmig ist.

![Radiation Pattern eines herzschen Dipols](img/radiation-pattern.png)

Weitere wichtige Antennentypen sind **gerichtete Antennen** und **Sektorantennen**.

# Signale

Ein **Transmitter** versendet Daten, ein **Receiver** empfängt sie. Ein **Transceiver** tut beides.

Daten müssen physikalisch dargestellt werden. Dafür müssen sie in ein quasi analoges Signal umgewandelt werden, das heißt, in Wellenform ausgedrückt werden.

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

![Radiation Pattern eines herzschen Dipols](/img/radiation-pattern.png)

Weitere wichtige Antennentypen sind **gerichtete Antennen** und **Sektorantennen**.


# Signale

Ein **Transmitter** versendet Daten, ein **Receiver** empfängt sie. Ein **Transceiver** tut beides.

Daten müssen physikalisch dargestellt werden. Dafür müssen sie vom Transmitter in ein quasi analoges Signal umgewandelt (**moduliert**) werden, das heißt, in Wellenform ausgedrückt werden. Der Reiceiver wandelt (**demoduliert**) sie dann wieder in ihre digitale Form um. Dieser Vorgang geschieht mit Hilfe der **Fourier-Transformation**.


# Signalausbreitung

Ein **Dezibel (dB)** ist eine logarithmische Darstellung zweier gleichartiger Größen und ist definiert durch:

$$
\frac{P_2}{P_1} \quad \left[ dB \right] \quad = 10 \cdot log_{10}\left( \frac{P_2}{P_1} \right)
$$

Das heißt dass beispielsweise das Verhältnis einer Sendeleistung $P_S = 100 W$ zur Empfangsleistung $P_R = 75 W$ ist

$$
10 \cdot log_{10}\left( \frac{75}{100} \right) = 8.75 \quad \left[ dB \right]
$$

Oft gibt es "spezialisierte" Dezibeleinheiten, die sich immer auf eine Bezugsgröße beziehen, in der Vorlesung wird zum Beispiel oft dBm benutzt, es gibt den Leistungspegel an und bezieht sich auf 1 mW.

## Friis-Freiraum-Gleichung

Mit der **Friis-Freiraum-Gleichung** lässt sich die empfangene Leistung $P_R$ bei einer gegebenen Sendeleistung $P_T \left[ W/m² \right]$, Distanz $d \left[ m \right]$, Wellenlänge $\lambda \left[ m \right]$ und den Antenna-Gains $G_R$ und $G_T$ (als Anteile) *im Freiraum* bestimmen:

$$
P_R = P_T \cdot G_R \cdot G_T \left( \frac{\lambda}{4 \pi d^2} \right)^2 \quad \left[ \frac{W}{m^2} \right]
$$

Sind die Antenna Gains nicht in normalen Anteilen gegeben, sondern in Dezibel, lautet die Formel:

$$
P_R = P_T + G_R + G_T + 20log_{10}\left( \frac{\lambda}{4 \pi d^2} \right) \quad \left[ \frac{W}{m^2} \right]
$$

## Pfadverlust

*Todo: Pfadverlust und Log-Normal-Shadowing auseinanderwurschteln*

$$
PL(d) = \alpha \cdot 10 \cdot log_{10}(d) + X_\delta
$$

Log-Normal-Shading:

$$
PL = PL(d_0) + 10 n \cdot log_{10}\left( \frac{d}{d_0} \right) + X_\delta
$$

**Ray-Tracing** ist eine Alternative um Signalausbreitung zu modellieren.

## Two Ray Ground Model

![Two Ray Model aus Wikipedia](/img/tworay.png)

Leider kann ein Signal durch Mehrwegeausbreitung mit sich selbst interferieren. Ein vereinfachtes Modell, das diesen Effekt darstellt, ist das **Two Ray Ground Model** für Pfadverlust. Sender und Empfänger befinden sich im gleichen Abstand über dem Boden und haben den Abstand $d$ zu einander. Ein Signal empfängt der Empfänger direkt und ein Signal wird vorher am Boden (in der Mitte der Antennen) reflektiert. Die beiden Signale überlagern sich beim Empfänger.

Trotz seiner Einfachheit gibt das Modell ziemlich gute Ergebnisse in makrozellulären Systemen wenn die Antennen hoch angebracht sind und Sichtlinie zueinander haben.

Es gibt jetzt irgendwelche komplizierten Formeln um irgendwelche Dinge auszurechnen, aber ich glaube nicht, dass die in der Klausur gebraucht werden.

## Mobilität

**Fading** bezeichnet das abnehmen der Empfangsleistung. **Schnelles Fading** sind kurzzeitige Einbrüche, während **langsames Fading** langsame Veränderungen der durchschnittlichen Empfangsleistung bezeichnet.

Effekte, die das Signal verschlechtern können:

* Shadowing
* Reflection
* Refraction
* Scattering
* Diffraction
* Doppler Shift

# Multipath-Fading

![Raleigh- und Ricean-Verteilung](/img/fading.jpg)

**Ricean Fading** ist ein Fading-Modell für wenn es eine Line of Sight *gibt*. Das Signal, das per LOS übertragen wird, ist signifikant stärker als die anderen Pfade. Es wird **dominanter Pfad** genannt.

**Rayleigh-Fading** ist ein Spezialfall des Ricean Fading, das den Fall *ohne* Line of Sight beschreibt. Hier gibt es keinen dominanten Pfad.

Auch hier gibt es wieder übel komplizierte Formeln mit $e$ und $\sigma$ und Bessel-Funktionen nullter Ordnung der ersten Art, aber ich glaube auch wieder, dass das nicht relevant ist.

# Multiplexing

Um das Übertragungsmedium mehrfach benutzen zu können, kann man die Signale auf 4 "Dimensionen" verteilen.

* **Frequenz-Multiplexing** sendet Signale auf verschiedenen Frequenzen
* **Zeit-Multiplexing** weist jedem Signal einen Zeitslot zu
* **Code-Multiplexing** "charakterisiert" jedes Signal durch einen Code, so dass es auch bei Überlagerung *irgendwie* rekonstruiert werden kann
* **Raum-Multiplexing** meint simpel die räumliche Verteilung der Signale. Wird oft durch eine Zellstruktur realisiert (*dazu später ein eigenes Thema*)

Diese Techniken können mit einander kombiniert werden.


# Modulation

Binäre Daten sollen in analoge Signale umgewandelt werden.

* **Amplitude Shift Keying (ASK)**: Amplituden-Modulation
* **Frequency Shift Keying (FSK)**: Frequenzmodulation
* **Phase Shift Keying (PSK)**: Phasenmodulation
* **Quaternary Phase Shift Keying (QPSK)**: Wie PSK, aber mit mehr als 2 Phasen
* **Quadraturamplitudenmodulation (QAM)**: Kombiniert QPSK und ASK


# Bandspreizverfahren

**Bandspreizverfahren** spreizen ein Signal auf einen Frequenzbereich um gegen schmalbandige Störsignale zu helfen.

Verbreitete Techniken sind:

* **Direct Sequence Spread Spectrum (DSSS)** Das Signal wird mit einer wesentlich längeren, Sender und Empfänger bekannten Chipping-Sequenz xored
* **Frequency Hopping Spread Spectrum (FHSS)** Das Signal springt in einer Sender und Empfenger bekannten Reihenfolge zwischen Frequenzen hin und her


# Codierung

Die **Signal to Noise Ratio (SNR)** gibt das Verhältnis zwischen Empfangsleistung $P_{RX}$ und Rauschleistung $P_0$ beim Empfänger an: $SNR = P_{RX} / N_0$

Mit der **Shannon-Kapazitätsformel** lässt sich die maximale Kanalkapazität $C \ [bps]$ bei gegebener Kanalbandbreite $B \ [Hz]$ und gegebener $SNR$ berechnen:

$$
C = B \cdot log_2(1 + SNR) \quad \left[ \frac{bit}{s} \right]
$$

Zur **Fehlerdetektion** werden dem Signal redundante Informationen hinzugefügt. Im Falle eines Fehlers kann einer Wiederübertragung angefordert werden. Bei drahtloser Kommunikation sind die Fehlerraten höher und die Verbindungen haben eine hohe Latenz, so dass im Fehlerfall unter Umständen viele Wiederübertragungen stattfinden müssen.

Die **Hamming-Distanz** zwischen zwei gleich langen Bit-Sequenzen gibt die Anzahl der paarweise unterschiedlichen Bits an.

Bei **Block-Codes** werden Datenblöcke zu zugehörigen Codewörtern mit möglichst großer Hamming-Distanz umgewandelt. Ein Fehler wird dadurch erkannt, dass ein Codewort empfangen wird, für das es keinen Datenblock gibt. Ein Fehler kann korrigiert werden, indem das empfangene Codewort durch ein existierendes (mögliches) Codewort ausgetauscht wird, das zu ihm die kleinste Hamming-Distanz hat.

## Cyclic redundancy check (CRC)

> A cyclic redundancy check (CRC) is an error-detecting code commonly used in digital networks and storage devices to detect accidental changes to raw data. Blocks of data entering these systems get a short check value attached, based on the remainder of a polynomial division of their contents. On retrieval, the calculation is repeated and, in the event the check values do not match, corrective action can be taken against data corruption. ([From Wikipedia](https://en.wikipedia.org/wiki/Cyclic_redundancy_check))


## Faltungscodes

Jedes Bit (oder jeder Block) aus dem Input wird in ein Codewort umgewandelt, das zusätzlich auch noch eine feste Anzahl vorheriger Inputs mit einbezieht.

![Beispiel für Viterbi-Faltung](/img/viterbi.png)

Ein **Trellis-Diagramm** ist eine Art Zustandsdiagramm über Zeit: Jeder Zustand hat eine Reihe und jede Spalte ist ein Zeitpunkt. Je nach Input (durch unterschiedliche Linien dargestellt) wechselt der Zustand in jedem Schritt (oder auch nicht). *Achtung: Die Beschriftung der Kanten entspricht dem Codewort, der Linienstil dem Input.* Der Dekoder folgt dem Pfad der empfangenen Codewörter durch das Trellis-Diagramm und weiß dann anhand der Linien, was der Input war.

Tritt ein Fehler auf, also ein Codewort, das keine Kante hätte, muss der Dekoder dem Pfad folgen, der für die nachfolgenden Codewörter am wenigsten abweicht. Daher kann er erst Dekodieren, nachdem er ein Fenster vollständig empfangen hat. Das geht zum Beispiel per Hamming-Distanz:

![Beispiel für Korrektur per Hamming-Code](/img/viterbi-decode.png)

1. Startzustand markieren

2. Alle Pfade finden, für die *Gewicht des Vorgängerzustands + Hamming-Distanz zwischen der letzten Kante und der empfangenen Kantenbeschriftung* minimal ist.

3. Falls die Pfade eine erste gemeinsame Kante haben, so ist das der tatsächliche Wert und der Fehler ist korrigiert. Andernfalls ist der Fehler nicht korrigierbar.

TCP wurde im Hinblick auf Staukontrolle entwickelt. Fundamentale Annahme: Segmente gehen in der Regelaufgrund überlasteter Router verloren. Ergo ist es sinnvoll die erzeugte Last über die Sendefenstergröße zu regulieren. Diese Strategie ist suboptimal für drahtlose Kommunikation da bei Drahtlosübertragung Segmente  aufgrund eineskurzzeitigen Übertragungsfehlers verloren gehen (Überlast liegt nicht notwendigerweise vor). TCP-Fenster sind somit in der Regel zu klein und wir bekommen schlechte Performance.

Natürlich möchte man aber nicht das ganze TCP-protokoll im Nachhinein verändern, also gibt es "wireless-TCP"-Protokolle für die drahtlose Kommunikation zwischen den Endgeräten und  Access-Points, die eine Art Adapter für die TCP-Protokolle sind.

Hier ist eine Übersicht die man vermutlich nicht auswendig lernen sollte:


* **Approach**
    * Mechanism
    * Advantages
    * Disadvantages

* **Indirect TCP**
    * splits TCP connection into two connections
    * isolation of wireless link, simple
    * loss of TCP semantics, higher latency at handover
* **Snooping TCP**
    * "snoops" data and acknowledgements, local retransmission
    * transparent for end-to-end connection, MAC integration possible
    * problematic with encryption, bad isolation of wireless link
* **M-TCP**
    * splits TCP connection, chokes sender via window size
    * Maintains end-to-end semantics, handles long term and frequent disconnections
    * Bad isolation of wireless link, processing overhead due to bandwidth management
* **Fast retransmit/fast recovery**
    * avoids slow-start after roaming
    * simple and efficient
    * mixed layers, not transparent
* **Transmission/time-out freezing**
    * freezes TCP state at disconnect, resumes after reconnection
    * independent of content or encryption, works for longer interrupts
    * changes in TCP required, MAC dependant
* **Selective retransmission**
    * retransmit only lost data
    * very efficient
    * slightly more complex receiver software, more buffer needed
* **Transaction oriented TCP**
    * combine connection setup/release and data transmission
    * efficient for certain applications
    * changes in TCP required, not transparent

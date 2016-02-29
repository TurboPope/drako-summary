# Untersuchte Netzstruktur und Problemstellungen

Durch die limitierte Übertragungsreichweite hat ein drahtloses Netzwerk bereits eine implizite Struktur. Um eine Netztwerkstruktur noch weiter zu vereinfachen und somit das **Routing** von Nachrichten zu erleichtern und die Energieeffizienz zu erhöhen, können verschiedene **Topologiekontrollen** zum Einsatz kommen. Die wichtigsten, in dieser Vorlesung teilweise detailliert besprochenen, sind:

* **Neighbor elimination** (Kanten streichen)
* **Backbone construction**
* **Virtual overlays**
* **Relocation**

Ein **Routing-Protocol** gibt an, an welche(n) Nachbarn eine Nachricht weiter geschickt werden muss, damit sie ein Ziel erricht. Sie können **topology-based** (global) oder **geographic** (localized) sein.

Ein **lokaler Algorithmus** (für eine Topologiekontrolle oder ein Routing-Protokol) erreicht ein netzwerkweites Ziel mit (Knoten-)lokalen Entscheidungen, während ein **globaler Algorithmus** Wissen über den Zustand des gesamten Netzwerkes mit einbezieht. Lokale Algorithmen haben folgende Vorteile:

* Resourcen sparen
* Beliebig große Netzwerke ermöglichen
* Besser mit dynamischen Änderungen klar kommen
* Arbeiten besser wenn keine gesamte Sicht auf das Netzwerk verfügbar ist


# Topologie-basierte Routingprotokolle

## Destination-Sequenced Distance-Vector Routing (DSDV)
**DSDV** ist ein proaktives (table-driven) Routing-Protokol. Jeder Knoten hat eine Tabelle in der für jeden Knoten der nächste Hop steht. Gibt es mehrere Wege wird der nächste Hop mit der geringsten Hop-Distanz zum Ziel angegeben. Ändert sich die Topologie wird die Änderung durch das gesamte Netzwerk propagiert. Um dabei veraltete Informationen auszuschließen hat jede Änderungs-Nachricht eine Sequenz-Nummer.

## Optimized Link State Routing (OLSR)
**OLSR** ist ein proaktives (table-driven) Routing-Protokol.

## Ad-Hoc On-Demand Distance Vector Routing (AODV)
**AODV** ist ein reactives (Source-initiated on-demand) Routing-Protokol.

## Dynamic Source Routing (DSR)
**DSR** ist ein reactives (Source-initiated on-demand) Routing-Protokol.


# Geographische Routingprotokolle

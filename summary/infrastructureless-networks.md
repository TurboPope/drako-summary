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
**OLSR** ist ein proaktives (table-driven) Routing-Protokol. Wie DSDV, aber jeder Knoten benutzt nur ein minimal dominating set auf seiner 2-hop Nachbarschaft (minimale Menge an Knoten, die alle nicht-dominating Knoten als Nachbarn haben. Diese Knoten nennt man dann **multihop-relays**). Dies verringert den Aufwand bei Netzwerkänderungen.

## Ad-Hoc On-Demand Distance Vector Routing (AODV)
**AODV** ist ein reactives (Source-initiated on-demand) Routing-Protokol.

*Wird nur mit unverständlichen Bildern erklärt.*

## Dynamic Source Routing (DSR)
**DSR** ist ein reactives (Source-initiated on-demand) Routing-Protokol. Mit dem Sender beginnend broadcasted jeder Knoten ein eine route discovery Nachricht an seine Nachbarn, die alle bisherigen Stationen der Nachricht beinhaltet, den Knoten selbst eingeschlossen. Sobald die Nachricht den Zielknoten kann er eine Antwortnachricht in umgekehrter Reihenfolge schicken, die die Reihenfolge enthält.

![Beispiel zu DSR](/img/dsr.png)


# Geographische Routingprotokolle

## Greedy-Routing und Planar-Graph-Routing
Greedy-Routing wählt euklidisch nächsten Nachbarn zum Ziel als nächsten Hop. Läuft es in eine Sackgasse wird eine Face Routing Recovery aktiviert (siehe [Zusammenfassung zu Lokale Netzstrukturen](https://github.com/turbopope/lonet-wiki/blob/master/datenkommunikation.md#greedy-face-greedy-gfg)).

## Konstruktion von planaren Graphen
> Graph $G$ ist als Zeichnung auf der Ebene gegeben. Gesucht ist ein Teilgraph $H$, der keine schneidenden Kanten enthält. Dieser Graph $H$ wird dann als planar bezeichnet.

Wir wollen einen planaren Graphen erzeugen. Dazu kann man gebrauchen:

* [Unit-Disk-Graph](https://github.com/turbopope/lonet-wiki/blob/master/topologiekontrolle.md#udg-unit-disk-graph)
* [Quasi-Unit-Disk-Graph](https://github.com/turbopope/lonet-wiki/blob/master/topologiekontrolle.md#qudg-quasi-unit-disk-graph)
* [Relative Neighborhood Graph](https://github.com/turbopope/lonet-wiki/blob/master/topologiekontrolle.md#rng-relativer-nachbarschaftsgraph)
* [Gabriel Graph](https://github.com/turbopope/lonet-wiki/blob/master/topologiekontrolle.md#gg-gabriel-graph)
* [Delauney Triangulierung](https://github.com/turbopope/lonet-wiki/blob/master/topologiekontrolle.md#delaunay-triangulierung)

Das klappt zwar nicht immer, aber ein wireless network graph hat eine implizite, gutmütige Struktur.

Darauf aufbauend kann man **Geographic Clustering** machen, wo man ein virtuelles Gitter über den Graphen legt und alle "Kästchen" verbindet, in denen sich benachbarte Knoten befinden.

![Geographic Clustering](/img/geographic-clustering.png)

Ein ähnliches Verfahren ist **K-Hop Clustering** bei dem statt Clustering durch ein virtuelles Gitter *irgend ein* clustering-Algorithmus angewandt wird.

*Warum man clustering machen würde wird in der Vorlesung nicht gesagt.*

## Lokales Multicasting mit MSTEAM und MFACE

Siehe [Zusammenfassung von Lokale Netzstrukturen](https://github.com/turbopope/lonet-wiki/blob/master/datenkommunikation.md#localized-multicasting).

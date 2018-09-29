# Graphen und Netzwerkanalyse

## Topologie

**Topologie**
- Beschreibt die gegenseitige Lage und Anordnung geometrischer Gebilde im Raum
    - Beschreibung der Relationen zwischen elementaren Objekten (Knoten, Kante, Masche)
- charakterisiert nichtmetrische, räumliche Beziehungen zwischen Geoobjekten (Nachbarschaftsbeziehungen)
    - Ermöglicht die koordinatenfreie Speicherung von Objekten
- Invarianz bzgl. Transformationen (Bsp. Luftballon)

**Topologische Invarianten**
- Ein Knoten ist Endpunkt einer Kante
- Zwei Kanten kreuzen sich/ sind kreuzungsfrei
- Ein Punkt liegt im Inneren einer Fläche
- Ein Punkt liegt auf dem Rand einer Fläche
- Eine Fläche hat ein Loch
- Eine Fläche ist zusammenhängend/ nicht zusammenhängend
- Zwei Flächen sind benachbart

**Nicht-topologische Eigenschaften**
- Abstand
- Fläche
- Winkel
- Umfang
- Durchmesser


## Egenhofer Relationen

A disjoint B 
A contains B
A inside B 
A equals B
A touches B
A covers B
A is covered by B
A overlaps B

![Egenhofer Relationen](bilder/egenhofer.png)

Quelle: https://github.com/rugbyprof/4553-Spatial-DS/wiki/Topological-Relationships


## Graphentheorie

- Die Graphentheorie liefert ein mathematisches Fundament für die einheitliche Darstellung und Analyse unterschiedlicher Netzwerke.
- Daher beschränkt sich ein Graph vorwiegend auf die Modellierung von Beziehungen seiner Elemente, der Konnektivität.
- Konnektivität ist eine topologische Eigenschaft

**Graph**
- Ein Graph ist ein Gebilde aus Knoten (nodes) und Kanten (edges)
	- Eine Kante verbindet immer 2 Knoten
	- Diese Knoten sind die Endpunkte der Kante

**Adjazenz**
- Aneinandergrenzen gleichartiger Primitive
	- Z.B. 2 Knoten über eine Kante, 2 Kanten über einen Knoten
- Aneinandergrenzen unterschiedlicher Elemente
	- Z.B. Knote und Kante

**Adjazenmatrix**
- ...

**ungerichteter Graph**
- Es werden lediglich die Verbindungen zwischen den Knoten dargestellt (Verbindungsschema)

**gerichteter Graph**
- Es wird zusätzlich dargestellt, in welcher Richtung Verbindungen zwischen den Knoten bestehen

**gewichteter Graph** (bewerteter)
- Graph, dessen Kanten mit Gewichten bewertet sind (z.B. den Kantenlängen)

**zusammenhängender Graph**
- wenn für zwei beliebige Knoten (mindestens) ein Weg besteht

**vollständiger Graph**
- wenn alle Knotenpaare adjazent sind Schleife eine gerichtete Kante in einem gerichteten Graph, die einen Knoten mit sich selbst verbindet

**Baum**
- schleifenloser, zusammenhängender Graph, in dem je zwei beliebige verschiedene Knoten durch genau einen Weg verbunden sind


## Netzwerkanalyse

**Grundprobleme**

1. Bester-Weg-Problem
2. Bester-Standort-Problem
3. Traveling-Salesman-Problem


## Distanzen in Netzwerken

> Work in Progress

**Distanzfunktionen (Geometrische)**

- Euklidische Metrik (Satz von Pythagoras)
- Cityblockmetrik (N4-Nachbarschaftstyp)
- Schachbrettmetrik (N8-Nachbarschaftstyp)

Was ist die Distanz zwischen 2 Polygonen?

- Minimal
- Zentroid (Schwerpunkt)


Distanzen in Netzwerken (topolog. Graphen)

- Anzahl der Knoten eines Weges in einem Graph
- Summe der Gewichte für Wegkosten auf Kanten zwischen Start- u. Zielknoten


Raster vs. Vektor??

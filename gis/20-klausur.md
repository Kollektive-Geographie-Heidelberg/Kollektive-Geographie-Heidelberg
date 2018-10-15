# Klausur - Themen


## Analyse Vektor

- Puffer
- Thiessen/Voronoi
- Delauny
- Entfernungsmatrix/ Entf.berechnung
- Räumliche Aggregation 
- Geoprozessierung vs. Analyse
- Rubber-Sheeting  

## Analyse Raster 

- Grundlagen Raster/Fernerkundungsdaten: Typen, Aufbau, Werte, 
- Map Algebra, Grundlagen, Längen, Linien/Flächen, Typen der Operatoren
- Nachbarschaften (Bsp. Analyseablauf (Prinzip))


## Räumliche Analysen

- Grundlagen wie in Vorlesung (Grundidee erklären)
    - z.B.  Toblers 1. Gesetz / 1.st Law of Geography, Interpolationsverfahren und Tuningparameter (keine Formeln)
- Unterschied Interpolation Kerndichteberechnung
- Autokorrelation ; Maße für räuml. Autokorrelation, lokale und globale Autokorrelation
- Wie lassen sich Punktmuster beschreiben (Grundidee)
- Beispiele aus Geographie
- Keine Formeln
## Netzwerke, Graphen, Routing

- Typen von Netzwerkanalysen (bester Weg, beste Standorte (unter Nutzung von 
Einzugsgebieten), Idee TSP), 
- GIS-Funktionen f. Netzwerke
- Distanzfunktionen
- Adjazenzmatrix, 
- Kantengewichte
- Idee der individualisierten Routenplanung

NICHT: Qualität von OSM, OSM Anwendungen, Bsp. (OSM) Routing Anwendungen, Exkurse 

## Topolog. Datenstrukturen (Topol./Spagh.)

- Topologische Beziehungen nach Egenhofer (Prinzip der Formalisierung, nicht Tabelle auswendig)
- Prinzip Spaghetti vs. Topolog. Vektordatenstrukturen, Vor-Nachteile, Fehler
- Einfachste Variante Spaghetti-Modell, einfache Verbesserungsmöglk.  
- Idee d. Topolog. Datenstrukturen (welche Informationen müssen wie gespeichert werden) 
    - Knoten, Kanten aus Knoten mit Topologie zu Flächen rechts/links, i.d.R. extra Flächentabelle mit Liste der Kanten, Koordinaten nur bei Punkten/Knoten Rest Exkurs

## Geodatenbanken

- Grundlegende Definitionen 
- Motivation DB
- Funktionalität DB
- GeoDB
- Eigenschaften DB
- Transaktion, ACID
- Relationale DB, Prinzipien (nicht Historie oder Software Marken)
- Suchindex in GeoDB (warum?), Prinzip Quadtree/R-Tree
- Objektrelationale DB (Prinzip)
- Wesentliche Geometrietypen nach Simple Feature Specification (OGC SFS)
- GIS-Analyseoperationen in OGC SFS möglich (welche Type? Keine Syntax)

Nicht: SQL


## Datenmodellierung

- Datenmodellierung, Grundlagen, Phasen
- Grundlagen ER
- Modell, Elemente, Vor-Nachteile, Kardinalitäten,
- Grundlagen bis Aggregation/Generalisierung (Achtung: hier nicht “kartographische Generalisierung“, sondern bei Datenmodellierung)

Nicht: Normalformen, nicht UML


## 3D-GIS

- DGM, DHM, DOM...
- TIN
- Delauny, Voronoi/Thiessen-Analyse
- und Nutzungsmöglk. von DGM-Stadtmodelle Nutzungsmöglkeiten,
- Verfahren zur Erfassung von (3D) Geodaten 
- Räuml. Repräsentationen (3D)
- Typ. Repräsentationen für DGM

NICHT: Spezifika 3D Analyst/ArcScene

ABER: Slope, Aspekt, Contours, Hillshading, Sichtlinien/ Sichtfelder/ Steilster Pfad/ Profile etc. sind allgemeine DGM-Operationen!



## GeoWeb / GDI:

- GDI Formel erläutern können: GDI := Geodatenbasis (NGDB=GBD+GFD+MD) + GI 
‐ Netzwerk + GI-Dienste + Standards
- Geobasisdaten vs. Fachdaten 
- Was ist Inspire
- Wichtigste OGC Web Services: WMS, WMTS, WFS (je min1 Satz Def.)
- Was macht WMS (NICHT AnfrageDetails, Keine Syntax)


## Dasymetric Mapping

- MAUP
- Areal Interpolation (Prinzip, keine Formel)
- Prinzip Dasymetric Mapping

NICHT: GIS Health and Disaster Management


# Geodatenbanken

## Datentypen

**Datentypen von relationalen Datenbanken** (PostgreSQL)

| Name | Beschreibung |
| ---- | ------------ |
| integer | Ganzzahlen |
| double precision (float8) | Gleitkommazahl |
| character varying (varchar)| Zeichenkette (variable Länge) |
| text | Zeichenkette |
| date | Datum |
| timestamp | Datum und Zeit |
| boolean | Boolsche Variable (TRUE/FALSE) |

**Problem**
- Geometrien mithilfe von atomaren Datentypen in einer DB abzuspeichern ist aufgrund der Eigenschaften von Geometrien nicht effizient

**Lösung**
- Geodatenbanken (z.Bsp. PostGis) besitzen spezielle Datentypen für Geometrien


## OpenGIS Simple Feature Specification (OGC)

Simple Feature Access ist eine Spezifikation des Open Geospatial Consortium, welche eine allgemein gültige Architektur für geografische Daten und deren Geometrien definiert.

Die Spezifikation beschreibt einerseits die Speicherung und den Zugriff auf Geometrien und andererseits verschiedene räumliche Operatoren.


### Geometrie Klassenmodell

Folgende instanziierbare Klassen beinhaltet das Modell ([Wikipedia](https://de.wikipedia.org/wiki/Simple_Feature_Access))

- Punkte (Point)
- Linien (LineString)
- Polygone (Polygon)
    - Hierbei sind die Punkte des äußeren Ringes entgegengesetzt dem Uhrzeigersinn (linksdrehend) sortiert.
    - Die Punkte des inneren Ringes (Loch) im Uhrzeigersinn (rechtsdrehend) sortiert
- Mehrere Punkte (MultiPoint)
- Mehrere Linien (MultiLineString)
- Mehrere Polygone (MultiPolygon)
- Sammlung dieser Geometrien (GeometryCollection)


### Repräsentation der Geometrie (Well-known Text (WKT))

Die Well-known-Text-Repräsentation wird vor allem dazu verwendet, um die Geometrie alphanumerisch darstellen zu können ([Wikipedia](https://de.wikipedia.org/wiki/Simple_Feature_Access))

**Punkt**

`Point(10 10)`

**LineString** (Linie mit "Knickpunkten")

`LineString (10 10, 20 20, 30 40)`

**Polygon (Fläche)**

ein Polygon wird von zwei Klammern umschlossen. Polygon ohne Loch:

`Polygon((10 10, 10 20, 20 20, 20 15, 10 10))`

mit einem äußeren Ring und einem inneren Ring (Loch)

`Polygon((0 0, 0 20, 20 20, 20 0, 0 0),(5 5, 5 15, 15 15, 15 5, 5 5))`


**Mehrfachpolygon**

zwei Polygone

`MultiPolygon(((10 10, 10 20, 20 20, 20 15, 10 10)),((60 60, 70 70, 80 60, 60 60 )))`

zwei Polygone, erstes Polygon mit Loch:

`MultiPolygon(((0 0, 0 20, 20 20, 20 0, 0 0),(5 5, 5 15, 15 15, 15 5, 5 5)),((30 30, 30 40, 40 40, 40 30, 30 30)))`

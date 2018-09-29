# Geodatenbanken

Geodatenbanken unterstützen in logischer und interner Schicht räumliche...
- Objekte 
- Abfragen
- Bezugssystemen

Konventionelle Datenbanken können Geodaten nicht effizient verwalten. Daher gibt es für viele Datenbanken Erweiterungen für die Verwaltung von Geodaten.  ([Wikipedia](https://de.wikipedia.org/wiki/Geoinformationssystem#Geodatenbanken))

**Problem**
1. Geometrien mithilfe von atomaren Datentypen in einer DB abzuspeichern ist aufgrund der Eigenschaften von Geometrien nicht effizient
2. Datenbank interne Suchmechanismen mithilfe von Indexstrukturen sind meist auf eindimensionale Daten ausgelegt

**Lösung**
1. Geodatenbanken (z.Bsp. PostGis) besitzen spezielle Datentypen für Geometrien
2. Geodatenbanken nutzen mehrdimensionale (räumliche) Indexstrukturen
    - Oder überführen räumliche Objekte in einen eindimensionalen Raum, sodass herkömmliche Indexstrukturen verwendet werden können

**Indexstrukturen**
- Über grundlegende Dateiorganisationsform hinausgehende Zugriffsstruktur zur Effizienzverbesserung
- Zugriffspfad: Datenstruktur für zusätzliche, schlüsselbasierten Zugriff auf Tupel
- eindimensionale Indexstrukturen
    - B+ Baum
- mehrdimensionale (räumliche) Indexstrukturen
    - Quadtree, R-Tree, GIST


## OpenGIS - Simple Feature Specification (OGC)

Simple Feature Access ist eine Spezifikation des Open Geospatial Consortium, welche eine allgemein gültige Architektur für geografische Daten und deren Geometrien definiert.

Die Spezifikation definiert für DBMS:
- räumliche Datentypen
- räumliche Datenstrukturen 
- räumliche Funktionalitäten


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


### räumliche Funktionen

Siehe auch "PostGIS Special Functions" in der PostGIS Dokumentation: https://postgis.net/docs/PostGIS_Special_Functions_Index.html

**PostGIS Fuctions**
- ST_Area
    - Returns the area of the surface if it is a Polygon or MultiPolygon. 
- ST_Buffer 
    - (T)Returns a geometry covering all points within a given distancefrom the input geometry.
- ST_Centroid
    - Returns the geometric center of a geometry. 
- ST_SRID
    - Returns the spatial reference identifier for the ST_Geometry as defined in spatial_ref_sys table. 
- ...

**Verschneidung**
- Intersection():Geometry
- Union():Geometry
- Difference():Geometry
- SymDifference():Geometry

**Test**
- Equals():Integer
    - Gleichheit mit einer anderen Geometrie
- Disjoint():Integer
    - Menge der gemeinsamen Punkte = 0
- Intersects():Integer
    - Schnitt mit einer anderen G.
- Touches():Integer
    - Berührung mit einer anderen G.
- Crosses():Integer
    - Kreuzung mit einer anderen G.
- Within():Integer
    - innerhalb einer anderen Geometrie
- Contains():Integer
    - Enthält eine andere G.
- Overlaps():Integer
    - Überlappung mit einer anderen G.
- Relate():Integer
    - Beziehung mit einer anderen G.

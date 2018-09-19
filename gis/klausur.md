# Klausur

## WS 12/13

### Fragen

1. Metadaten werden in syntaktische, semantische und pragmatische Metadaten unterteilt. Nennen sie je zwei explizite geographische Beispiele pro Kategorie.
2. Erklären Sie die Begriffe Generalisierung und Aggregation anhand eines Beispiels.
3. Was sind die Qualitätseigenschaften von Geodaten (Van Oort)?
4. Erläutern Sie den Unterschied zwischen DGM, DHM, DOM, DLM, und DKM. Schreiben Sie die Abkürzungen aus.
5. _
    - Nennen Sie 4 Vorteile und 4 Nachteile des Vektor- bzw. des Rasterdatenmodells.
    - Welche Vor- und Nachteile ergeben sich durch Laserscanning erfasste Daten im Raster- bzw. Vektordatenmodell.
6. Nennen Sie die Vor- und Nachteile des Laserscannings.
7. Sie sind Projektleiter einer Firma, die mit der Standortsuche für ein Krankenhaus beauftragt wird. Skizzieren Sie (in Stichworten) kurz die wichtigsten Prozessierungsschritte in ihrem GIS Projekt. (Vereinfachte Darstellung)
8. Einige Parameter können in die individualisierte Routenplanung miteinfließen
    - Wie kann dies am einfachsten geschehen?
    - Nennen Sie 6 derartige Attribute oder Maße.


### Antworten

**1**

1. Semantische Metadaten
    - Beschreibung der verwendeten Symbolik?
2. Syntaktische
    - Zugriffsmechanismen?


**2**

Aggregation und Generalisierung bilden Hierarchien aber:

1. Aggregation bezieht Objekte aufeinander
2. Generalisierung bezieht Klassen aufeinander

![Aggregation-Generalisierung](bilder/aggregation-generalisierung-png)


**3**

- Entwicklung („Lineage“): 
    - die historische Entwicklung eines Datensatzes.
- Vollständigkeit („Completeness“):
    - die Vollständigkeit eines Datensatzes.
- Logische Konsistenz („Logical Consistency“):
    - beinhaltet sowohl topologische Konsistenz als auch die Attributierung und die Beziehungen innerhalb der DB.
- Positionsgenauigkeit („Positional Accuracy“):
    - auf Koordinaten bezogen.
- Zeitliche Genauigkeit („Temporal Accuracy“):
    - „Accuracy of Measurement“: Genauigkeit von Zeitangaben
    - „Temporal Consistency“: Korrekte zeitliche Reihenfolge der Daten.
    - „Temporal Validity“: Gültigkeit der Daten an bestimmtem Zeitpunkt.
- Thematische Genauigkeit („Thematic Accuracy“):
    - die richtige syntaktische Attributierung („Syntactic Accuracy“), als auch die http://giscience.uni-hd.de Abteilung Geoinformatik Institut, korrekte Zuordnung von Geographisches Objekten zu Universität ihren Heidelberg Objektklassen („Semantic Accuracy“).


**4**

- DHM = Digitales Höhenmodell
    - Bei einem DHM muss immer angegeben werden, um welche Oberfläche es sich handelt,
    - z.B. DHM der Vegetationsoberfläche. DHM der Erdoberfläche, DHM der Grundwasserfläche
- DOM = digitale Oberflächenmodell (engl. digital surface model - DSM)
    - repräsentiert die Erdoberfläche (Grenzschicht Pedosphäre -Atmosphäre) samt aller darauf befindlicher Objekte (Bebauung, Straßen, Vegetation, Gewässer usw).
- DLM = Digitales Landschaftsmodell
    - beschreiben die Erscheinungsformen und Sachverhalte der Erdoberfläche durch geotopographische Objekte in unterschiedlichen Detaillierungsgraden.
- DGM = Digitale Geländemodelle 
    - beschreibt die Geländeformen der Erdoberfläche durch eine in Lage und Höhe georeferenzierte Punktmenge
- DKM = Digitales Kartographisches (Landschafts)Modell
    - Teil von ATKIS. Diente dem Ziel verscheidener Maßstäbe automatisch aus dem digitalen Landschaftsmodell abzuleiten.


**5**

- Vektor Vorteile
    - Scharfe Repräsentation der Geometrie
    - Beliebige unregelmäßige Formen und Rauminhalte
    - Kompaktheit: Geringerer Speicherplatzbedarf
    - Maßstabsunabhängig
        - keine Einschränkungen bei Zoom
    - Geeignet für diskrete Phänomene
    - The final advantage of vector data is that topology is inherent in the vector model. This topological information results in simplified spatial analysis (e.g., error detection, network analysis, proximity analysis, and spatial transformation) when using a vector model.
- Vektor Nachteile
    - Komplexität: komplexe Datenstruktur und resultierend daraus komplexe Analysealgorithmen
    - Schwierig zu bearbeiten
    - Weniger geeignet für kontinuierliche Phänomene

- Raster Vorteile
    - Technologisch schnelle und günstige Erfassung von Daten
    - Einfache Datenstruktur und resultierend daraus einfache Analysealgorithmen
        - Einfacher raumbezogener Zugriff (Repräsentation der Position von geographischen Daten)
        - Manche Operationen wie Puffergenerierung und Verschneidung viel einfacher als bei Vektordaten 
    - Geeignet bei kontinuierlicher Phänomenen
- Raster Nachteile
    - große Dateien: großer Speicherplatzbedarf
    - Maßstabsabhängig (Einschränkungen bei Zoom)
    - Probleme in der Beschreibung linienhafter Objekte
    - Weniger geeignet für diskrete Phänomene
    - Es gibt keine Information über die Beziehungen zu Nachbarobjekten


**6**

- Vorteile
    - Ladensweitedatensätze vorhanden
    - aktives System (Laser)?
    - Bodenpunkte möglich (durch Lücken in der Vegetation)
    - Anschauliche Visualisierungen in Verbindung mit Luftbildern
- Nachteile
    - Attributlose Punktwolke
    - Nachträgliche Objektbildung erforderlich


**7**

- Standorteigenschaften:
    - Entfernung zu anderen Krankenhäuser
    - Bevölkerungsdichte
    - Entfernung zu Hauptstraßen


**8**

- Gewichtete Graphen
- _
    1. Grünster Weg
    2. Interessantester Weg (Sight seeing)
    3. Schnellster Weg
    4. Kürzester Weg
    5. Der Weg mit dem grinsten Verbrauch
    6. Der Weg mit dem wenigsten Lärm


## WS 12/13 (zweiter Klausurtermin)

1. Nenne mind. Sechs Qualitätsmerkmale von Metadaten
2. Vergleiche das Spaghetti- und Topologische Datenmodell miteinander
3. Kardinalität von Beziehungen mit jeweils einem bsp aus der Geographie
4. Erkläre Transaktion an eine Beispiel
5. ATKIS und ALKIS im Vergleich (Signaturenkatalog)
6. Nenne 3d Analysefunktionen
7. Standortanalyse für eine Mülldeponie

### Antworten

**1**

siehe Klausur WS 12/13 Aufgabe 3

**2**


## SS 16

1. Geben Sie eine kurze Beschreibung zu den Begriffen thematische, geometrische und topologische Abfragen und formulieren Sie jeweils ein Beispiel.
2. Nennen Sie die Operatoren der geometrischen Verschneidung.
3. Welche zwei Interpretationsmöglichkeiten gibt es für den englischen Begriff „Overlay“ in GIS/Kartographie.
4. Was ist der Unterschied zwischen Geocoding und Reverse Geocoding?
5. Wie lauten die Operationen bei Tomlins Map Algebra?
6. Was ist der Unterschied von objektrelationalen Datenbanken im Vergleich zu relationalen Datenbanken? Was bedeutet das für Geodaten?
7. Was bedeuten die Begriffe Aggregation und Generalisierung (oder was ist der Unterschied zwischen Aggregation und Generalisierung?) und nennen Sie je ein Beispiel.
8. Erklären Sie das Prinzip (?) der „individuellen Routenplanung“.
9. Wie hängen Delaunay-Triangulation und Voronoi-Diagramme miteinander zusammen?
10. Nennen Sie die Qualitätsparameter von Geodaten nach der ISO-Norm 19113. Geben Sie jeweils ein Beispiel dazu an.
11. Was drückt Tobler’s First Law of Geography aus? (Aufgabe aus Gastsitzung)
12. Nennen Sie die Teilgebiete der Räumlichen Analyse. (Aufgabe aus Gastsitzung)
13. Nennen Sie Vor- und Nachteile des Spaghetti-Modells für Vektordaten.


## Weiter Fragen

- Wie sieht die geplottete G-Funktion/ F-Funktion bei einem regelmäßige und geclusterte Punktmuster aus.

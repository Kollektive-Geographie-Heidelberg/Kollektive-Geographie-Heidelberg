# Analysemethoden

## Grundbegriffe

**GIS**
- Geographisches Informationssystem
- a computerized system that can store, retrieve, manipulate, visualize and analyse spatial data
- ermöglicht die Integration unterschiedlicher Arten von Daten in einem System

**Informationssystem**
- Erfassung
- Speicherung
- Aktualisierung
- Verarbeitung
- Wiedergabe

**Datenverarbeitung**
- Erfassung
- Verwaltung
- Analyse
- Modellierung
- Visualisierung

**Geodaten**
- Geometrie
- Topologie
- Thematik
- Dynamik

**Layerprinzip**
- Verschiedene Objekt-klassen oder Variablen in Schichtmodell (Layer) miteinander verknüpft
- jede Geometrietyp (oder Attributklasse) wird in eigener Informationsschicht erfasst

**EVAP**
1. Erfassung
2. Verwaltung
3. Analyse
4. Präsentation

**Raumbezogene Datenanalyse**
1. Geometrische-topologische Verfahren
2. Statistische Analysen und Mengenoperatoren
3. Modellierung und Simulation


## Abfrage

### Auswahloperatoren

**Vergleichende Operatoren**
- = (gleicht)
- > (größer)
- < (kleiner)
- <> (ungleicht)

**Arithmetische Operatoren**
- * (Multiplikation)
- / (Division)
- + (Addition)
- - (Subtraktion)
- exp (Exponent)
- % (Modulo)

**Logische Operatoren**
- AND ∧ (Schnittmenge)
- OR ∨ (Vereinigungsmenge)
- XOR (ausschließende (exklusive) Vereinigungsmenge)
- NOT ¬ (Negation)

![Wikipedia Venn diagram](https://upload.wikimedia.org/wikipedia/commons/a/ae/Vennandornot.svg)


### Abfragevarianten

**Thematische Abfragen**
- Selektiert die Objekte, deren Eigenschaften (Attribute) die gestellten Bedingungen erfüllen. 

**Geometrische Abfragen**
- Selektiert die Objekte, die bestimmte räumliche Bedingungen erfüllen. 

**Topologische Abfragen**
- Selektiert die Objekte, welche die gestellten Bedingungen bezüglich den räumlichen Beziehungen zwischen den Objekten erfüllen.


## Verschneidung

**Verschneidung (Overlay)**
- Gruppe grundlegender GIS-Funktionen, die ein digitales Zusammenführen (Komibination) von Geo- und Attributdaten mehrerer Themenebenen oder Objektklassen ermöglicht ([Geoinformatik - Uni Rostock](http://www.geoinformatik.uni-rostock.de/einzel.asp?ID=1746))


### Boolesche Verschneidung

Verschneidung auf binärer Informationsebene (wahr/falsch). 
Schnell und einfach, aber oftmals ungenügende Abbildung der Realität.

| AND |	Schnittmenge | Ergibt „wahr“ für alle Gebiete, die sowohl das erste als auch das zweite Kriterium erfüllen. | „Welche Gebiete sind bewaldet und steil?“ |
| OR | Vereinigung | Ergibt „wahr“ für alle Gebiete, die entweder das erste oder das zweite Kriterium erfüllen, unabhängig davon, ob sich die Gebiete überlagern oder nicht. Anders ausgedrückt, muss mindestens eines der beiden Kriterien „wahr“ sein. | „Welche Gebiete sind bewaldet oder steil?“ |
| XOR | exklusive Vereinigung | Ergibt „wahr“ für alle Gebiete, die entweder das erste oder das zweite Kriterium erfüllen, aber nicht beide. | „Welche Gebiete sind entweder bewaldet oder steil, aber nicht beides?“ |
| NOT | Negation | Ergibt „wahr“ für alle Gebiete, die das erste Kriterium erfüllen, nicht aber das zweite. | „Welche Gebiete sind bewaldet, aber nicht steil?“ |
> Quelle http://gitta.info/Suitability/de/html/BoolOverlay_learningObject2.html


### Geometrische Verschneidung

**Operationen der Mengenlehre**
- Vereinigung (union)
- Schnitt (intersection)
- Mengen Differenz (set minus)
- Symmetrische Differenz

**Arten der Verschneidung** (unabhängig von der Verwendung von Vektor- oder Rastermodell)
- Punkt-Fläche
- Linie-Fläche
- Fläche-Fläche


### Silver Polygons (Fehlerkorrektur)

Sliver Polygone sind fehlerhaft entstandene Restflächen, die beim räumlichen Verschneiden verschiedener Datenebenen entstehen ([Wikipedia](https://de.wikipedia.org/wiki/Sliver_Polygon))

![Wikipedia](https://upload.wikimedia.org/wikipedia/commons/3/3b/Slivers.PNG)


## Übersicht der Analysemethoden

Vektormethoden nach ESRI:
- Datensätze filtern
    - Manuell
    - Datenbanksystem (DBS)
- Distanz Methoden
    - Pufferzonen/Buffer (Zonen um ein Geoobjekt mit einem definierten Abstand)
    - *Spatial Join*
- Daten aggregieren
    - Dissolve (Nach Attributwerten Geometrien verschmelzen)
    - statistische Auswertung
- Daten verschneiden

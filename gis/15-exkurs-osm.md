# OpenStreetMap

> "[...] OpenStreetMap, the project that creates and distributes free geographic data for the world. We started it because most maps you think of as free actually have legal or technical restrictions on their use, holding back people from using them in creative, productive, or unexpected ways." ([OpenStreetMap Wiki](https://wiki.openstreetmap.org/wiki/Main_Page))

## Datenstruktur

**Grundelemente**
- Punkt oder Knoten (Node)
- Linie oder Weg (Way)
- Attribut (Tag)

**Elemente**
- Nodes
    - Punkt oder Knoten
    - Geometrischer Punkt (durch Koordinaten definiert)
- Ways
    - Aufeinander folgende Geradenabschnitte (segment)
    - Gesamte Linie (way) wird mit einem Attribut (tag) versehen
    - Haben eine Richtung
    - Können geschlossen sein
- Area
    - Eigene geschlossene Linie mit besonderen Atributen
    - (area = yes (explitzit))
    - (building = yes (implizit))
- Relations
    - Beschreibt Beziehungen zwischen Objekten oder ihren Teilen
    - Hat Attribut type = *
    - Attribute (Eigenschaften) eines Objekts
    - Bestehen aus key und value
    - Ein Objekt kann verschiedene tags haben
    - Beispiel: eine Straße
        - highway = residential
        - name = „Hauptstraße“
        - maxspeed = 50


## Datenmodell

| Problem | Vorteil |
| ------- | ------- |
| Freies Tagging Schema | Format auch für Laien leicht zu verstehen |
| Kein Standard | Wichtiges Argument in einem System, dass allen Menschen offen steht!|
| Datenmodell zu einfacht (Probleme zu erwarten) | |


## weiterführende Materialien

**OpenStreetMap Wiki**
- http://wiki.openstreetmap.org/

**European Handbook of Crowdsourced Geographic Information**
- https://www.ubiquitypress.com/site/books/10.5334/bax/

# Geodateninfrastruktur (GDI)

## Begriffe

**Komponenten**
- Nationale Geodatenbasis (NGDB)
    - Geobasisdaten (GBD)
        - grundlegende amtliche Geodaten, welche die Landschaft (Topographie), die Flurstücke und die Gebäude anwendungsneutral beschreiben
    - Geofachdaten (GFD)
        - raumbezogene Daten aus einem Fachgebiet
    - Metadaten (MD)
        - Informationen über andere Daten
- GI-Netzwerke
- GI-Dienste
    - Funktionen, die aus Geodaten kontextabhängige Geoinformationen produzieren
- Standards

**Merkmale**
1. Dezentralisierung von Geodaten und GI-Diensten
2. Technische-organisatorische Infrasturktur
3. Internationale Standards für Schnittstellen (Interoperabilität)
4. Konsensgetriebene Organisationstruktur 


## INSPIRE

**IN**frastrucuter for **SP**atial **I**nfo**R**mation in **E**urope

EU-Beschluss einer Richtlinie zum Aufbau einer europäischen Geodateninfrastruktur innerhabl der EU

**Ziele**
- Interoperabilität durch Spezifikationen
    - einheitliche Geodaten und Metadaten in Europa
    - Verfügbarkeit für verschiedene Nutzergruppen
    - Nutzung internationaler Standards


## Standards

- Open Geospation Consortium (OGC)
    - internationales Konsortium aus Behörden, Industrie und Universitäten
- International Organizatin for Standardization (ISO)
    - offizielle Standardisierungsorganisation
    - in Deutschland durch DIN vertreten
    - GIS-Bereich: Arbeitsgruppe (TC) 211
- CEN/ DIN
    - im GIS-Bereich sind Normen durch ISO-Normen abgelöst


### Open Geospatial Consortium (OGC)

Das [OGC](http://www.opengeospatial.org/standards) ist ein internationales Konsortium aus Behörden, Industrie und Universitäten. Das OGC hat bereits zahlreiche Standards veröffentlicht (Z.Bsp. OpenGIS Web Services (OWS)).

**OpenGIS Web Services (OWS)**
- Web Feature Servie (WFS)
    - Schnittstelle zum Abrufen von Geodaten über das Internet
    - beschränkt sich auf Vektordaten, wie sie in der Datenbank abgelegt worden sind
- Web Map Service (WMS)
    - Schnittstelle zum Abrufen von Auszügen aus Landkarten über das Internet
    - visualisiert (Zuschneidung und inhaltliche Aufbereitung) Karten aus Rasterdaten oder Vektordaten
    - gibt meist Raster-Grafikformate zurück

![Wikipedia - WFS](https://upload.wikimedia.org/wikipedia/commons/9/9b/WFS.png)

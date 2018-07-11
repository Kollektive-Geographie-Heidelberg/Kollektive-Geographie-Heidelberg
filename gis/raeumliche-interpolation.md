# Räumliche Interpolation

## Varianten lokaler Interpolation

linear
gekrümmt

**Nachbarschaft (räumlich)**

- k-nächste Nachbarn
- distanzbasiert
- k-nächste Nachbarn je Quadrant

Es existieren weitere Nachbarschaftskonzepte
- Topologische Nachbarschaft
- Interaktion
- konzeptionelle oder soziale Distanz


**Klassifikation von Interpolationsverfahren**

- Global - Modell berücksichtigt alle Punkte
- Lokal
    - nur Werte in der "Nachbarschaft" werden berücksichtigt

- Exakt
    - Beobachte Werte werden exakt getroffen (falls Feature oder feindes Raster)
- Nicht exakt

- Deterministisch
    - keine Information über den Fehler
- Stochastisch
    - probalistische Schätzgröße


## Bekannte Optionen

### Dreiecksvermaschung

- ...


### Thiessen Polygone/ Voronoi Diagram

- Jeder Punkt erhält den Wert seines nächsten Nachbarn zugeordnet
- Harte Übergänge

![Thoessen-Polygon-Wikipedia](https://de.wikipedia.org/wiki/Voronoi-Diagramm#/media/File:Thiessen-Polygon.svg)


**Natürliche Nachbarn Interpolation**

- Thiessen Polygone für alle Beobachtungen
- Verschneiden mit Thiessenpolygonen ...


### Inverse-Distance-Weighted-Interpolation (IDW)

Inverse Distance Weighting (IDW) bezeichnet eine Interpolationsmethode, der die Annahme zugrunde liegt, dass die punktuell gemessenen raumbezogenen Daten in Abhängigkeit von der Distanz im Raum gewissen Ähnlichkeiten in den Werten aufweisen. Bei der IDW wird der Wert an einem nicht beobachteten Punkt z(u0) durch ein gewichtetes Mittel der benachbarten gemessenen Werte der Beobachtungsvariable geschätzt. Die Gewichte des dabei verwendeten linearen Schätzers sind proportional zu den Inversen des Abstands die zwischen dem unbekannten Punkt und dem verwendeten gemessenen Punkt. ([Geoinformatik - Uni Rostock](http://www.geoinformatik.uni-rostock.de/einzel.asp?ID=-1611270911))

- Alle Beobachtungen in der Nachbarschaft gehen in die Berechnung ein
- Abnahme des Gewichtes mit der Distanz

$ Formel $

- Parameter1
- Paramet2
- ...
- p
    - Power
    - hoher Wert -> Übergang zu Thiessen Polygone/ Voronoi Diagram
- n
    - Anzahl von Nachbarn
    - Mehr Nachbarn berücksichtigt -> glattere Oberfläche
- r
    - Radius


**Einbeziehung von Covarianz** (Mit Einfluss der Geländehöhe)

- ...


### Kriging - Geostatistik

Überbegriff für ein Set von verschiedenen Methoden. 

http://wiki.gis.com/wiki/index.php/Kriging


**Ablauf (Schematisch)** zur Gewichtsbestimmung

- ...

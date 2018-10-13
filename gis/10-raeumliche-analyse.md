# Räumliche Analyse - Interpolation

## Begriffe

***Interpolation***
- Eine Klasse von mathematischen Problemen und Verfahren
- Zu gegebenen diskreten Daten (z. B. Messwerten) soll eine stetige Funktion (die sogenannte Interpolante oder Interpolierende) gefunden werden, die diese Daten abbildet ([Wikipedia](https://de.wikipedia.org/wiki/Interpolation_(Mathematik))

***Räumliche Interpolation***
- Vom Punkt (oder Linie) in die Fläche
- Eine flächenhafte Aussage aus eine Stichprobe generieren
- Die Oberflächeninterpolationswerkzeuge bilden aus Referenzpunktwerten eine kontinuierliche (oder vorhergesagte) Oberfläche [ArcGIS - Tools](https://desktop.arcgis.com/de/arcmap/10.3/tools/spatial-analyst-toolbox/an-overview-of-the-interpolation-tools.htm)

***Lineare räumliche Interpolation***
- Linearkombination der Werte der Beobachtungen
- Summe der Gewichte ergibt 1

***Toblers 1. Gesetz***
- "Everything is related to everything else, but near things are more related than distant things"

***Nachbarschaften***
- k-nächste Nachbarn
- distanzbasiert
- k-nächste Nachbarn, Je Quadrant
- weitere Konzepte
    - Topologische Nachbarschaft
    - Interaktionen (Austausch von Gütern, Informationen, ...)
    - Konzeptionelle oder soziale Distanz


## Klassifikation von Interpolationsverfahren

- Global
    - Modell berücksichtigt alle Punkte
- Lokal
    - nur Werte in der „Nachbarschaft“ werden berücksichtigt

- Exakt
    - Beobachte Werte werden exakt getroffen (falls Feature oder feines Raster)
- Nicht-Exakt
    - Vorhergesagte Werte stimmen nicht mit den beobachteten überein

- Deterministisch
    - keine Information über den Fehler
- Stochastisch
    - probabilistische Schätzgröße


## Interpolationsverfahren

### Dreicksvermaschung (Triangulated Irregular Network (TIN)

Dreiecksvermaschungen (TIN – Triangulated Irregular Network) verbinden die gemessenen Geländepunkte mit einem Netz von Dreieckskanten. Die Geländeoberfläche wird durch ein Dreieckspolyeder approximiert. Gebräuchlich für topographische Anwendungen ist die modifizierte Methode nach Delaunay, die als Zwangsseiten Geländelinien berücksichtigen kann. Dies ist aus morphologischen Gründen notwendig. Dreiecksvermaschungen werden z. B. verwendet, wenn gemessene DGM eine inhomogene Punktverteilung aufweisen. Dies ist z. B. bei digitalisierten Höhenlinien oder Echolotprofilen der Fall. Durch die lineare Verbindung der gemessenen Punkte können in diesen Fällen Artefakte weitgehend vermieden werden ([Spektrum](https://www.spektrum.de/lexikon/kartographie-geomatik/digitale-gelaendemodellierung/972))

***Dreieckskriterium***
- Der Umkreis eines Dreiecks umschließt keinen weiteren Punkt
	- Aus einem einfachen Fall von vier Punkten sind zwei Triangulationen möglich: Welches soll gewählt werden?

***Weitere Informationen***
- https://pro.arcgis.com/de/pro-app/help/data/tin/tin-in-arcgis-pro.htm
- https://www.e-education.psu.edu/geog486/node/1875


### Thiessen Polygone (Voronoi Diagramm)

- Unterteilung eines Gebietes, für das nur punkthafte Informationen vorliegen, in Polygone nach dem Kriterium der kürzesten Distanz zum nächsten Punkt ([Spektrum](https://www.spektrum.de/lexikon/geographie/thiessen-polygon-verfahren/8089))
- Jeder Punkt erhält den Wert seines nächsten Nachbarn zugeordnet
- Harte Übergänge

***Animation (Voronoi Diagram and Delaunay Triangulation)*** from [miyu](https://github.com/miyu/voronoi)
- https://github.com/miyu/voronoi/blob/master/images/result.gif?raw=true

***Weitere Informationen***
- https://pro.arcgis.com/de/pro-app/tool-reference/analysis/create-thiessen-polygons.htm
- http://www.gitta.info/Accessibilit/de/html/UncProxAnaly_learningObject4.html


### Inverse Distance Weighted (IDW)

- Alle Beobachtungen in der Nachbarschaft gehen in die Berechnung ein
- Gewichtung ist abhängig von der inversen Entfernung (Summer der Gewichte = 1)
- keine Berücksichtigung von Covariaten
    - müssen separat berücksichtigt werden
    - gilt für die meisten Interpolationsverfahren

***Potenzt (Power))*** ([ArcGIS - References](https://pro.arcgis.com/de/pro-app/tool-reference/3d-analyst/how-idw-works.htm))
- IDW beruht hauptsächlich auf der Inversen einer potenzierten Entfernung
- Mithilfe des Parameters Potenz können Sie die Bedeutung bekannter Punkte für interpolierte Werte auf der Basis von deren Entfernung zum Ausgabepunkt steuern
- Es ist eine positive, reelle Zahl mit dem Standardwert 2
- Durch Festlegen eines höheren Potenzwerts kann die Bedeutung der am nächsten gelegenen Punkte verstärkt werden (Je höher die Potenz, desto mehr nähern sich die interpolierten Werte an den Wert des am nächsten gelegenen Referenzpunktes an -> Übergang zu Thiessen Polygone)

- p
    - Power
    - hoher Wert -> Übergang zu Thiessen Polygone/ Voronoi Diagram
- n
    - Anzahl von Nachbarn
    - Mehr Nachbarn berücksichtigt -> glattere Oberfläche
- r
    - Radius


***Weiter Informationen***
- https://pro.arcgis.com/de/pro-app/tool-reference/3d-analyst/how-idw-works.htm
- https://www.e-education.psu.edu/geog486/node/1877


---


## Work in Progress (wip)

### Kriging

Überbegriff für ein Set von verschiedenen Methoden. 

http://wiki.gis.com/wiki/index.php/Kriging


***Ablauf (Schematisch)*** zur Gewichtsbestimmung

- ...


### Sonsiges

Tuning Parameter

Bedeutung von Trend und Covariaten für die Interpolation


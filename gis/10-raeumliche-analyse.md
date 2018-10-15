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

***Covarianz***
- wie stark variiert das Merkmal in Abhängigkeit vom Wert des Merkmals in dieser Distanzklasse?
- Hohe Covarianz = Beobachtungen sind sich ähnlich
- Die Kovarianz ist in der Stochastik ein [...] Zusammenhangsmaß für einen [...] Zusammenhang zweier Zufallsvariablen mit gemeinsamer Wahrscheinlichkeitsverteilung. Der Wert dieser Kenngröße macht tendenzielle Aussagen darüber, ob hohe Werte der einen Zufallsvariablen eher mit hohen oder eher mit niedrigen Werten der anderen Zufallsvariablen einhergehen. Die Kovarianz ist ein Maß für die Assoziation zwischen zwei Zufallsvariablen ([Wikipedia](https://de.wikipedia.org/wiki/Kovarianz_(Stochastik))

***Semivariogramm*** (Variogramm)
- Stellt die räumliche Beziehung eines Punktes (Regionalisierung) zu Nachbarpunkten dar ([Wikipedia](https://de.wikipedia.org/wiki/Semivariogramm))


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

| Interpolationsverfahren | Oberfläche | räumliche Erstreckung | Genauigkeit | Methode | 
| --- | --- | --- | --- | --- |
| TIN | abrupte Übergänge | lokal | exakt | deterministisch |
| Thiessen Polygon | abrupte Übergänge | lokal | exakt | deterministisch |
| IDW | geglättete Oberflächen | lokal | exakt | deterministisch |
| Spline | glatte Oberflächen | lokal | exakt | deterministisch |
| Kriging | geglättete Oberflächen | lokal | exakt | stochastisch |

- Für Geländemodelle sind TIN am besten geeignet (Bruchkanten etc.)
- IDW simples aber auch relativ robustes Verfahren
- Spline dann geeignet, wenn glatte Oberflächen sinnvoll erscheinen (Gefahr, dass der Wertebereich verlassen wird)
- Kriging ist das komplexeste aber auch korrekteste Verfahren, zudem Information zur Unsicherheit


### Dreicksvermaschung (Triangulated Irregular Network (TIN))

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

***Definition***
- Alle Beobachtungen in der Nachbarschaft gehen in die Berechnung ein
- Gewichtung ist abhängig von der inversen Entfernung (Summer der Gewichte = 1)
- keine Berücksichtigung von Covariaten
    - müssen separat berücksichtigt werden
    - gilt für die meisten Interpolationsverfahren

***Parameter***
- Potenzt (Power) ([ArcGIS - References](https://pro.arcgis.com/de/pro-app/tool-reference/3d-analyst/how-idw-works.htm))
    - IDW beruht hauptsächlich auf der Inversen einer potenzierten Entfernung
    - Mithilfe des Parameters Potenz können Sie die Bedeutung bekannter Punkte für interpolierte Werte auf der Basis von deren Entfernung zum Ausgabepunkt steuern
    - Es ist eine positive, reelle Zahl mit dem Standardwert 2
    - Durch Festlegen eines höheren Potenzwerts kann die Bedeutung der am nächsten gelegenen Punkte verstärkt werden (Je höher die Potenz, desto mehr nähern sich die interpolierten Werte an den Wert des am nächsten gelegenen Referenzpunktes an -> Übergang zu Thiessen Polygone)
- Nachbarn (Neighbors)
    - Anzahl von Nachbarn
    - Mehr Nachbarn berücksichtigt -> glattere Oberfläche

***Weiter Informationen***
- https://pro.arcgis.com/de/pro-app/tool-reference/3d-analyst/how-idw-works.htm
- https://www.e-education.psu.edu/geog486/node/1877


## Spline

***Definition***
- eine Interpolationsmethode, bei der Werte mithilfe einer mathematischen Funktion geschätzt werden, die die gesamte Oberflächenkrümmung minimiert, wobei eine glatte Oberfläche entsteht, die genau durch die Eingabepunkte verläuft ([ArcGIS - Werkzeuge](https://desktop.arcgis.com/de/arcmap/10.3/tools/spatial-analyst-toolbox/how-spline-works.htm)).
- am besten für leicht variierende Oberflächen geeignet, z. B. Höhenangaben, Wasserspiegelhöhen oder Verschmutzungskonzentrationen.

***Voraussetzungen***
- Die Oberfläche muss genau durch die Datenpunkte verlaufen.
- Die Oberfläche muss eine minimale Krümmung aufweisen. 

***Typen***
- Geregelt (Regularized Spline)
    - sich allmählich verändernde Oberfläche mit Werten erstellt, die außerhalb des Referenzdatenbereichs liegen können ([ArcGIS - Werkzeuge](https://desktop.arcgis.com/de/arcmap/10.3/tools/spatial-analyst-toolbox/how-spline-works.htm))
- Gespannt (Tension Spline)
    -  weniger glatte Oberfläche mit Werten, die durch den Referenzdatenbereich stärker eingeschränkt sind ([ArcGIS - Werkzeuge](https://desktop.arcgis.com/de/arcmap/10.3/tools/spatial-analyst-toolbox/how-spline-works.htm))

***Parameter***
- Gewichtung
    - Geregelt: Je höher die Gewichtung, desto glatter die Ausgabe-Oberfläche
    - Gespannt: Je höher die Gewichtung, desto gröber die Ausgabe-Oberfläche
- Anzahl der Punkte
    - Je mehr Eingabepunkte Sie festlegen, desto mehr wird jede Zelle von entfernten Punkten beeinflusst und desto glatter ist die Ausgabe-Oberfläche ([ArcGIS - Werkzeuge](https://desktop.arcgis.com/de/arcmap/10.3/tools/spatial-analyst-toolbox/how-spline-works.htm))

***Weitere Informationen***
- https://desktop.arcgis.com/de/arcmap/10.3/tools/spatial-analyst-toolbox/how-spline-works.htm


### Kriging

***Definition***
- fortschrittliches geostatistisches Verfahren, bei dem anhand einer Gruppe verteilter Punkte mit Z-Werten eine geschätzte Oberfläche erzeugt wird ([ArcGIS - Werkzeuge](https://pro.arcgis.com/de/pro-app/tool-reference/3d-analyst/comparing-interpolation-methods.htm))
- Distanzabhängige Interpolation
- Berücksichtigung der räumlichen Varianz
    - Bestimmung der Gewichte anhand der Semivarianz oder Covarianz
    - Ermittlung durch das Semivariogramm

Beim Kriging werden wie bei der IDW-Methode die umliegend gemessenen Werte gewichtet, um eine Vorhersage für eine nicht gemessene Position abzuleiten. [...]
In IDW hängt die Gewichtung λi ausschließlich von der Entfernung zur vorhergesagten Position ab. Die Gewichtungen bei der Kriging-Methode basieren jedoch nicht nur auf der Entfernung zwischen den gemessenen Punkten und der vorhergesagten Position, sondern auch auf der gesamten räumlichen Verteilung der gemessenen Punkte. Um mit der räumlichen Anordnung in den Gewichtungen arbeiten zu können, muss die räumliche Autokorrelation quantifiziert werden. Beim normalen Kriging hängt die Gewichtung λi von einem an die gemessenen Punkte angepassten Modell, der Entfernung zur vorhergesagten Position und den räumlichen Beziehungen unter den um die vorhergesagte Position herum gemessenen Werten ab ([Arc-GIS - Werkzeuge](https://desktop.arcgis.com/de/arcmap/10.3/tools/3d-analyst-toolbox/how-kriging-works.htm)).

***Vorgehensweise*** ([Arc-GIS - Werkzeuge](https://desktop.arcgis.com/de/arcmap/10.3/tools/3d-analyst-toolbox/how-kriging-works.htm))
- Erstellen der Variogramme und Kovarianzfunktionen zur Schätzung der statistischen Abhängigkeitswerte (d. h. der räumlichen Autokorrelation), die vom Autokorrelationsmodell abhängig sind (Modellanpassung).
- Vorhersagen der unbekannten Werte (Treffen einer Vorhersage)

***Semivariogramm*** (Variogramm)
- Stellt die räumliche Beziehung eines Punktes (Regionalisierung) zu Nachbarpunkten dar ([Wikipedia](https://de.wikipedia.org/wiki/Semivariogramm))

***Weitere Informationen***
- https://desktop.arcgis.com/de/arcmap/10.3/tools/3d-analyst-toolbox/how-kriging-works.htm


---


## Work in Progress (wip)

- Bedeutung von Trend und Covariaten für die Interpolation

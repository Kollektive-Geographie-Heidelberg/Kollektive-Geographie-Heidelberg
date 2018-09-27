# Rasterdaten

**Rasterdatenmodell** 
- Ein Datenmodell, in dem Bildinhalte (z.B. Fotos) oder räumliche Objekte als (quadratische) Rasterzellen in einer zweidimensionalen Datenmatrix abgebildet werden. ([Spektrum](https://www.spektrum.de/lexikon/geographie/rasterdaten/6416))
    - Ein Gitter (Grid) aus Zeilen und Spalten ([Wikipedia](https://de.wikipedia.org/wiki/Rasterdaten))
    - Eine Menge von Zellen (Pixel)
    - Zellen haben eine homogene Größe
    - Einzelnen Zellen werden Werte zugeordnet, durch die der in der Zelle abgebildete Raum beschrieben wird
- Werte von Rasterdaten
    - Floating Point-Grid
        - für kontinuierliche Daten
        - Wert der Zelle = Attribut
    - Interger-Grid
        - für diskrete Daten
        - Wert der Zelle ist einem bestimmten Attribut zugeordnet (Value Attribute Tabel)
- Geeignet bei kontinuierlicher Phänomenen 
- Weniger geeignet für diskrete Phänomene 

| Vorteil | Nachteile |
| ------- | --------- |
| Technologisch schnelle und günstige Erfassung von Daten | großer Speicherplatzbedarf |
| Einfache Datenstruktur und resultierend daraus einfache Abfrage- und Analysealgorithmen | Maßstabsabhängig (Einschränkungen bei Zoom) |
| | Probleme in der Beschreibung linienhafter Objekte |
| | Es gibt keine Information über die Beziehungen zu Nachbarobjekten (Topologie) |


## Typen von Rasterdaten

- Bildraster
	- Luft-/Satellitenbilder
- Thematische Raster
	- Landnutzung
- Kontinuierliches Raster
    - Höheninformation 


## Rasterformate

- ASCII Grid
    - Textuell (Menschenlesbar)
    - Rasterzellen als Matrix
- GeoTIFF
    - Binärformat
    - Attributdaten in Hauptdatei integriert
- GeoJPEG
    - Binärformat
    - Attributdaten in gesonderter Datei 
- Geopackage und Geodatabase


## Raster Pyramiden

Pyramiden werden zur Verbesserung der Performance verwendet. Sie sind eine reduzierte Version des ursprünglichen Raster-Datasets und können viele reduzierte Layer enthalten. Für jeden Layer der Pyramide wird ein Resampling im Verhältnis 2:1 durchgeführt. Unten findet sich ein Beispiel für zwei Ebenen von Pyramiden, die für ein Raster-Dataset erstellt wurden ([ESRI - ArcMap](https://desktop.arcgis.com/de/arcmap/10.3/manage-data/raster-and-images/raster-pyramids.htm)):

![https://desktop.arcgis.com/de/arcmap/10.3/manage-data/raster-and-images/GUID-C0C7AE57-89F4-4F71-82C4-062E67CF2349-web.png](https://desktop.arcgis.com/de/arcmap/10.3/manage-data/raster-and-images/GUID-C0C7AE57-89F4-4F71-82C4-062E67CF2349-web.png)

Pyramiden können die Anzeige von Raster-Daten beschleunigen, da nur die für die Anzeige erforderlichen Daten in der vorgegebenen Auflösung abgerufen werden.


## Karten Algebra (Map Algebra)

**Definition**
- Methodengebäude und "Tool-Box" zur Kombination von zwei oder mehr Rasterdatensätzen oder Layern (Rasterdaten). 
- Map algebra wendet mathematische Operationen auf komplette Rasterdatensätze an, wobei die jeweilige Operation für jede einzelne Rasterzelle in jedem Datensatz durchgeführt wird. 
    - Hierdurch lassen sich die als Zahlenmatrizen gespeicherten Informationsebenen miteinander verrechnen. ([Spektrum](https://www.spektrum.de/lexikon/geographie/map-algebra/4922<Paste>))

**Mathematische Operationen**
- Arithmetisch
- Logarithmisch (Log, ...)
- Trigonometrisch (Sin, ...)
- Power (Wurzel, ...)

**Typen der Operatoren**
- Lokal
	- Punktoperationen (Pixel)
- Fokal
	- Nachbarschaftsoperationen (Distanzoperationen)
	- direkten Nachbarzellen werden in die Berechnung mit einbezogen.
- Zonal
	- Gebiete gleicher Klassenzugehörigkeit
- Global
	- Thematisch/ komplette Ebene


## Nachbarschaften

Nachbarschaften im allgemeinen sind größere Zonen auf Basis von Distanzen und/oder Richtungen.

- N4-Nachbarschaft 
    - Lateraler Nachbar *oder* Diagonaler Nachbar
- N8-Nachbarschaft
    - Lateraler Nachbar *und* Diagonaler Nachbar

**Minesweeper**
- als klassisches Beispiel einer 3 x 3- Zellen Nachbarschaftsanalyse: Jeder Zellwert (Nummer) gibt die Anzahl der Bomben innerhalb einer 3-Zellen-Nachbarschaft an.


## Analyse Prinzip

**Verschneidung**

*Gegeben* sind zwei Raster. Ein thematisches Raster mit Landnutzungsinformationen (Wald, Wasser, Agrar, etc.)) und ein kontinuierliches Raster mit Vegetationsindex.

*Gesucht* sind die Agrarflächen mit einem bestimmten Vegetationsindex.

- Landnutzungsraster
    - Setze Pixel mit dem Wert Agrar auf 1
    - Setze alle anderem Pixel auf den Wert 0
- Vegetationsindexraster
    - Setze alle Pixel mit dem gewünschten Vegetationsindex auf 1
    - Setze alle anderen Pixel auf den Wert 0
- Verschneidung
    - Verschneide beide Raster (logisches AND)



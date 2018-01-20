# Niederschlag

## Termini

**Kondensationsniveau**
- Die Höhe, in der die Lufttemperatur = Taupunkttemperatur
- Sättigungsfeuchte ist erreicht
- Kondensationsniveau = Wolkenuntergrenze

**Konvektion**
- vertikaler Aufstieg von warmen Luftmassen
  - Bewegung von Luftmassen mit ihren Eigenschaften (Lufttemperatur & Luftfeuchte)

**Advektion**
- horizontales Aufgleiten von warmen Luftmassen über kalte Luftmassen
  - Bewegung von Luftmassen mit ihren Eigenschaften (Lufttemperatur & Luftfeuchte)

**Entstehungsbedingungen von Kondensation & Resublimation von Wasserdampf**
- Vorhandensein von Kondensations- und Gefrierkernen
- Abkühlung auf Taupunkttemperatur oder erreichen der Wasserdampfsättigung


## Niederschlagsentstehung

Die Sättigung der Luft mit Wasserdampf resultiert aus der Abkühlung aufsteigender Luftmassen.

**Konvektivniederschlag**
- Abkühlung erfolgt durch Oberflächenerwärmung ausgelöste Konvektion (konvektive Abkühlung)

**Orographischer Niederschlag**
- Abkühlung erfolgt durch an Gebirgen aufsteigende Luftmassen (orographische Abkühlung)

**Zyklonaler (Advektiver) Niederschlag**
- Abkühlung erfolgt durch Konvergenzen in Tiefdruckgebieten (zyklonische Abkühlung)


## Niederschlagsarten

Kondensation(gas -> flüssig) + Resublimation (gas -> fest).

Unterscheidung verschiedener Niederschlagsarten nach Form und Entstehungsprozeß:

| Bezeichnung | Form: flüssig | fest |
| ----------- | --------------| -----|
| Fallender Niederschlag | Regen | Schnee, Hagel, etc. |
| Abgesetzter Niederschlag | Tau | Reif, Glatteis, etc. |
| Abgefangener Niederschlag | Nebel-Niederschlag | Nebelfrost-Niederschlag |


## Niederschlagsmessung

**Wo wird der Messer aufgestellt?**
- min. Entfernung von Hindernissen ist die 4-fache Hindernishöhe

**Auffangsfläche**
- genormt auf 200 cm² 


### Niederschlagsmesser

- **Regenmesser**
  - Standard Niederschlagsmesser des Deutschen Wetterdienstes
  - 1 Meter über der Geländeoberfläche aufstellen
  - kann nicht die Niederschlagsintesität erfassen
- **Niederschlagswaage**
  - Messung über Gewichtsveränderungen
  - die Niederschlagsintensität kann erfasst werden
  - entwickelt sich zum Standard
- **Niederschlagswippe**
- **Distrometer**
  - Laserstrahl Messung
  - Sehr genau
  - braucht Strom
- **Totalisator**
  - braucht ohne Strom
  - das Total des Niederschlags wird über einen langen Zeitraum gemessen (1/2 - 1 Jahr)
  - Ablesung in der Regel nur zwei Mal pro Jahr


### Fehler bei der Niederschlagsmessung

$N = k * (N_G + \delta N_B + \delta N_M)$

**Fehlerquellen**
- Wind
- Benetzung
- Verdunstung


## Niederschlagsmeßnetz

**Räumliche Verteilung der Niederschlagsstationen der Erde**
- Abbildung von GPCC

**Deutschland**
- Abbildung DWD a. Kämt 2007


## Bestimmung des Gebietsniederschlages

> Zur Ergänzung der konventionellen Niederschlagsmessungen werden seit über 30 Jahren Methoden der Fernerkundung eingesetzt. Der Schwerpunkt hierfür ist die Erfassung der Atmosphäre durch Wetterradarsysteme (RADAR = RAdio Detecting And Ranging). [...]
>
> Konventionelle Niederschlagsmessungen liefern punktuelle Informationen in einem flächenhaften und zeitlich ausgedehnten Niederschlagsereignis. Wetterradare hingegen stellen flächendeckende dreidimensionale Informationen zur Verfügung. Die seit 2013 modernisierten Systeme liefern Daten mit hoher räumlicher und zeitlicher Auflösung über Niederschlagsart und -verteilung sowie den (Radial-)Wind. Die horizontale Reichweite dieser atmosphärischen Überwachung beträgt mehr als 150 km. Vertikal reicht sie von den bodennahen Luftschichten bis in die obere Troposphäre.
>
> Je besser die Datenqualität der gemessenen Daten ist, desto zuverlässiger kann der DWD seine gesetzlichen Aufgaben wahrnehmen. Daher ist es wichtig, Störungen der Messungen durch Frequenzstörer (WLAN-Sender) und Festziele (massive Gebäude, Fernsehtürme) zu vermeiden. Auch Windenergieanlagen können Störungen hervorrufen.
>
> Wetterradarsysteme sind für die Meteorologie und im speziellen für das Warnmanagement und den Katastrophenschutz unverzichtbar. Um vor (Un-)Wetter zu warnen, werden anhand von Wetterradarsystemen Flächenniederschläge gemessen, Gewitter erkannt und von Meteorologen die Entwicklung und Verlagerung der Niederschlagsgebiete beobachtet. Die Daten werden daher zum Beispiel auch für die Hochwasservorhersage der Länder genutzt. Ebenso werden die hoch aufgelösten Radardaten zur Analyse des Anfangszustands der numerischen Wettervorhersage verwendet und erhöhen so die Güte der Wettervorhersage des DWD.
>
> ~ [Deutscher Wetterdienst](https://www.dwd.de/DE/derdwd/messnetz/atmosphaerenbeobachtung/_functions/Teasergroup/radarverbund_teaser5.html)

![Wikipedia](https://www.dwd.de/DE/derdwd/messnetz/atmosphaerenbeobachtung/_functions/Teasergroup/radarverbund_Karte.jpg;jsessionid=D52DCFFE822CCAB7AFCE76F8940DB498.live11044?__blob=normal&v=7)


### arithmetisches Mittel

- $\bar N = \sum_{i=1}^n{w_i*N_i}$
- $w_i$ = Gewichtung der Station i
  - $w_i = \frac{A_i}{\sum_{i=1}^n{A_i}}$
- $N_i$ = Niederschlagsmenge der Station i in mm

**Beispiel**

| Station | Ni | Ai | wi |
| ------- | -- | -- | -- | 
| 1 | 20 mm | 4 | 0,138 |
| 2 | 30 mm | 7 | 0,241 |
| 3 | 20 mm | 3 | 0,103 |
| 4 | 82 mm | 6 | 0,207 |
| 5 | 108 mm | 9 | 0,310 |
| -- | -- | -- | -- | 
|   |       | 29 | 1,0 |

**a) arithmetisches Mittel**
- $\bar N = \sum_{i=1}^n{w_i*N_i} = 59,4 mm$

**b) nur stationen * 23,5 = 65 mm**


### Thiessen-Polygon-Methode

Thiessen-Polygone werden unter anderem bei der kartographischen Darstellung von Messwerten eingesetzt. Die Polygon-Methode ist ein nichtstatistisches (d. h. vergleichsweise einfaches) Interpolationsverfahren der Geostatistik zur einfachen Darstellung der räumlichen Verteilung georeferenzierter Messdaten. ([Wikipedia](https://de.wikipedia.org/wiki/Voronoi-Diagramm#Polygon-Methode)) 

![Thoessen-Polygon-Wikipedia](https://de.wikipedia.org/wiki/Voronoi-Diagramm#/media/File:Thiessen-Polygon.svg)


### Inverses Distanzverfahren

Inverse Distance Weighting (IDW) bezeichnet eine Interpolationsmethde, der die Annahme zugrunde liegt, dass die punktuell gemessenen raumbezogenen Daten in Abhängigkeit von der Distanz im Raum gewissen Ähnlichkeiten in den Werten aufweisen. Bei der IDW wird der Wert an einem nicht beobachteten Punkt z(u0) durch ein gewichtetes Mittel der benachbarten gemessenen Werte der Beobachtungsvariable geschätzt. Die Gewichte des dabei verwendeten linearen Schätzers sind proportional zu den Inversen des Abstands di zwischen dem unbekannten Punkt und dem verwendeten gemessenen Punkt. ([Geoinformatik - Uni Rostock](http://www.geoinformatik.uni-rostock.de/einzel.asp?ID=-1611270911))

Das Inverse Distanzverfahren wird häufig in Kombination mit der Höhenregression verwendet.


### Isohyetenmethode

**Isohyeten**
- Linien gleicher Niederschlagsmenge

### Kriging (optimal interpolation)

Überbegriff für ein Set von verschiedenen Methoden. 

http://wiki.gis.com/wiki/index.php/Kriging

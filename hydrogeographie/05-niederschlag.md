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

**Wo wird der Messer aufgestellt werden**
- min. Entfernung von Hindernissen ist die 4-fache Hindernishöhe

**Auffangsfläche**
- genormt auf 200 cm² 


### Regenmesser

- Standard Niederschlagsmesser des Deutschen Wetterdienstes
- 1 Meter über der Geländeoberfläche aufstellen
- kann nicht die Niederschlagsintesität erfassen


### Niederschlagswaage

- Messung über Gewichtsveränderungen
- die Niederschlagsintensität kann erfasst werden

Entwickelt sich zum Standard


### Weitere Niederschlagsmessgeräte

- Niederschlagswippe
- Distrometer
  - elektronisches Gerät
  - Messung mithilfe eines Laserstrahls
  - Sehr genau
  - braucht Strom
- Totalisator
  - ohne Strom
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


### Thiessen-Polygon

### Inverses Distanzverfahren (IDW)

### Höhenregression

häufige Kombination ist IDW + Höhenregression

### Isohyetenmethode

**Isohyeten**
- Linien gleichen Niederschlages

Sehr genau


### Kriging (optimal interpolation)

Überbegriff für ein Set von verschiedenen Methoden. 

Minimierung des Schätzfehlers

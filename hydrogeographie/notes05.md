**Flussdichten**

in $km * km^{-2}$

- Grundgebierge ~ 1,8 
- Bundsandstein ~ 0,64 
- Muschelkalk ~ 0,28

## Fehler bbei der Niederschlagsmessung

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

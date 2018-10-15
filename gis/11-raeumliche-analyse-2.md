# Räumliche Analyse 2

## Kerndichteberechnung

- Im Gegensatz zur Interpolation sollen die Werte in die Umgebung verteilt werden
    - Beispiel Punktdaten, die die Bevölkerung eines Ortes enthalten
- Nicht anzuwenden, falls Geometrie bekannt ist oder räumliches Modell vorhanden ist


## Autokorrelation

***Räumliche Autokorrelation***
- Sie haben eine Stichprobe und wollen die hinsichtlich räumlicher Eigenschaften analysieren
- Gibt an, wie ähnlich sich Nachbarn sind
- Autokorrelation ist die normierte Auto-Covarianz
    - D.h. die Zahlen sind über Datensätze hinweg vergleichbar

***Maße***
- Moran‘s I
    - Maß für globale (d.h. alle Beobachtungen) räumlichen Autokorrelation
- Local Moran‘s I
    - Berechnet Moran’s I für die Nachbarschaft eines Punktes
    - Berücksichtigt Instationarität
- Korrelogram


## Punktmusteranalyse

***Definition***
- eine Grundgesamtheit aus Punktmessungen, werden hinsichtlich ihrer räumlichen Eigenschaften charakterisiert
- Grundgedanke der Analyse ist es das Verteilungsmuster der Punktdaten mit denen einer nach der Nullhypothese zu erwartenden Verteilung zu vergleichen

***Punktmuster***
- Verteilung der Punkte im Raum

***Marks***
- Attribute der Punkereignisse

***Verteilung***
- geclusterte Punkte (anziehender Prozess)
- Punkte in regelmäßigem Muster (abstoßender Prozess)

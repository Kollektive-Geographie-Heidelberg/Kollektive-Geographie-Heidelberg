# Analysemethoden

Dieses Kapitel ist unabhängig von den Datenmodellen (Rasterdatenmodell und Vektrodatenmodell).

Siehe in den jeweiligen Kapiteln für Analysemethoden von [Rasterdaten](gis/03-raster.md) oder [Vektordaten](gis/04-vektor.md).


## Abfragevarianten

***Thematische Abfragen***
- Selektiert die Objekte, deren Eigenschaften (Attribute) die gestellten Bedingungen erfüllen. 

***Geometrische Abfragen***
- Selektiert die Objekte, die bestimmte räumliche Bedingungen erfüllen. 

***Topologische Abfragen***
- Selektiert die Objekte, welche die gestellten Bedingungen bezüglich den räumlichen Beziehungen zwischen den Objekten erfüllen.


## Kategorien räumlicher Analyse

- ***Location***: Was ist Wo?
    - Welche räumlichen (Fläche, Umrisslänge, Mittelpunkt etc.) und nicht-räumlichen Attribute besitzt ein Objekt (z.B. Einwohnerzahl einer Gemeinde).
- ***Condition***: Wo ist Was?
    - Auffinden von räumlichen Objekten mit bestimmten inhaltlichen Voraussetzungen (z.B. Gebäudekataster: Wo befinden sich sanierungsbedürftige Altbauten? ).
- ***Trend***: Zeitl. Entwicklung
    - Untersuchung von Entwicklungen mit Flächenverschneidungen (z.B. Ausweitung von besiedelter Fläche zu zwei verschiedenen Zeitpunkten).
- ***Pattern***: relevante Muster
    - Untersuchung von raumbezogenen Korrelationen mit Flächenverschneidungen (z.B. Häufung bestimmter Erkrankungen in Abhängigkeit von emittierenden Betrieben).
- ***Routing***:
    - Netzwerkanalysen z.B. bei der Verkehrsplanung (z.B. Auffinden des kürzesten Wegs zwischen zwei Städten unter Benutzung ausschließlich von Bundesstrassen?).
- ***Modelling***: Prozesse ab(nach)bilden
    - Gemeint ist die Modellierung von Raumszenarien (z.B. Simulation von Hochwasserereignissen).


## Auswahloperatoren

***Vergleichende Operatoren***
- = (gleicht)
- \> (größer)
- < (kleiner)
- <> (ungleich)

***Arithmetische Operatoren***
- * (Multiplikation)
- / (Division)
- + (Addition)
- - (Subtraktion)
- exp (Exponent)
- % (Modulo)

***Logische Operatoren***
- AND ∧ (Schnittmenge)
- OR ∨ (Vereinigungsmenge)
- XOR (ausschließende (exklusive) Vereinigungsmenge)
- NOT ¬ (Negation)


## Verschneidung

***Verschneidung***
- Gruppe grundlegender GIS-Funktionen, die ein digitales Zusammenführen (Kombination) von Geo- und Attributdaten mehrerer Themenebenen oder Objektklassen ermöglicht ([Geoinformatik - Uni Rostock](http://www.geoinformatik.uni-rostock.de/einzel.asp?ID=1746))


### Boolesche Verschneidung

Verschneidung auf binärer Informationsebene (wahr/falsch).

| Operator | Operatorname | Beschreibung | Beispiel |
| --- | --- | --- | --- |
| AND |	Schnittmenge | Ergibt „wahr“ für alle Gebiete, die sowohl das erste als auch das zweite Kriterium erfüllen. | „Welche Gebiete sind bewaldet und steil?“ |
| OR | Vereinigung | Ergibt „wahr“ für alle Gebiete, die entweder das erste oder das zweite Kriterium erfüllen, unabhängig davon, ob sich die Gebiete überlagern oder nicht. Anders ausgedrückt, muss mindestens eines der beiden Kriterien „wahr“ sein. | „Welche Gebiete sind bewaldet oder steil?“ |
| XOR | exklusive Vereinigung | Ergibt „wahr“ für alle Gebiete, die entweder das erste oder das zweite Kriterium erfüllen, aber nicht beide. | „Welche Gebiete sind entweder bewaldet oder steil, aber nicht beides?“ |
| NOT | Negation | Ergibt „wahr“ für alle Gebiete, die das erste Kriterium erfüllen, nicht aber das zweite. | „Welche Gebiete sind bewaldet, aber nicht steil?“ |

Quelle: http://gitta.info/Suitability/de/html/BoolOverlay_learningObject2.html


### Geometrische Verschneidung

***Operationen der Mengenlehre***
- Vereinigung (Union) = OR
- Schnitt (Intersection) = AND
- Symmetrische Differenz (Symmetrical difference) = XOR
- Mengen Differenz (Identity)

***Arten der Verschneidung*** 
- Punkt-Fläche
- Linie-Fläche
- Fläche-Fläche

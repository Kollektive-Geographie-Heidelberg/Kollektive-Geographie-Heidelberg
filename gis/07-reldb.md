# Relationale Datenbanken

## Konzept

Eine **relationale Datenbank** beruht auf einem **tabellenbasierten relationalen Datenbankmodell** ([Wikipedia](https://de.wikipedia.org/wiki/Relationale_Datenbank)):

- Eine **relationale Datenbank** kann man sich als eine Sammlung von **Tabellen (Relationen)** vorstellen.
- Jede **Zeile (Tupel)** in einer Tabelle ist ein **Datensatz (Record)**. 
- Jede **Spalte (Attribute)**besteht aus einer Reihe von **Attributwerten (Attribute)**
    - Alle Attributwerte eines Attributes (Spalte) ist von einem bestimmten Datentyp
- Die Tabellen sind durch **Beziehungen (relationships)** miteinander verknüpft
    - Dadurch ist es möglich bei Abfragen, Daten aus mehreren Tabellen zu kombinieren
- Ein Datensatz muss eindeutig identifizierbar sein. Das geschieht über einen oder mehrere Schlüssel.


## Beziehungen

Weiterhin können Verknüpfungen genutzt werden, um die Beziehungen zwischen Tabellen auszudrücken.
Eine Bibliothekdatenbank könnte damit etwa folgendermaßen mit drei Tabellen implementiert werden:

*Tabelle Buch*, die für jedes Buch eine Zeile enthält:

- Jede Zeile besteht aus den Spalten der Tabelle (Attributen): Buch-ID, Autor, Verlag, Verlagsjahr, Titel, Datum der Aufnahme.
- Als Schlüssel dient die Buch-ID, da sie jedes Buch eindeutig identifiziert.

*Tabelle Nutzer*, die die Daten von allen registrierten Bibliotheksnutzern enthält:

- Die Attribute wären zum Beispiel: Nutzer-ID, Vorname, Nachname.<Paste>

![Tabellen](gis/relation-table.png)

Außerdem braucht man eine dritte *Tabelle Entliehen*, die Informationen über die Verfügbarkeit des Buches enthält.

- Jede Zeile dieser Tabelle Entliehen ordnet einer Nutzer-ID eine Buch-ID zu. 
- Als Schlüssel nimmt man hier die Attributmenge (Nutzer-ID, Buch-ID).

Gleichzeitig verbindet die Nutzer-ID jeden Eintrag der Tabelle Entliehen mit einem Eintrag der Tabelle Nutzer, sowie die Buch-ID jeden Eintrag von Entliehen mit einem Eintrag der Tabelle Buch verbindet. Deswegen heißen diese Attribute in diesem Zusammenhang Fremdschlüssel (engl. foreign key).

Der hier benutzte Begriff Relation beschreibt nicht die Beziehung zwischen Entitäten (wie im Entity-Relationship-Modell), sondern die Beziehung der Attribute zum Relationennamen. 
**Schlüssel (Key)**
- *Primärschlüssel (primary key)*
    - ein Attribut oder Attributkombination einer Relation, die einen Datensatz einer Tabelle eindeutig identifizieren
- *Fremdschlüssel (foreign key)*
	- ein Attribut oder eine Attributkombination einer Relation, welches auf einen Primärschlüssel einer anderen Relation verweist ([Wikipedia](https://de.wikipedia.org/wiki/Schl%C3%BCssel_(Datenbank)))

Quelle: https://de.wikipedia.org/wiki/Relationale_Datenbank


## Gegenüberstellung von Grundbegriffen (Relationale Datenbank und ERM)

| Relationale Datenbank | ERM |
| --------------------- | --- |
| Kopfzeile | Entitätstyp |
| Spalte | Attribut |
| Tabelle | Entitätsmenge |
| Spaltenüberschrift | funktionale Beziehung (Relationship) |
| Zeile | Entität |

Quelle: https://de.wikipedia.org/wiki/Relationale_Datenbank


## Datentypen 

Alle Attributwerte eines Attributes sind von einem bestimmten Datentyp.

Attributwerte sollten nach Möglichkeit elementar (nicht weiter zerlegbar) sein.

| Name | Beschreibung |
| ---- | ------------ |
| integer | Ganzzahlen |
| double precision (float8) | Gleitkommazahl |
| character varying (varchar)| Zeichenkette (variable Länge) |
| text | Zeichenkette |
| date | Datum |
| timestamp | Datum und Zeit |
| boolean | Boolsche Variable (TRUE/FALSE) |


## Datenbanksprache (SQL)

> SQL-Introduktion: https://sqlbolt.com/

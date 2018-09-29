# Datenbanken

## Begriffe

**Datenbank (DB)**
- Strukturierte Sammlung von Daten
- Menge der zu verwaltenden Daten

**Datenbankmanagementsystem (DBMS)**
- Verwaltungsoftware
- organisiert intern die strukturierte Speicherung der Daten und kontrolliert alle lesenden und schreibenden Zugriffe auf die Datenbank ([Wikipedia](https://de.wikipedia.org/wiki/Datenbank))

**Datenbanksystem (DBS)**
- DB + DBS
- Zur Abfrage und Verwaltung der Daten bietet ein Datenbanksystem eine Datenbanksprache an ([Wikipedia](https://de.wikipedia.org/wiki/Datenbank))

**Datenbankmodell**
- Das Datenbankmodell bestimmt, in welcher Struktur Daten in einem Datenbanksystem gespeichert werden ([Wikipedia](https://de.wikipedia.org/wiki/Datenbankmodell))
- Modelle
    - Hierarchisch (One-to-many association across levels; z.Bsp. Stammbaum)
    - Netzwerk (Many-to-many)
    - Relational (Tabellenbasiert)

![https://upload.wikimedia.org/wikipedia/de/f/f3/Datenbanksystem.svg](https://upload.wikimedia.org/wikipedia/de/f/f3/Datenbanksystem.svg)

**Datenunabhängigkeit**
- Der Grad den ein Benutzer auf die Daten eines Datenbanksystems zugreifen kann, ohne Details der systemtechnischen Realisierung der Datenspeicherung und des Datenzugriffs zu kennen ([Wikipedia](https://de.wikipedia.org/wiki/Datenunabh%C3%A4ngigkeit))
- Benutzer interagiert nicht direkt mit Daten, sondern mit Repräsentation der Daten über standardisierte Datenbanksprache
- *Physische Datenunabhängigkeit*
    - Änderungen auf der physischen Ebene haben keinen Einfluss auf die logische Struktur
- *Logische Datenunabhängigkeit*
    - Änderungen auf der logischen Ebene haben keinen Einfluss auf Anwendungen


## Funktionen eines DBMS

- Datenbanksprache
    - Funktionen
        - Datenabfrage und -manipulation (DML)
        - Verwaltung der Datenbank und Definition der Datenstrukturen (DDL)
    - Bei relationalen DBMS sind diese Kategorien in einer Sprache (SQL) vereint
- Verwaltung der Metadaten
- Datensicherheit
    - Schutz gegen Datenverlust (Sicherung/ Backup)
    - Schutz gegen unerlaubten Zugriff (Zugriffsrechte)
- Datenintegrität
    - Die Integrität der Daten kann durch Constraints sichergestellt werden
    - Regeln im Managementsystem, die beschreiben, wie Daten verändert werden dürfen
- Mehrbenutzerfähigkeit
    - Zugriffsberechtigungen (Permissions)
- Transaktionen
- Abfrageoptimierung

Quelle: https://de.wikipedia.org/wiki/Datenbank


### Transaktion

**Transaktionen**
- Ermöglichung des Mehrbenutzerbetriebs durch das Transaktionskonzept
- Daten gegen *Race Conditions* durch den parallelen Zugriff mehrerer Benutzer schützten

**Eigenschaften von Transaktionen (ACID)** ([Wikipedia](https://de.wikipedia.org/wiki/ACID))
- atomicity = Atomarität (Abgeschlossenheit)
    - Datenbank-Operationen, die entweder ganz oder gar nicht ausgeführt werden (Alles-oder-nichts-Eigenschaft)
- consistency = Konsistenzerhaltung
    - Nach Beendigung einer Transaktion wird ein konsistenter Datenbankzustand hinterlassen
    - Alle im Datenbankschema definierten Integritätsbedingungen vor dem Abschluss der Transaktion werden überprüft
- isolation = Isolation (Abgrenzung)
    - Verhindert, dass sich nebenläufig in Ausführung befindliche Transaktionen gegenseitig beeinflussen
    - Realisiert durch Zugriffssperren
- durability =  Dauerhaftigkeit
    - Daten sind nach dem erfolgreichen Abschluss einer Transaktion garantiert dauerhaft in der Datenbank gespeichert


## Relationale Datenbanksysteme

### Konzept

Eine **relationale Datenbank** beruht auf einem **tabellenbasierten relationalen Datenbankmodell** ([Wikipedia](https://de.wikipedia.org/wiki/Relationale_Datenbank)):

- Eine **relationale Datenbank** kann man sich als eine Sammlung von **Tabellen (Relationen)** vorstellen.
- Jede **Zeile (Tupel)** in einer Tabelle ist ein **Datensatz (Record)**. 
- Jede **Spalte (Attribute)**besteht aus einer Reihe von **Attributwerten (Attribute)**
    - Alle Attributwerte eines Attributes (Spalte) ist von einem bestimmten Datentyp
- Die Tabellen sind durch **Beziehungen (relationships)** miteinander verknüpft
    - Dadurch ist es möglich bei Abfragen, Daten aus mehreren Tabellen zu kombinieren
- Ein Datensatz muss eindeutig identifizierbar sein. Das geschieht über einen oder mehrere Schlüssel.


### Beziehungen

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


### Gegenüberstellung von Grundbegriffen (Relationale Datenbank und ERM)

| Relationale Datenbank | ERM |
| --------------------- | --- |
| Kopfzeile | Entitätstyp |
| Spalte | Attribut |
| Tabelle | Entitätsmenge |
| Spaltenüberschrift | funktionale Beziehung (Relationship) |
| Zeile | Entität |

Quelle: https://de.wikipedia.org/wiki/Relationale_Datenbank


### Datentypen 

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



### Datenbanksprache (SQL)

> SQL-Introduktion: https://sqlbolt.com/

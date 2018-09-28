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
    - Ermöglichung des Mehrbenutzerbetriebs durch das Transaktionskonzept
    - Daten gegen *Race Conditions* durch den parallelen Zugriff mehrerer Benutzer schützten
- Abfrageoptimierung

Quelle: https://de.wikipedia.org/wiki/Datenbank


## Datenunabhängigkeit

**Datenunabhängigkeit**
- Der Grad den ein Benutzer auf die Daten eines Datenbanksystems zugreifen kann, ohne Details der systemtechnischen Realisierung der Datenspeicherung und des Datenzugriffs zu kennen ([Wikipedia](https://de.wikipedia.org/wiki/Datenunabh%C3%A4ngigkeit))
- Benutzer interagiert nicht direkt mit Daten, sondern mit Repräsentation der Daten über standardisierte Datenbanksprache

Es wird unterschieden in:

- Physische Datenunabhängigkeit
    - Änderungen auf der physischen Ebene haben keinen Einfluss auf die logische Struktur
- Logische Datenunabhängigkeit
    - Änderungen auf der logischen Ebene haben keinen Einfluss auf Anwendungen


## Relationale Datenbanksysteme

Eine relationale Datenbank beruht auf einem tabellenbasierten relationalen Datenbankmodell. 

Eine relationale Datenbank kann man sich als eine Sammlung von *Tabellen (Relationen)* vorstellen. 
Jede *Zeile (Tupel)* in einer Tabelle ist ein **Datensatz (Record)**. 
Jede *Spalte (Attribute)* besteht aus einer Reihe von **Attributwerten (Attribute)**
. ([Wikipedia](https://de.wikipedia.org/wiki/Relationale_Datenbank)).

Datenbanksprache ist meistens SQL ()


### Datentypen 

| Name | Beschreibung |
| ---- | ------------ |
| integer | Ganzzahlen |
| double precision (float8) | Gleitkommazahl |
| character varying (varchar)| Zeichenkette (variable Länge) |
| text | Zeichenkette |
| date | Datum |
| timestamp | Datum und Zeit |
| boolean | Boolsche Variable (TRUE/FALSE) |


> SQL-Introduktion: https://sqlbolt.com/

# Datenbanken

## Begriffe

***Datenbank (DB)***
- Strukturierte Sammlung von Daten
- Menge der zu verwaltenden Daten

***Datenbankmanagementsystem (DBMS)***
- Verwaltungsoftware
- organisiert intern die strukturierte Speicherung der Daten und kontrolliert alle lesenden und schreibenden Zugriffe auf die Datenbank ([Wikipedia](https://de.wikipedia.org/wiki/Datenbank))

***Datenbanksystem (DBS)***
- DB + DBMS

***Datenbankmodell***
- Das Datenbankmodell bestimmt, in welcher Struktur Daten in einem Datenbanksystem gespeichert werden ([Wikipedia](https://de.wikipedia.org/wiki/Datenbankmodell))
- Modelle
    - Hierarchisch (One-to-many association across levels; z.Bsp. Stammbaum)
    - Netzwerk (Many-to-many)
    - Relational (Tabellenbasiert)

![https://upload.wikimedia.org/wikipedia/de/thumb/f/f3/Datenbanksystem.svg/274px-Datenbanksystem.svg.png](https://upload.wikimedia.org/wikipedia/de/thumb/f/f3/Datenbanksystem.svg/274px-Datenbanksystem.svg.png)

***Datenunabhängigkeit***
- Der Grad den ein Benutzer auf die Daten eines Datenbanksystems zugreifen kann, ohne Details der systemtechnischen Realisierung der Datenspeicherung und des Datenzugriffs zu kennen ([Wikipedia](https://de.wikipedia.org/wiki/Datenunabh%C3%A4ngigkeit))
- Benutzer interagiert nicht direkt mit Daten, sondern mit Repräsentation der Daten über standardisierte Datenbanksprache
- *Physische Datenunabhängigkeit*
    - Änderungen auf der physischen Ebene haben keinen Einfluss auf die logische Struktur
- *Logische Datenunabhängigkeit*
    - Änderungen auf der logischen Ebene haben keinen Einfluss auf Anwendungen


## Funktionen eines DBMS

- Datenbanksprache
    - Funktionen
        - Datenabfrage und -manipulation (Data manipulation language (DML))
        - Verwaltung der Datenbank und Definition der Datenstrukturen (Data definition language (DDL))
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

***Transaktionen***
- Ermöglichung des Mehrbenutzerbetriebs durch das Transaktionskonzept
- Daten gegen *Race Conditions* durch den parallelen Zugriff mehrerer Benutzer schützten

***Eigenschaften von Transaktionen (ACID)*** ([Wikipedia](https://de.wikipedia.org/wiki/ACID))
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

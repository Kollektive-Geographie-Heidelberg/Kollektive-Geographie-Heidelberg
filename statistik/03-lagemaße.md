# 1.1. Lagemaße

**Lagemaße** 
- auch: Lageparameter
- Maße der zentralen Tendenz einer Häufigkeitsverteilung
- beschreiben das Zentrum (die Mitte) einer Verteilung

**Mathebibel**
- https://www.mathebibel.de/lageparameter


## Modus

**Modus**
- auch: Modalwert
- häufigster Wert in einer Datenreihe
- ab nominalem Datenniveau möglich
- https://www.mathebibel.de/modus

**Mathebibel**
- https://www.mathebibel.de/modus


## Median

**Median**
- mittlerer Wert einer aufsteigend geordneten Datenreihe
- bei ungerader Anzahl der Elemente
  - $x_{(n+1)/2}$
- bei gerader Anzahl der Elemente
  - $(x_{(n/2)} + x_{(n/2)+1})/2$
- ab ordinalem Datenniveau möglich
- robust gegenüber Extremwerten

**Median bei klassierten Daten**
- ...

**Mathebibel**
- https://www.mathebibel.de/deskriptive-statistik


## Arithmetisches Mittel

**ungewogenes arithmetisches Mittel**
- Quotient aus der Summe der betrachteten Zahlen und ihrer Anzahl
- $\bar{x} = \frac{x_1 + x_2 + \ldots + x\_n}{n} = \frac{1}{n} \cdot \sum_{i=1}^{n} x_i$
- anfällig gegenüber Extremwerten
- ab metrischem Datenniveau möglich

**gewogenes arithmetisches Mittel**
- $\bar{x} = \frac{x_1 H_1 + x_2 H_2 + \ldots + x_m H\_m}{n} = \frac{1}{n} \cdot \sum_{i=1}^{m} x_i H_i$

**Arithmetisches Mittel bei klassierten Daten (absolute Häufigkeit)**
- $\bar{x} = \frac{1}{n} \cdot \sum_{i=1}^{n} m_i*n_i$
- $m_i$
  - Klassenmitte der i-ten Klasse
- $n_i$
  - absolute Häufigkeit der i-ten Klasse
- $n$
  - Summe der absoluten Häufigkeiten

**Arithmetisches Mittel bei klassierten Daten (relative Häufigkeit)**
- $\bar{x} = \sum_{i=1}^{n} m_i*h_i$
- $m_i$
  - Klassenmitte der i-ten Klasse
- $h_i$
  - relative Häufigkeit der i-ten Klasse

**Mathebibel**
- https://www.mathebibel.de/arithmetisches-mittel


## Schiefe/ Steilheit

**positiv schief (rechts schief, links steil)**
- Ist der Modalwert kleiner als Median und arithmetisches Mittel, hat die Verteilung viele niedrige Werte und wenige hohe Werte

**negativ schief (links schief, rechts steil)**
- ...


## Quartile und Quantile

**Quantile**
- Das Quantil teilt die Stichprobe so, dass ein Anteil der Stichprobe von p kleiner als das Quantil ist und ein Anteil von 1-p der Stichprobe größer als das Quantil ist.
- $p \in (0,1)$
- wenn $n * p$ ganzzahlig
  - $x_{p} = \frac{1}{2} * (x_{n * p} + x_{(n * p)+1})$
- wenn $n * p$ nicht ganzzahlig
  - $x_{p} = (x_{(n * p)+1}$


## Geometrisches Mittel

$\bar{x}_{geom} = \sqrt[n]{x_1 * x_2 \dots x_n}$


## Harmonisches Mittel

$\bar{x}_{harm} = \frac{n}{\frac{1}{x_1} + \frac{1}{x_2} \dots \frac{1}{x_n}}$

- nur für positive Zahlen geeignet


**Ungleichung vom arithmetische und geometrischen Mittel**

$\bar{x}_{geom} \leq \bar{x_{arithm}}$


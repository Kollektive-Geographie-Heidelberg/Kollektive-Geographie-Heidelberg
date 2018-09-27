# LaTeX

LaTeX ist ein Textsatzsystem, welches ein hervorragendes Werkzeug zur Erstellung von komplexen Schriftstücken in höchster Qualität ist.

- In LaTeX ist Form von Inhalt getrennt.
- Die Verzeichnisse (Inhaltsverzeichnis, Literaturverzeichnis, Abbildungsverzeichnis und Tabellenverzeichnis) werden automatisch generiert
- Plain Text Format

**LaTeX Kurs - Universität Heidelberg**
- Einführung in das Textsatzsystem LaTeX
- Vorlesungsfolien sind ohne Einschreibung verfügbar
- https://latexkurs.github.io/

**Installation**
- https://www.tug.org/texlive/

**Editor**
- Es gibt viele verschieden Editoren für LaTeX
- Ein umfangreicher Editor mit Vorschau Funktion ist TeXStudio
  - http://texstudio.sourceforge.net/

## Template

Folgender LaTeX Code...

```tex
% !TEX program = xelatex
% !TEX encoding = UTF-8 Unicode
% !TEX spellcheck = de_DE

\documentclass[a4paper, 12pt, bibliography=totoc]{scrartcl} % add listof=totoc as parameter if you want list of figures, ... in table of content

\usepackage{polyglossia} % language package
\usepackage{xltxtra} % loads also fontspec 
\usepackage{setspace} % line spacing
\usepackage{scrlayer-scrpage} % header and footer for documentclass KOMA-Script
\usepackage[backend=biber, authordate]{biblatex-chicago} % bliography generator. The Chicago Manual of Style
\usepackage{csquotes} % german style quotation
\usepackage{acronym}
\usepackage{blindtext} % generates "blind" text in stated positions
\usepackage{graphicx} % embed images unsing \includegraphics{image.png}
\usepackage{booktabs} % for better tables
\usepackage{amsmath, mathtools} % https://en.wikibooks.org/wiki/LaTeX/Mathematics
\usepackage{microtype} % takes care of microtypography
\usepackage{hyperref} % hyperlinks - load this package last!

\bibliography{bibfile.bib} % https://en.wikibooks.org/wiki/LaTeX/Bibliography_Management#BibTeX
\renewcommand\mkbibnamelast[1]{\textsc{#1}} % small capitals for author in the bibliography
\setmainlanguage{german}
\setotherlanguage{english} % e.g. \textenglish{\date} or \begin{english} some longer text \end{english}
\setmainfont[Ligatures=TeX,Numbers=OldStyle]{TeX Gyre Pagella}
\onehalfspacing % 1,5 line spacing
\pagestyle{scrheadings}
\ihead*{Kollektive Geographie Heidelberg} % inner header
\ohead*{Template} % outer header

\begin{document}
\begin{titlepage}
	\title{Template}
	%\subtitle{Vorlage für wissenschaftliche Arbeiten in der Geographie}
	\author{Kollektive Geographie Heidelberg}
	\date{\normalsize\today}
	\maketitle
	\thispagestyle{empty} % removes header and footer
		\vspace{1cm}
	\begin{figure}[h]
		\centering
		\includegraphics[width=0.25\textwidth]{favicon.png}
		\nocite{iconika}
	\end{figure}
	\vfill
	\small
	\begin{tabular}{ll}
		Universität: & Universität Heidelberg \\
		Institut: & Geographisches Institut Heidelberg\\ 
		Seminar: & Wissenschaftliches Arbeiten \\
		Dozent: & Dr. House \\ \\
		Matrikelnummer: & 123456 \\
		E-Mail: & \href{mailto:kollektive-geographie-heidelberg@posteo.de}{kollektive-geographie-heidelberg@posteo.de}
	\end{tabular}

\end{titlepage}


\begin{abstract}
	\section*{Abstract}
	\begin{english}
		An abstract should always be available in english. Thus somebody can decide if translation is worthwile.
		
		An abstract is a short summary of the content and should enable people to dicide wether to read further or not.
		A great guide by Kent Beck how to write good abstracts can be found here:
		
			\url{https://plg.uwaterloo.ca/~migod/research/beckOOPSLA.html}
	\end{english}
	\vfill
	\section*{Zusammenfassung}
	Hier könnte der "Abstract", also eine kurze Zusammenfassung des Inhaltes, in deutscher Sprache stehen\dots
	\vfill
	\newpage
\end{abstract}


\tableofcontents
\newpage
\listoffigures
\listoftables

\section*{Kürzelverzeichnis}
\begin{acronym}[UMLX]
	\acro{UTM}{Universial Transverse Mercator}
	\acro{WGS}{World Geodetic System}
	\acro{GNSS}{global navigation satellite system}
	\acro{o.Dat.}{ohne Datum}
	\acro{et al.}{und weitere}
	\acro{f.}{folgende}
	\acro{ff.}{fortfolgende}
\end{acronym}
\newpage


\section{Einleitung}

\enquote{Das 21. Jahrhundert ist ein Jahrhundert der Geographie, denn wir leben heute in einer Gesellschaft, in der Räume und Raumzugänge, Verfügbarkeiten wie räumliche Nutzungsbeschränkungen auf verschiedenen Ebenen neu ausgehandelt – und damit Geographien im buchstäblichen Sinne neu „gemacht“ – werden. Eine humangeographische Perspektive eröffnet Zugänge, um die aktuellen Veränderungen sowie deren Ursachen und Auswirkungen besser zu verstehen} \autocite{UBHD-67936064}.

\subsection{Unterüberschrift}
\blindtext\\

\begin{figure}[h]
	\centering
	\includegraphics[width=0.1\textwidth]{favicon.png}
	\caption[Favicon]{Favicon (\cite{iconika})}
	\label{fig:favicon} % labels are needed to refer in text to a figure
\end{figure}

\blindtext


\section{Überschrift}

\blindtext
\textbf{Im Text kann man auf Tabelle \ref{tab:beispiel} verweisen.}
\blindtext\\

\begin{table}[h]
	\centering
	\begin{tabular}{lrr}
		\toprule
		Artikel & Zahl & Bezeichnung \\ 
		\midrule
		Die & erste & Zeile \\	
		\cmidrule
		{2 -3}
		Die & zweite & Zeile \\
		Die & dritte & Zeile \\
		Die & vierte & Zeile \\
		\bottomrule
	\end{tabular}
	\caption{Beispiel (eigene Darstellung)}
	\label{tab:beispiel}
\end{table}

\newpage
\pagestyle{plain}
\printbibliography[title={Literaturverzeichnis}]
\end{document}
```

... wird zu folgendem Dokument kompiliert:

<object data="wissenschaft/template.pdf" type="application/pdf" width="100%" height="900">
   <p><b>Fallback content</b>: This browser does not support PDFs. Please download the PDF to view it: <a href="wissenschaft/template.pdf">Download PDF</a>.</p>
</object>

Aus der BibTeX-Datei wird das Literaturverzeichnis generiert. Die BibTeX-Datei enthält Informationen über das zu zitierende Werk. BibTeX-Dateien sind weit verbreitet und können z.Bsp. über HEIDI oder Google Scholar runter geladen werden. Ansonsten gibt es BibTeX-Datei Generatoren und Editoren.


**Bibtex - Editor**

- http://truben.no/latex/bibtex/


**Bibtex - Generator**

- http://www.literatur-generator.de/

Folgende BibTeX-Datei wurde im vorherigen Dokument benutzt:

```tex
@ONLINE {iconika,
    author = "ICONIKA",
    title  = "Earth",
    url    = "https://www.shareicon.net/space-earth-planet-863624",
}
@book{UBHD-67936064,
  editor={Freytag, Tim and Gebhardt, Hans and Gerhard, Ulrike and Wastl-Walter, Doris},
  title={Humangeographie kompakt},
  edition={1. Aufl. 2016},
  publisher={Springer Spektrum},
  address={Berlin, Heidelberg},
  year={2016},
  pages={Online-Ressource (XIII, 188 S. 110 Abb. in Farbe, online resource)},
  language={ger},
  isbn={978-3-662-44837-3},
  series={SpringerLink : B{\"u}cher},
  doi={10.1007/978-3-662-44837-3},
  keywords={Anthropogeographie / Einf{\"u}hrung},
  url={http://dx.doi.org/10.1007/978-3-662-44837-3},
  library={UB ; UW},
}
```

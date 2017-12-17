# LaTeX

LaTeX ist ein Textsatzsystem, welches ein hervorragendes Werkzeug zur Erstellung von komplexen Schriftstücken in höchster Qualität ist.

- In LaTeX ist Form von Inhalt getrennt.
- Die Verzeichnisse (Inhaltsverzeichnis, Literaturverzeichnis, Abbildungsverzeichnis und Tabellenverzeichnis) werden automatisch generiert
- Plain Text Format

**LaTeX Kurs - Universität Heidelberg**
- Einführung in das Textsatzsystem LaTeX
- Vorlesungsfolien sind ohne Einschreibung verfügbar
- https://latexkurs.github.io/

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

\documentclass[a4paper, 12pt]{scrartcl} % add listof=totoc and bibliography=totoc as parameter if you want both in table of content

\usepackage{polyglossia} % language package
\usepackage{xltxtra} % loads also fontspec 
\usepackage{setspace} % line spacing
\usepackage{scrlayer-scrpage} % header and footer for documentclass KOMA-Script
\usepackage[authordate,backend=biber]{biblatex-chicago}
\usepackage{csquotes} % german style quotation
\usepackage{acronym}
\usepackage{blindtext} % generates "blind" text in stated positions
\usepackage{graphicx} % embed images unsing \includegraphics{image.png}
\usepackage{booktabs} % for better tables
\usepackage{amsmath, mathtools} % math equations - https://en.wikibooks.org/wiki/LaTeX/Mathematics
\usepackage{microtype} % takes care of microtypography
\usepackage{hyperref} % hyperlinks - load this package last!

\addbibresource{bibfile.bib} % https://en.wikibooks.org/wiki/LaTeX/Bibliography_Management#BibTeX
\setmainlanguage{german}
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
	\vspace{2cm}
	\noindent
	\begin{tabular}{ll}
		Universität: & Universität Heidelberg \\
		Institut: & Geographie\\ 
		Semester: & WS 17/18 \\
		Seminar: & Wissenschaftliches Arbeiten \\
		Dozent: & Dr. Dr. Prof. Eitel \\ \\
		Studienrichtung: & Geographie \\
		Fachsemester: & 3 \\
		E-Mail: & \href{mailto:kollektive-geographie-heidelberg@posteo.de}{kollektive-geographie-heidelberg@posteo.de}
	\end{tabular}
\end{titlepage}

\begin{abstract}
	\selectlanguage{english}
	\section*{Abstract}
	An abstract should always be available in english. Thus somebody can decide if translation is worthwile.
	
	An abstract is a short summary of the content and should enable people to dicide wether to read further or not.
	A great guide by Kent Beck how to write good abstracts can be found here:
	\begin{center}
		\url{https://plg.uwaterloo.ca/~migod/research/beckOOPSLA.html}
	\end{center}
	
	\vfill
	\selectlanguage{german}
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
\end{acronym}
\newpage

\section{Überschrift}
"...thou, Melkor, shalt see that no theme may be played that hath not its uttermost source in me, nor can any alter the music in my despite. For he that attempteth this shall prove but mine instrument in the devising of things more wonderful, which he himself hath not imagined" (\cite{Akallabeth}).
	
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

\noindent
Im Text kann man auf Tabelle \ref{tab:beispiel} verweisen.

\blindtext

\newpage
\pagestyle{plain}
\printbibliography[title={Literaturverzeichnis}]
\end{document}
```

Aus der BibTeX-Datei wird das Literaturverzeichnis generiert. Die BibTeX-Datei enthält Informationen über das zu zitierende Werk. BibTeX-Dateien sind weit verbreitet und können z.Bsp. über HEIDI oder Google Scholar runter geladen werden. Ansonsten gibt es BibTeX-Datei Generatoren und Editoren.

**Bibtex - Editor**
- http://truben.no/latex/bibtex/
**Bibtex - Generator**
- http://www.literatur-generator.de/

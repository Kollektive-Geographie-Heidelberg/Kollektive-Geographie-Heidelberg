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

\documentclass[a4paper, 12pt, bibliography=totoc, listof=totoc]{scrartcl}

\usepackage{polyglossia} % language
\usepackage{xltxtra} % loads also fontspec 
\usepackage{lmodern} % font
\usepackage[sc,osf]{mathpazo} % oldschool number style
\usepackage{setspace} % line spacing
\usepackage{scrlayer-scrpage} % header and footer for documentclass KOMA-Script
\usepackage{graphicx} % embed images unsing \includegraphics{image.png}
\usepackage{booktabs} % tables
\usepackage{blindtext} % generates "blind" text in stated positions
\usepackage[style=authoryear]{biblatex} % bibliography & quotation style
%\usepackage[authordate,backend=biber]{biblatex-chicago} % If needed, then use instead of biblatex. Not sure whats changing?
\usepackage{csquotes} % german style quotation
\usepackage{amsmath, mathtools} % math equations - https://en.wikibooks.org/wiki/LaTeX/Mathematics
\usepackage{microtype} % takes care of microtypography
\usepackage{hyperref} % hyperlinks - load this package last!

\addbibresource{bibfile.bib} % https://en.wikibooks.org/wiki/LaTeX/Bibliography_Management#BibTeX
\setmainlanguage{german}
\onehalfspacing % 1,5 line spacing
\lohead*{Kollektive Geographie Heidelberg}
\rohead*{Template}
%\pagestyle{scrheadings} % use for double sided papers (e.g. book)

\begin{document}
\begin{titlepage}
	\title{Template}
	\subtitle{Vorlage für wissenschaftliche Arbeiten in der Geographie}
	\author{Kollektive Geographie Heidelberg}
	\date{\today}
	\maketitle
	\thispagestyle{empty} % removes header and footer
	\vspace{2cm}
	\noindent
	\begin{tabular}{ll}
		Universität: & Universität Heidelberg \\
		Institut: & Geographie\\ 
		Semester: & WS 17/18 \\
		Seminar: & Wissenschaftliches Arbeiten \\
		Dozent: & Dr. Dr. Prof. Eitel \\
		Studienrichtung: & Geographie \\
		Fachsemester: & 3 \\
		E-Mail: & kollektive-geographie-heidelberg@posteo.de
	\end{tabular}
\end{titlepage}

\tableofcontents
\pagebreak

\section{Überschrift}
"...thou, Melkor, shalt see that no theme may be played that hath not its uttermost source in me, nor can any alter the music in my despite. For he that attempteth this shall prove but mine instrument in the devising of things more wonderful, which he himself hath not imagined" (\cite{Akallabeth}).
	
\subsection{Unterüberschrift}
\blindtext\\

\begin{figure}[h]
	\centering
	\includegraphics[width=0.1\textwidth]{favicon.png}
	\caption{Favicon}
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
	\caption{Beispiel}
	\label{tab:beispiel}
\end{table}

\noindent
Im Text kann man auf Tabelle \ref{tab:beispiel} verweisen.

\blindtext

%--------verzeichnise-------
\newpage
\pagestyle{plain}

\printbibliography[title={Literaturverzeichnis}]
\newpage

\listoffigures
\newpage

\listoftables
\end{document}
```

... kompiliert folgendes Dokument:

<embed src="wissenschaft/template.pdf" type="application/pdf" width="100%" height="800">

Das dazugehörige Bibfile enthält:

```json
@incollection{Akallabeth,
address = {New York, USA},
booktitle = {The Silmarillion},
editor = {Tolkien, Christopher},
publisher = {Mariner Books},
author = {Tolkien, John Ronald Reuel},
title = {Akallabeth - The Downfall of Numenor},
year = {2014},
tags = "MasterThesis"
}
```

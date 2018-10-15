mv _sidebar.md _sidebar
pandoc *.md -o "$(basename "$(pwd)")".pdf --from=gfm --pdf-engine=xelatex --listings --number-sections --include-in-header titlesec.tex --template eisvogel -V documentclass=scrartcl -V lang=de -V fontsize=11pt -V papersize=a4 -V toc-own-page=True -V toc=true -V header-left="\textit{Kollektive Geographie Heidelberg}" -V header-right="\textit{\nouppercase\leftmark}" -V footer-left=  -V colorlinks=true -V titlepage=true -V titlepage-rule-color=44af79 -V logo="favicon.png" -V logo-width=133 -M title="Geographische Informationssysteme" -M author="Kollektive Geographie Heidelberg" -M date="SoSe 2018"
mv _sidebar _sidebar.md


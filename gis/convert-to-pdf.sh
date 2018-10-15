mv _sidebar.md _sidebar
pandoc *.md -o "$(basename "$(pwd)")".pdf --from=gfm --pdf-engine=xelatex --listings --number-sections --template eisvogel -V lang=de -V fontsize=12 -V papersize=a4 -V titlepage=true -V toc-own-page=True -V toc=true -V titlepage-rule-color=44af79 -V logo="favicon.png" -V logo-width=133 -M title="Geographische Informationssysteme" -M author="Kollektive Geographie Heidelberg" -M date="SoSe 2018"
mv _sidebar _sidebar.md

# Allgemeines

**Vorlesung**
- Kartographie

**Semester**
- WS 2017/18

**Dozent**
- Mocnik

**Moodle**
- Adresse: https://elearning2.uni-heidelberg.de/course/view.php?id=16228

**Tutorium**
- Übungsaufgaben (50% der Punkte zum Bestehen notwendig)

**Gesammtnote**
- 1/4 Übung
- 3/4 Klausur

**Materialien**
- TK25 6518 Heidelberg (Nord) (Topographische Karte), Maßstab 1: 25 000
  - https://www.landkartendienst-lupp.de/epages/63861667.sf/sec4038dab642/?ObjectPath=/Shops/63861667/Products/tk6518
  - https://www.reisebuchladen.net/shop/item/9783890210254/heidelberg-nord-gefalzt
- TK50 L6518 Heidelberg-Nord (Topographische Karte), Maßstab 1:50.000
  - https://www.landkartendienst-lupp.de/epages/63861667.sf/sec4038dab642/?ObjectPath=/Shops/63861667/Products/%22TK50%20L6518%20BW%22
  - https://www.reisebuchladen.net/shop/item/9783863982843/l6518-heidelberg-nord-von-lgl-gefalzt

**Tipps**
- Wenn die Vorlesungsfreien zu lange brauchen um geladen zu werden, dann hilft es diese zu komprimieren
  - Wenn du Linux benutzt ist folgendes bash script sehr effektive

```bash
#!/bin/bash
# ./compress-pdf.sh                to compress all pdf in current folder
# ./compress-pdf.sh example.pdf    to compress only given pdf

# Ghostscript (gs) code is taken from
# http://tuxdiary.com/2015/04/07/compress-pdf-files-linux/

if [ $# -eq 0 ] # The $# variable = number of input arguments
then
	list=$(find . -name '*.pdf')
	for i in $list
	do
		new_filename=$(basename "$i" .pdf) # filename stript of path and ext
		new_filename+="-compressed.pdf"
		gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$new_filename $i
		echo $i
	done
else
	new_filename=$(basename "$1" .pdf) # filename stript of path and ext
	new_filename+="-compressed.pdf"
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$new_filename $1
fi
```

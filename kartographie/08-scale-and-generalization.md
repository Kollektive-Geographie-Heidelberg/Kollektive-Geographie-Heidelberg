# Scale and Generalization

## Carographic Scale

**cartographic scale**
- ratio between distances on the map and distances in reality

**verbal scale**
- 1 centimeter equals 10 kilometer

**lexical scale**
- SCALE 1:2000000

**bar scale**
- also called linear scale

![Scale-Wikipedia](https://upload.wikimedia.org/wikipedia/commons/e/e5/Scale_from_NOAA_Chart_13272.png)

**size**
- 1:5,000 (large scale) > 1:500,000 (medium scale) > 1:5,000,000 (small scale)


### Thematic Scale

| Top views of reality | Maps |
| --- | --- |
| reality | representation of reality |
| number of objects that can be recognized is limited (*physical properties of the eye*) | number of objects that can be recognized is limited (*limits in printing technology and visual perception*) |
| different top views of differently sized areas reveal different phenomena | different maps of differently sized areas reveal different phenomena |


### Choice of Scale

- topic
- size of the process/phenomenon to depict
- purpose
- format and size of the map
- etc.


## Cartographic Generalization

- topic
- size of the process/phenomenon to depict
- purpose
- format and size of the map
- etc.


### Cartographic Generalization Operators 

![Wikipedia-Cartographic-Generalization-Operators](kartographie/cartographic-generalization-operators-veraendert.png)


### Douglas–Peucker Algorithm

**Douglas–Peucker algorithm**
- takes a curve composed of line segments and finds a similar curve with fewer points ([Wikipedia](https://en.wikipedia.org/wiki/Ramer%E2%80%93Douglas%E2%80%93Peucker_algorithm))

![Douglas-Peucker-Wikipedia](https://upload.wikimedia.org/wikipedia/commons/3/30/Douglas-Peucker_animated.gif)


## Minimum Dimensions

**Angular resolution of the eye**
- ability to distinguish small details of an object, thereby making it a major determinant of image resolution ([Wikipedia](https://en.wikipedia.org/wiki/Angular_resolution))
- limit is at about 0.05 mm at 25 cm distance

**Minimum demensions at 25 cm distance (eye-map)**

| object | minimal demensions |
| --- | --- |
| line width (black line) | ≥ 0.06 mm |
| line width (coloured line) | ≥ 0.09 mm |
| distance between lines (thin line) | ≥ 0.25 mm |
| distance between lines (thick line) | ≥ 0.15 mm |
| side length of a square (black) | ≥ 0.35 mm |
| side length of a square (colour) | ≥ 1.00 mm |
| size of a rectangle (black) | ≥ 0.30 mm x 0.60 mm |
| font size | ≥ 6 pt |


### Töpfer’s radical law

- $n´=n*\sqrt{\frac{s}{s´}}$
  - $n$ number of elements (basis map)
  - $n´$ number of elements (derived map)
  - $s$ scale denominator (basis map)
  - $s´$ scale denominator (derived map)


## Learning Objectives

- What is scale?
- Large and small scale
- Different scales are used for different purposes.
- Thematic scale
- The scale should correspond to the phenomena to be described.
- Generalization methods
- Douglas-Peucker algorithm
- Minimum dimensions and Töpfer’s radical law


## Further Reading

**Cartographic Generalization - Wiki GIS**
- http://www.wiki.gis.com/wiki/index.php/Cartographic_generalization#cite_note-13


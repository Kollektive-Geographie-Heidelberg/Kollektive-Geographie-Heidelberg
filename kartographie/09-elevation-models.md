# Elevation Models in Cartography

## Representation of Reliefs

**Techniques for representing the relief**
- hachures
- shaded relief
- contour lines

![colour-coding-and-shading-wikipedia](kartographie/colour-coding-and-shading-wikipedia.png)

- colorized by altitude
- shaded relief (levels of gray), just to indicate relative slopes, mountain ridges, not absolute height ([Example from Wikipedia](https://wiki.openstreetmap.org/wiki/Relief_maps)


## Elevations to Contour Lines

![Courbe-Neveau-Wikipedia](https://upload.wikimedia.org/wikipedia/commons/d/d1/Courbe_niveau.svg)


## Contour Lines to Elevation Profile

**Reconstruction of the relief from contour lines**
![contour-lines-to-relief](kartographie/contour-lines-to-relief.png)

**Rules**
- In many cases, it is sufficient to only use a meaningful subset of the contour lines
- Never extrapolate
- Larger waterbodies can often be regarded as being plane at topographic scales


## Delaunay Triangulation

In mathematics and computational geometry, a Delaunay triangulation for a set P of points in a plane is a triangulation DT(P) such that no point in P is inside the circumcircle of any triangle in DT(P). Delaunay triangulations maximize the minimum angle of all the angles of the triangles in the triangulation; they tend to avoid sliver triangles. ([Wikipedia](https://en.wikipedia.org/wiki/Delaunay_triangulation))

Animation (Voronoi Diagram and Delaunay Triangulation) from [miyu](https://github.com/miyu/voronoi)
![Voronoi-Delaunay-miyu](https://github.com/miyu/voronoi/blob/master/images/result.gif?raw=true)

**intercept theorem**
- $\Delta x´=\Delta x * \frac{\Delta h´}{\Delta h}$

**Rules**
- Never extrapolate
- Contours of different elevation never cross
- Contours with the same elevation cross very seldom only
- Contours do usually not end in the middle of a map


## Further Readings

**Animated Fortune's Algorithm for Voronoi Diagram and Delaunay Triangulation Generation**
- https://github.com/miyu/voronoi

**Relief Shading**
- http://www.reliefshading.com/

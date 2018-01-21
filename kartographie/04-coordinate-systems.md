# Geodetic and Coordinate Reference Systems

**reference frame**
- reference points on the Earth and their corresponding coordinates

**geodetic reference system (GRS)**
- consists of
  1. reference ellipsoid
  2. the reference frame
- also called "datum""

**coordinate reference system (CRS)**
- consists of
  1. reference ellipsoid
  2. the reference frame
  3. [coordinate system](http//:kollektive-geographie-heidelberg.de/kartographie/03-coordinate-systems.html)


## Coordinate Systems

For the projection of a spherical or ellipsoid onto a flat surface (e.g map) we need a coordinate system.

**geocentric coordinates X, Y, Z**
  -  Earth-centered system of locating objects in the solar system in three-dimensions along the Cartesian X, Y and Z axes [Wikipedia](https://en.wikipedia.org/wiki/Geocentric_coordinates)
  - not suitable for map projections

**geographic coordinates φ, λ**
  - enables every location on Earth to be specified by a set of numbers, letters or symbols ([Wikipedia](https://en.wikipedia.org/wiki/Geographic_coordinate_system))
  - used to specify a location on a two-dimensional map
  - angles
    - φ, λ
  - semi-major and minor axis
    - a, b

**geographic poles**
- defined by the rotational axis

**equator**
- the section perpendicular to the rotational axis and through the center of the ellipsoid


### Geographic Coordinates (latitude/longitude)

| Representation | Example | Description |
| ----------- | -------- | ------------ |
| hddd° mm′ ss.ss″ | N46°14′06.70″ E008°00′55.60″ | degree (°), minutes (′), seconds(″) and decimal seconds |
| hddd° mm.mmm′ | N46°14.11182′ E008°00.92670′ | degree(°), minutes(′) and decimal minutes|
| hddd.ddddd° | N46.235197° E008.015445° | degree(°) and decimal degree |

*h* = cardinal direction
*d* = degree
*m* = minutes
*s* = seconds

**lines of latitude**
- sections perpendicular to the rotational axis are parallel to the equator
- the degrees of latitude range from 90°S over 0° to 90°N (180 lines of latitude)
- φ

**lines of longitude (meridians)**
- sections through the poles
- the degree of longitude range from 180°W over 0° to 180°E
- steps are 10° (360 lines of longitude)
- λ

**prime meridian**
- the meridian through Greenwich

**great circles**
- sections through the center of the ellipsoid
- 1° on a great circle corresponds to about 111 km
  - 360° correspond to 40073 km ≈ 2π ∙ 6378 km

![Wikipedia-Geographic-Coordinates](https://upload.wikimedia.org/wikipedia/commons/7/7b/ECEF.svg)


### Universal Transverse Mercator (UTM) Coordinates

#### UTM Zone Coordinates

| Format | Description |
| ------- | ----------- |
| <span style="color:red">32</span> N <span style="color:blue">439596</span> /  <span style="color:green">5967780</span> | <span style="color:red">zone</span>, north hemisphere, <span style="color:blue">easting</span> /  <span style="color:green">northing</span> in meter |

**projection**
- universal transversal Mercator projection
- conformal transversal cylindrical projection
  - intersection at poles

**reference ellipsoid**
- many different reference ellipsoids are used
- in the EU: GRS 80
- in USA: WGS 84 (WGS 1984) and NAD83

**lines of latitude**
- degrees range from 80° S over 0° to 84° N
  - The polar regions are excluded

**lines of longitude**
- degrees range from 0° to 180°

**zones**
- 60 zones, each 6° of longitude in width
- first zone (1)
  - longitude 180° to 174° W
  - starts international Date Line (180°)
- zone numbering increases eastward
- last zone (60)
  - longitude 174° to 180° E

**central meridian**
- longitude line in the middle of a zone
- steps are 6°, starts at 3°
  - 3°, 9°, 15°, ..., 177°

**coordinate system**
- each UTM zone is regarded as an individual Cartesian Coordinate System
- intersection of the equator with the central meridian is the origin of the Coordinate System

**false easting**
- the easting of the central meridian is shifted by 500.000 meters
- eliminates negative numbers

**false northing**
- the northing on the southern hemisphere is shifted by 10.000.000 meters
- eliminates negative numbers

![utm-zone](kartographie/utm-zone-css.png)

**example 1**

<span style="color:red">32</span> N <span style="color:blue">439596</span> /  <span style="color:green">5967780</span>

- The coordinate is on the north hemisphere (N) in UTM zone <span style="color:red">32</span> 
  - 32 zone = central meridian is at 9° eastern longitude
- The point located **60404** meters west of the central meridian of zone 32
  - 500000 m - <span style="color:blue">439596</span> m = **60404** m
- The point is located <span style="color:green">5967780</span> meters from equator to the North


**example 2**

<span style="color:red">32</span> S <span style="color:blue">439596</span> /  <span style="color:green">4032220</span>

- The coordinate is on the southern hemisphere (S) in UTM zone <span style="color:red">32</span> 
  - 32 zone = central meridian is at 9° eastern longitude
- The point located **60404** meters west of the central meridian of zone 32
  - 500000 m - <span style="color:blue">439596</span> m = **60404** m
- The point is located **5967780** meters from equator to the South
  - 10000000 m - <span style="color:green">4032220</span> = **5967780** m


#### UTM Grid Coordinates

| Example | Description |
| ------- | ----------- |
| <span style="color:red">32</span> U <span style="color:blue">439596</span> /  <span style="color:green">5967780</span> | <span style="color:red">zone</span>, band, <span style="color:blue">easting</span> /  <span style="color:green">northing</span> in meter |

**band (latitude)**
- indicates geographical latitude
- 8° hight

![utm-grid](kartographie/utm-grid.png)

![Wikipedia-UTM-Grid](https://upload.wikimedia.org/wikipedia/commons/e/ed/Utm-zones.jpg)


### MGRS

- UTM zones independent of the UTM bands, are divided into squares (100 km x 100 km)
- parallel to the central meridian
- denominated with letter pairs

**Military Map Reading 201**
- http://earth-info.nga.mil/GandG/coordsys/mmr201.pdf

![Uni-Stuttgart](http://www.killetsoft.de/image/presse/t_0901/utm.jpg)


### Gauß-Krüger-Coordinates

| Format | Description |
| ------- | ----------- |
| <span style="color:red">4</span> <span style="color:blue">405057.629</span> / <span style="color:green">5368263.248</span> | <span style="color:red">central meridian</span> <span style="color:blue">easting</span> /  <span style="color:green">northing</span> in meter |

**projection**
- transversal Mercator projection
- conformal transversal cylindrical projection

**reference ellipsoid**
- B.W. Bessel

**zone**
- 3° of longitude in width
  - 1,5° to the east of central meridian
  - 1,5° to the west of central meridian

**central meridian**
- longitude line in the middle of a zone
- central meridian are numbered
- first central meridian is at 3°

**false easting**
- the easting of the central meridian is shifted by 500.000 meters
- eliminates negative numbers

#### Example

| Example | Description |
| ------- | ----------- |
| <span style="color:red">4</span> <span style="color:blue">405057.629</span> / <span style="color:green">5368263.248</span> | <span style="color:red">central meridian</span> <span style="color:blue">easting</span> /  <span style="color:green">northing</span> in meter |

- the coordinate is in the zone of the central meridian number <span style="color:red">4</span> 
  - 4th central meridian = 12° longitude 
- the point is located **94 942.371** meters west of the central meridian
  - y = <span style="color:blue">405057.629</span> m - 500000 m = **-94 942,371** m 
- the point is located <span style="color:green">5368263.248</span> meters from equator
  - x = <span style="color:green">5368263.248</span> 

## further reading and videos

**Intro to coordinate systems and UTM projection**
- https://www.youtube.com/watch?v=HnWNhyxyUHg

**NOAA - UTM**
- https://www.ngs.noaa.gov/TOOLS/utm.html

**Display Formats of UTM Coordinates - How to Deal with Them? (english & german)**
- http://www.killetsoft.de/t_0901_e.htm

**reddit - What is the difference between UTM and MGRS coordinate systems?**
- https://www.reddit.com/r/CampingandHiking/comments/124y3c/map_question_what_is_the_difference_between_utm/

**Coordinate System Jargon: geoid, datum, projection**
- https://www.youtube.com/watch?v=Z41Dt7_R180


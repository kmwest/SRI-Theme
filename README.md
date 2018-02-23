<!-- README.md is generated from README.Rmd. Please edit that file -->
SRI Package (Themes and Color Palettes)
=======================================

How to Install
--------------

``` r
devtools::install_github("kmwest/SRI")
```

Usage
-----

``` r
library(SRI)

# See palette options
names(sri_palettes)
#> [1] "sricool"    "srisunset"  "srioranges" "sriblues"   "sricolors" 
#> [6] "sricolors2" "dcfscolors"
```

Available functions
-------------------

-   theme\_sri
-   sri\_palette

Palettes
--------

### sricool

``` r
sri_palette("sricool")
#> [1] "#ECF36C" "#A3DC75" "#66C081" "#38A187" "#288181" "306070"  "#344154"
#> [8] "#2D2534"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "sricool"
```

### srisunset

``` r
sri_palette("srisunset")
#> [1] "#ecbc6c" "#cf5a5c" "#af5578" "#8f4c7a" "#6d416b" "#41324d"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "srisunset"
```

### srioranges

``` r
sri_palette("srioranges")
#> [1] "#FFC79D" "#F0A472" "#DB834E" "#C1652F" "#A34915" "#833100"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "srioranges"
```

### sriblues

``` r
sri_palette("sriblues")
#>  [1] "#032F3A" "#13424F" "#255664" "#3A6B78" "#50808C" "#69959F" "#83AAB2"
#>  [8] "#A0C0C3" "#BDD6D4" "#DDECE4"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "sriblues"
```

### sricolors

``` r
sri_palette("sricolors")
#> [1] "#034d78" "#7c332a" "#2a7c4d" "#442c7c" "#7c4c2c"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "sricolors"
```

### sricolors2

``` r
sri_palette("sricolors2")
#> [1] "#034d78" "#7c332a" "#576160" "#7c2c3c" "#442c7c"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "sricolors2"
```

### dcfscolors

``` r
sri_palette("dcfscolors")
#> [1] "#5bd45b" "#c92935" "#e5623b" "#06a2b2" "#f0cc59" "#0723B1"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "dcfscolors"
```

Example
-------

``` r
library("ggplot2")
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(size = 3) + theme_sri() + scale_color_manual(values=sri_palette("sricool"))
```

![](figure/example_plot-1.png)

Quick format
------------

Add +sribasic to your ggplot to apply a quick set format. This applies theme\_sri and sets scale color and fill to "sricolors". For example:

``` r
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(size = 3) + sribasic
```

![](figure/sribasic_plot-1.png)

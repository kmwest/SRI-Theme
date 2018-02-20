#' list of custom SRI color palettes
#'
#' Use \code{\link{sri_palettes}} to construct palettes of desired length.
#'
#' @export

sri_palettes <- list(
  sricool = c("#ECF36C", "#A3DC75", "#66C081", "#38A187", "#288181", "306070", "#344154", "#2D2534"),
  srisunset = c("#ecbc6c", "#cf5a5c", "#af5578", "#8f4c7a", "#6d416b", "#41324d"),
  srioranges = c("#FFC79D","#F0A472","#DB834E","#C1652F","#A34915","#833100"),
  sriblues = c("#032F3A","#13424F","#255664","#3A6B78","#50808C","#69959F","#83AAB2","#A0C0C3","#BDD6D4","#DDECE4"),
  sricolors = c("#034d78", "#7c332a","#2a7c4d","#442c7c","#7c4c2c"),
  sricolors2 = c("#034d78", "#7c332a","#576160","#7c2c3c","#442c7c"),
  dcfscolors = c("#5bd45b", "#c92935", "#e5623b", "#06a2b2", "#f0cc59", "#0723B1")
)

#dcfscolors palette. Palette is applied in alphabetical order (eastern, Northern, etc.). Statewide is purple so that is the last one

#' An SRI palette generator
#'
#' These are custom SRI color palettes
#'
#' @param n Number of colors desired.
#'   If omitted, uses all colours.
#' @param name Name of desired palette. Choices are:
#'   \code{sricolors}, \code{sricolors2},  \code{sricool},
#'   \code{srisunset}, \code{srioranges},  \code{sriblues}
#' @param type Either "continuous" or "discrete". Use continuous if you want
#'   to automatically interpolate between colours.
#'   @importFrom graphics rgb rect par image text
#' @return A vector of colours.
#' @export
#' @keywords colors
#' @examples
#' sri_palette("sricolors")
#' sri_palette("sricool")
#' sri_palette("srisunset")
#'
#'ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
#'geom_point(size = 3) +
#'scale_color_manual(values = sri_palette("sricolors"))
#'
#'
#' # If you need more colours than normally found in a palette, you
#' # can use a continuous palette to interpolate between existing
#' # colours
#' pal <- sri_palette(12, name = "sricool", type = "continuous")
#' image(volcano, col = pal)

sri_palette <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)

  pal <- sri_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }

  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}

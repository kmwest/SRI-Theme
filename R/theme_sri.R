#' SRI theme for plots
#'
#' This is a modification of theme_minimal
#' @param font Helvetica
#' @keywords SRI theme
#' @export
#' @examples
#' Theme_sri()

Theme_SRI <- function(base_size=12, font="Helvetica"){
  titletxt <- ggplot2::element_text(size=base_size-2, colour = "#404040", hjust = 0.5)
  subtitletxt <- ggplot2::element_text(size=base_size-3, colour = "#404040", hjust = 0.5)
  txt2 <- ggplot2::element_text(size=base_size-3, colour = "#404040")

  ggplot2::theme_minimal(base_size = base_size, base_family = font)+

    #specify font sizes
    ggplot2::theme(
      text = txt2,
      plot.title=titletxt,
      plot.subtitle=subtitletxt)
}

#' SRI theme for plots
#'
#' This is a modification of theme_minimal
#' @param font Helvetica
#' @keywords SRI theme
#' @export
#' @examples
#' theme_sri()

theme_sri <- Theme_SRI



#' SRI basic theme and colors
#'
#' Apply basic theme and colors to plots. This is a combination of theme_sri and sets the default color palette to "sricolors".
#' Use for simple plots only with 1-5 qualitative colors
#' @export
#' @examples
#'ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
#'geom_point(size = 3) +
#'sribasic


sribasic <- list(theme_sri() , ggplot2::scale_fill_manual(values=sri_palette("sricolors")), ggplot2::scale_color_manual(values=sri_palette("sricolors")))




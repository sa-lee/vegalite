#' Add cell size to main Vega-Lite spec
#'
#' Short version: set this to control the height and with of a single plot panel.
#' It will also be the size of panels in a faceted/trellis plot, so make sure your
#' viewport height/width (set in the main call to the widget) is as large as you
#' want it to be (otheriwse this will do it's best to calculate it but will probably
#' not be what you ultimately want).
#'
#' At its core, a Vega-Lite specification describes a single plot. When a
#' facet channel is added, the visualization is faceted into a trellis plot,
#' which contains multiple plots. Each plot in either a single plot or a trellis
#' plot is called a cell. Cell configuration allows us to customize each individual
#' single plot and each plot in a trellis plot.
#'
#' @param width the width of the single plot or each plot in a trellis plot when
#'        the visualization has continuous x-scale. (If the plot has ordinal x-scale, the
#'        width is determined by the x-scale’s bandSize and the cardinality of the x-scale.
#'        If the plot does not have a field on x, the width is derived from scale config’s
#'        bandSize for all marks except text and from scale config’s textBandWidth for text mark.)
#'        Default value: \code{200}
#' @param height the height of the single plot or each plot in a trellis plot when
#'        the visualization has continuous y-scale. (If the visualization has ordinal y-scale,
#'        the height is determined by the bandSize and the cardinality of the y-scale. If the
#'        plot does not have a field on y, the height is scale config’s bandSize.)
#'        Default value: \code{200}
#' @references \href{http://vega.github.io/vega-lite/docs/config.html#cell-config}{Vega-Lite Cell spec}
#' @export
cell_size <- function(vl, width=200, height=200) {

  vl$x$config$cell$width <- width
  vl$x$config$cell$height <- height

  vl

}
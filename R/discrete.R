#' List of discrete colours
#'
#'
paintR_colors <- list(union  = c( "#235789", "#ed1c24"),
                      pastel = c("#FF6961",
                                 "#AEC6FC",
                                 "#F6D0B1",
                                 "#7FD1B9",
                                 "#C3B1E1")
                      )

#' Function to choose palette
#'
#' @param palette Character name of palette. Either "union" or "pastel".
#' @param reverse Logical. Should the palette be reversed? Defaults to FALSE.
#' @export
paintR_cols <- function(palette = NULL, reverse = FALSE) {

  if (is.null(palette)) return (paintR_colors)
  if(!(palette %in% names(paintR_colors))){
    stop("palette should be one of the palettes provided by paintR (see ?paintR_cols).\n")
  }

  pal <- paintR_colors[[palette]]
  if (reverse) pal <- rev(pal)
  pal
}

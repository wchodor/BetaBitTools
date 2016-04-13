#' GG Theme for Plots for Project Beta Bit
#'
#' @param ... Will be passed to `theme_bw()`
#'
#' @author
#' Przemyslaw Biecek, \email{przemyslaw.biecek@@gmail.com}
#'
#' @export
theme_BB <- function(...) {
  theme_bw(...) + theme(text=element_text(family="xkcd", size=14),
                     panel.border=element_rect(color="white"))
}

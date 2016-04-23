#' Code/Decode Commands
#'
#' @param dcode vector of characters that should be coded/decoded.
#'
#' @author
#' Przemyslaw Biecek, \email{przemyslaw.biecek@@gmail.com}
#'
#' @export
dcode <- function(text) {
  tmp1 <- c(LETTERS, letters)
  tmp2 <- setdiff(unique(unlist(strsplit(text, split=""))), tmp1)
  let <- c(tmp1, tmp2)
  names(let) <- c(rev(tmp1), tmp2)
  sapply(strsplit(text, split=""), function(x){
    paste(let[x], collapse="")
  })
}

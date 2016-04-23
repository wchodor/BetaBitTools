#' Read and Decode Commands
#'
#' Read file with commands from a directory and use the 'decode' function to decode it.
#'
#' @param fname Name of a file to read and transform.
#'
#' @examples
#' \dontrun{
#'  get_commands("./misc/proton/commands.txt")
#' }
#'
#' @author
#' Przemyslaw Biecek, \email{przemyslaw.biecek@@gmail.com}
#'
#' @export
get_commands <- function(fname) {
  lines <- readLines(fname)
  tlines <- grep(lines, pattern="## TASK")
  tstart <- tlines + 2
  tend <- c(tlines[-1]-1, length(tlines))

  # tasks ids
  tnames <- gsub(lines[tlines], pattern="## TASK: +", replacement="")
  tcont <- sapply(seq_along(tlines), function(i){
    paste(lines[tstart[i]:tend[i]], collapse="\n")
  })
  tcont <- dcode(tcont)
  names(tcont) <- tnames
  tcont
}

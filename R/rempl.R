
#' remplacement de valeurs manquantes
#'
#' @param x numeric vector
#' @param method choix entre moyenne et mediane
#'
#' @return a numeric
#' @export
#' @importFrom stats median
#'
#' @examples
#' imput_na(c(1,2,NA,6,7)) #

imput_na <- function(x, method = c("moyenne", "mediane")) {
  method <- match.arg(method)
  if (anyNA(x)) {
    if (method == "moyenne") {
      x[is.na(x)] <- mean(x, na.rm = TRUE)
    } else {
      x[is.na (x)] <- median(x, na.rm = TRUE)
    }
  }
  return(x)
}

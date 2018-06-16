#' Print data as is
#'
#' @return external data set
#' @export
#'
#' @examples print_external_in_body()
print_external_in_body <- function() {
    external_only
}

#' Print param as is
#'
#' @param x object to return
#'
#' @return param as is
#' @export
#'
#' @examples
#' print_external_from_argument(x = "user_defined")
print_external_from_argument <- function(x = external_only) {
    x
}

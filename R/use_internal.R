#' Print data as is
#'
#' @return external data set
#' @export
#'
#' @examples print_internal_in_body()
print_internal_in_body <- function() {
    external_and_internal
}

#' Print param as is
#'
#' @param x object to return
#'
#' @return param as is
#' @export
#'
#' @examples
#' print_internal_from_argument(x = "user_defined")
print_internal_from_argument <- function(x = external_and_internal) {
    external_and_internal
}

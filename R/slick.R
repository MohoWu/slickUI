#' Slick carousel
#'
#' @param ... Div elements to show in the slider.
#'
#' @return
#' @export
#'
#' @examples slick(shiny::div("content1"), shiny::div("content2"))
slick <- function(...) {

  shiny::div(
    class = "slider",
    ...
  )

}

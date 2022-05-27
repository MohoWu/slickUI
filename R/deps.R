#' use_slick
#'
#' Use in UI to add dependencies for winbox to work
#'
#' @export
#'
#' @examples use_slick()
use_slick <- function() {
  slick_deps <- list(
    htmltools::htmlDependency(
      name = "slick",
      version = "1.8.1",
      src = c(file = "slick-1.8.1"),
      stylesheet = c("slick.css", "slick-theme.css"),
      script = "slick.js",
      package = "slickUI"
    ),
    htmltools::htmlDependency(
      name = "slickUI",
      version = "0.1.0",
      src = c(file = "slickUI"),
      stylesheet = "slickUI.css",
      script = "slickUI.js",
      package = "slickUI"
    )
  )

  htmltools::tagList(slick_deps)

}

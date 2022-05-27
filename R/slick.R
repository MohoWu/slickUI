#' Slick carousel
#'
#' @param ui Elements to show in the slider.
#' @param dots Whether to show dots.
#' @param infinite infinite scrolling
#' @param slidesToShow number of slides to show in each window
#' @param slidesToScroll number of slides to scroll each time
#'
#' @return
#' @export
#'
#' @examples slick(ui = shiny::tagList(shiny::div("content1"), shiny::div("content2")))
slick <- function(dots = TRUE,
                  infinite = TRUE,
                  slidesToShow = 1,
                  slidesToScroll = 1,
                  ui) {

  shiny::tagList(

		shiny::div(
		  class = "slider",
		  ui
		),
		tags$script(HTML(
		  glue::glue(
		    "$('.slider').slick({
			dots: {{tolower(dots)}},
			infinite: {{tolower(infinite)}},
			slidesToShow: {{slidesToShow}},
			slidesToScroll: {{slidesToScroll}}
		});
		console.log(`slider-configured`);",
		.open = "{{", .close = "}}")
		))
  )


}

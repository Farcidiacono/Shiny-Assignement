library(shiny)
require(shiny)
shinyUI(fluidPage(
  titlePanel("Define your BMI"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("Slider2", "Move the slider to define your weight (kg)", 0, 250, 0),
      sliderInput("Slider3", "Move the slider to define your height (cm)", 0, 200, 0),
      checkboxInput("show_xlab", "Show/Hide x Axis Label", value=TRUE), 
      checkboxInput("show_ylab", "Show/Hide y Axis Label", value=TRUE)
          ),
    mainPanel(
      h3("Graph of BMI: If your BMI is 18.5 to <25, it falls within the normal. If your BMI is 25.0 to <30, it falls within the overweight range. If your BMI is 30.0 or higher, it falls within the obese range."),
      textOutput("text1"),
      plotOutput("plot1")
      )
  )
))

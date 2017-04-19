library(shiny)

shinyServer(function(input, output) {
  
  output$text1=renderText(input$Slider2/((input$Slider3/100)*(input$Slider3/100)))
  output$plot1 <- renderPlot({
    set.seed(2017-04-19)
    dataX <- input$Slider2
    dataY <- input$Slider3
    xlab <- ifelse(input$show_xlab, "Weight (kg)", "")
    ylab <-ifelse(input$show_ylab, "Height (cm)", "")
    plot(dataX, dataY, xlab=xlab, ylab=ylab)
   })
  })

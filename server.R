

shinyServer(function(input, output) {
  
  output$main_plot <- renderPlot({
    
    if(input$param=="Ozone"){
    hist(airquality$Ozone,
         probability = TRUE,
         breaks = 20,
         ylab="Ozone",
         main = "Graph of Temperature against Ozone")
  }
  if(input$param=="Solar.R"){
    hist(airquality$Solar.R,
         probability = TRUE,
         breaks = 20,
         ylab="Solar.R",
         main = "Graph of Temperature against Ozone")
  }
  if(input$param=="Wind"){
    hist(airquality$Wind,
         probability = TRUE,
         breaks = 20,
         ylab="Solar.R",
         main = "Graph of Temperature against Ozone")
  }
  if(input$param=="Temp"){
    hist(airquality$Temp,
         probability = TRUE,
         breaks = 20,
         ylab="Solar.R",
         main = "Graph of Temperature against Ozone")
  }
    
  })
})

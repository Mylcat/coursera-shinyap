

shinyUI(bootstrapPage(
  
  selectInput(inputId = "param",
              label = "Number of bins in histogram (approximate):",
              choices = c("Ozone", "Solar.R", "Wind", "Temp"),
              selected = "Temp"),
  

  
  plotOutput(outputId = "main_plot", height = "300px"),
  
  # Display this only if the density is shown
  conditionalPanel(condition = "input.density == true",
                   sliderInput(inputId = "bw_adjust",
                               label = "Bandwidth adjustment:",
                               min = 0.2, max = 2, value = 1, step = 0.2)
  )
  
))

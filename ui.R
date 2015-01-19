library(shiny)

shinyUI( 
  pageWithSidebar(
    # Application title 
    headerPanel(div(style = "color:blue", "Plotting Data from 'mtcars' Dataset")),
    sidebarPanel(
      textInput('plottitle', 'Plot Title:', value = "MPG vs. Weight"),
      helpText("Adjusts the title of the plot."),
      selectInput('xvariable', 'Choose an X-axis Variable:', c("Weight", "Cylinders","Horsepower", "Transmission"), selected = "mtcars$wt"),
      helpText("Selects a different variable for plotting"),
      textInput('xtitle', 'X-axis Label:', value = "Weight"),
      helpText("Adjusts the x-axis label of the plot."),
      submitButton('Submit')
    ),
    mainPanel(
      p("1. Use the dropdown box to the left to change the variable plotted on the x-axis."),
      p("2. Adjust the plot title and x-axis label by changing the text in the respective boxes."),
      p("Note: A regression line is automatically included in each plot."),
      plotOutput("newPlot")
    ) 
  )
)
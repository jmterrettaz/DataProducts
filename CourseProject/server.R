#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        year <- input$year
        df <- data.frame(AirPassengers, year = trunc(time(AirPassengers)), 
                         month = month.abb[cycle(AirPassengers)])
        selected <- df[df$year==year,c(3,1)]
        plot_title <- paste('Air passengers for year',year )
        barplot(height = as.vector(selected$AirPassengers), 
                names.arg = selected$month,
                main = plot_title)
        
        
    })

})

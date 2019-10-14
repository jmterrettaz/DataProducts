#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Monthly Air Passengers Numbers 1949-1960"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        
        sidebarPanel(
            numericInput("year", 
                         "Select the year for which you want to see the number of air passengers:",
                         min = 1949,
                         max = 1960,
                         value = 1949,
                         step = 1)
        
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))

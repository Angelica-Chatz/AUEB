library(shiny)

data<-read.csv("tdatafile.csv", header=TRUE)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$museumPlot <- renderPlot({
    
    
    # Render a barplot
    x<-data[,input$Museum]
    
    barplot(x,
            names=c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"),
            col="violetred",
            ylab="Number of Visitors",
            xlab="Month")
  })
})

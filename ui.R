library(shiny)
# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Museum by Month"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("Museum", "Museum:", 
                    choices=colnames(tplotdata)),
        hr(),
        helpText("Data from ELSTAT")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("museumPlot"),
        
        h2("Visitors' Traffic to museums of the entire Greek territory during the year 2014"),
        p("Authors: Karampatsos Stasinos, Chatzimoschou Angeliki"),
        p("This is an interactive graph presenting the visitors' traffic to every museum in Greece, conscerning the year 2014."),
        p("Tools: R Studio ( libraries: XL Connect & Shiny )"),
        p("Data Source: http://www.statistics.gr/portal/page/portal/ESYE")
      
        
      )
      
    )
  )
)

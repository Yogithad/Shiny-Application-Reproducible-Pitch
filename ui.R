# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Use a fluid Bootstrap layout
fluidPage(    
    
    # Give the page a title
    titlePanel("Telephones by region"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
        
        # Define the sidebar with one input
        sidebarPanel(
            helpText("Graph depicting telephone ownership from 1951 to 1961. Use the drop-down menu to look at different geographies."),
            selectInput("region", "Region:", 
                        choices=colnames(WorldPhones)),
            hr(),
            helpText("Data from AT&T (1961) The World's Telephones.")
        ),
        
        # Create a spot for the barplot
        mainPanel(
            plotOutput("phonePlot")  
        )
        
    )
)
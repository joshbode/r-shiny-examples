library(shiny)

shinyUI(
    pageWithSidebar(
        headerPanel('TEST!'),
        sidebarPanel(		
			getTool("tool")
		),
        mainPanel(
			textOutput("char")
		)
    )
)


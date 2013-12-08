library(shiny)

shinyServer(function(input, output, session) {

	val=reactive({
		if (!is.null(input$tool)) {return(input$tool)}
		else {return("none")}
	})
	
	output$char <- renderText({val()})
})


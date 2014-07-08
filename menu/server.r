library(shiny)

shinyServer(function(input, output, session) {

  observe({

    cat(sprintf("Tool: %s\n", input$tool))

    if (input$tool == 'menu_0') {
      output$ABC = renderText("yo!")
    }

    output$char = renderText(
      paste0("Tool: ", input$tool)
    )

  })

})

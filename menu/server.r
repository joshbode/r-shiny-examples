library(shiny)

shinyServer(function(input, output, session) {

  val = reactive({
    if (input$tool != "") {
      return(input$tool)
    }
    else {
      return("none")
    }
  })

  output$char = renderText({
    paste0("Tool is: ", val())
  })

})

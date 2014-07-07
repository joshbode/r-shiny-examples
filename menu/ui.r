library(shiny)

# list of tools - could be dynamicaly generated
tools = list(
  menu_0="Menu 0",
  "Menu 1"=list(
    "Menu 1.1"=list(
      menu_1_1_1="Menu 1.1.1",
      menu_1_1_2="Menu 1.1.2"
    ),
    menu_1_2="Menu 1.2"
  ),
  "Menu 2"=list(
    menu_2_1="Menu 2.1"
  )
)

shinyUI(
  fluidPage(
    tags$head(tags$link(rel='stylesheet', type='text/css', href='style.css')),
    nav('tool', tools, brand="JB"),
    headerPanel('Header Panel'),
    sidebarPanel('Sidebar Panel'),
    mainPanel(
      p('Main Panel'),
      textOutput('char')
    )
  )
)

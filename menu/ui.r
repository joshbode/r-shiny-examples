library(shiny)

# list of tools - could be dynamicaly generated
menus = tagList(
  tabPanel("Home", id='home', h1('Welcome!')),
  tabPanel("Menu 0", id='menu_0', p('Hi!'), textOutput('ABC')),
  navbarMenu("Menu 1",
    navbarMenu("Menu 1.1",
      tabPanel("Menu 1.1.1", id='menu_1_1_1'),
      tabPanel("Menu 1.1.2", id='menu_1_1_2')
    ),
    tabPanel("Menu 1.2", id='menu_1_2')
  ),
  navbarMenu("Menu 2",
    tabPanel("Menu 2.1", id='menu_2_1')
  )
)

shinyUI(
  fluidPage(
    tags$head(tags$link(rel='stylesheet', type='text/css', href='style.css')),
    nav(menus, id='tool', brand='home'),
    titlePanel('Title Panel'),
    sidebarLayout(
      sidebarPanel(width=3,
        textOutput('char')
      ),
      mainPanel(
        tabs(menus, id='tabs', brand='home')
      )
    )
  )
)

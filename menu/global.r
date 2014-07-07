library(shiny)

walk = function(x, level=1) {
  tagList(lapply(names(x), function(name) {
    obj = x[[name]]
    if (is.list(obj)) {
      return(
        tags$li(class='dropdown',
          tags$a(class='dropdown-toggle', 'data-toggle'='dropdown',
            href='#', name, tags$b(class='caret')
          ),
          tags$ul(class=ifelse(level == 1, 'dropdown-menu', 'dropdown-menu dropdown-submenu'),
            walk(obj, level + 1)
          )
        )
      )
    } else {
      return(tags$li(tags$a(href='#', 'data-value'=name, obj)))
    }
  }))
}

nav = function(id, x, brand='Home', nav_value='') {
  tagList(
    tags$head(tags$script(src='js/navbar.js')),
    tags$div(class='navbar navbar-fixed-top navbar-inverse', id=id, 'data-nav-value'=nav_value,
      tags$div(class='navbar-inner',
        tags$div(class='container-fluid',
          tags$a(class='brand', 'data-value'=nav_value, href='#', brand),
          tags$ul(class='nav navbar-nav', walk(x))
        )
      )
    )
  )
}

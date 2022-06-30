
#  ------------------------------------------------------------------------
#
# Title :   Memoria GRSS (inspirado em: Memory Hex - UI)
#    By : Jefferson Rodrigues (de: dreamRs)
#  Date : 2020/08/10
#    
#  ------------------------------------------------------------------------

library("shiny")

fluidPage(
  
  tags$head(
    tags$link(href="styles.css", rel="stylesheet", type="text/css"),
    tags$script(src = "http://platform.twitter.com/widgets.js")
  ),
  
  tags$div(
    class = "title-app",
    tags$h1("MEMÓRIA RSS"),
    tags$h4("Descubra os pares corretos!")
  ),
  tags$br(),
  
  tags$div(
    style = "width: 650px; margin: auto;",
    time_UI("timer"),
    tags$br(),
    lapply(
      X = seq_len(n_hex * 2),
      FUN = function(x) {
        hex_UI(id = paste0("module", x))
      }
    )
  )
  
)

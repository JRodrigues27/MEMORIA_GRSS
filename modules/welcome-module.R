

# Welcome module ----------------------------------------------------------


welcome_UI <- function(id) {
  ns <- NS(id)
  modalDialog(
    title = tags$h1(
      style = "text-align: center;",
      "BEM VINDO AO JOGO DA MEMÓRIA DO RESÍDUO!"
    ),
    tags$div(
      style = "text-align: center;",
      tags$p("Encontre os pares o mais rápido possível!"),
      tags$p("Clique numa figura para virá-la"),
      tags$p("Você só pode virar duas figurinhas por vez"),
      tags$p("Quando estiver pronto, clique no botão abaixo para jogar!")
    ), 
    footer = actionButton(
      inputId = ns("jogar"),
      label = "Jogar !",
      icon = icon("jogar"),
      style = "width: 100%"
    )
  )
}

welcome <- function(input, output, session) {
  
  id <- gsub("-$", "", session$ns(""))
  showModal(ui = welcome_UI(id))
  
  observeEvent(input$jogar, {
    removeModal()
  })
  
  return(reactive(input$jogar))
}


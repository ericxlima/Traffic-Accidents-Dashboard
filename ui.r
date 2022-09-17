library(shiny)

ui <- fluidPage(
    titlePanel("Traffic Accidents Dashboard"),
    sidebarLayout(
        sidebarPanel(
        radioButtons("radio", h3("Bairro:"),
            choices = list("BOA VIAGEM" = 1, 
                           "IMBIRIBEIRA" = 2,
                           "SANTO AMARO" = 3,
                           "BOA VISTA" = 4,
                           "MADALENA" = 5),
            selected = 1), # radioButtons
        dateRangeInput("dates", h3("Intervalo de datas:")),
        ), # sidebarPanel
        mainPanel(
        plotOutput(outputId = "distPlot")
        )  # mainPanel
    )  # sidebarLayout
)  # fluidPage

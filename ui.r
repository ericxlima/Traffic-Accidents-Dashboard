library(shiny)

ui <- fluidPage(
    titlePanel("Traffic Accidents Dashboard"),
    sidebarLayout(
        sidebarPanel(
        radioButtons("radio", h3("Bairro:"),
            choices = list("BOA VIAGEM" = "BOA VIAGEM", 
                           "IMBIRIBEIRA" = "IMBIRIBEIRA",
                           "SANTO AMARO" = "SANTO AMARO",
                           "BOA VISTA" = "BOA VISTA",
                           "MADALENA" = "MADALENA"),
            selected = "BOA VIAGEM"), # radioButtons
        dateRangeInput("dates", h3("Intervalo de datas:"), 
                       start = '2020-01-01',
                       end = '2020-12-31',
                       min = '2020-01-01',
                       max = '2020-12-31'),
        ), # sidebarPanel
        mainPanel(
        tabsetPanel(type = "tabs",
                    tabPanel("Resumo", verbatimTextOutput("summary")),
                    tabPanel('DataFrame', dataTableOutput('table')),
                    tabPanel("Plot", plotOutput("plot")),
                    tabPanel("Table", tableOutput("aaa")),
            )  # tabsetPanel
        )  # mainPanel
    )  # sidebarLayout
)  # fluidPage

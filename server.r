# Define server logic required to draw a histogram ----
server <- function(input, output) {
  
  

  # Input
  #d <- reactive({
  #  dist <- switch(1000,
  #                 norm = rnorm,
  #                 unif = runif,
  #                 lnorm = rlnorm,
  #                 exp = rexp,
  #                 rnorm)
  #  
  #  dist(input$n)
  #})

  # Plot
  output$summary <- renderText({
    bairro <- input$radio
    data_inicial = strptime(input$dates[1], format='%Y-%m-%d')
    data_final = strptime(input$dates[2], format='%Y-%m-%d')
    
    filtrado_df <- accidents_df[(accidents_df$bairro == bairro &
                                 accidents_df$data >= data_inicial &
                                 accidents_df$data <= data_final),]
    
    media_veiculos = mean(filtrado_df$veiculos)
    mediana_veiculos = median(filtrado_df$veiculos)
    moda_veiculos <- 0 # fazer depois...
    desvio_padrao_veiculos = sd(filtrado_df$veiculos)
    
    #  Colocar tudo isso numa tabela
    paste("You have selected", data_inicial, 'and', data_final, 
          '\n\nEstatísticas de Veículos envolvidos no bairro', bairro, 'por dia.', 
          '\nMédia de Veículos:', media_veiculos,
          '\nMediana de Veículos:', mediana_veiculos,
          '\nModa de Veículos', moda_veiculos,
          '\nDesvio Padrão de Veículos', desvio_padrao_veiculos)
  })


  output$table <- renderDataTable({
    bairro <- input$radio
    data_inicial = strptime(input$dates[1], format='%Y-%m-%d')
    data_final = strptime(input$dates[2], format='%Y-%m-%d')
    
    filtrado_df <- accidents_df[(accidents_df$bairro == bairro &
                                 accidents_df$data >= data_inicial &
                                 accidents_df$data <= data_final),]
    filtrado_df
    
    })

  # Summary
  #output$plot <- renderTable({
  #  accidents_df
  #  })

}
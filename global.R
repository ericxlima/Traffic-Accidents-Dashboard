
accidents_df = read.csv('data/processed_acidentes_2020.csv')
accidents_df$data <- strptime(accidents_df$data, format='%Y-%m-%d')

natureza_list = c('SEM VÍTIMA', 'COM VÍTIMA', 'VÍTIMA FATAL')
bairros_mais_comuns_list = c('BOA VIAGEM', 'IMBIRIBEIRA', 'SANTO AMARO', 
                             'BOA VISTA', 'MADALENA')
concervacao_via_list = c('Perfeito estado', 'Mal conservada', 'Mal iluminada')





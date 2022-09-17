# Traffic Accidents Dashboard
#

## Introduction
Data visualization is a powerful tool for understanding data. This dashboard is a simple example of how to use data visualization to understand traffic accidents in Recife, Brazil. The dashboard is built using the [Shiny](https://shiny.rstudio.com/) package in R. The data is from the [Autarquia de Trânsito e Transporte Urbano do Recife - CTTU](https://cttu.recife.pe.gov.br/) and is available for download [here](http://dados.recife.pe.gov.br/dataset/acidentes-de-transito-com-e-sem-vitimas).

## Requisit
```sh
# Run in R console
install.packages("shiny")
install.packages('DT')
```



## To do
O dashboard do Shiny deverá conter pelo menos uma aba, onde o usuário
deverá escolher os inputs e receber como saída:

- [x] Classe a ser analisada (input); 
- [x] Intervalo de datas em que a análise será feita (input);
- [ ] Uma tabela, contendo nome da classe, moda, média mediana e desvio padrão da série temporal a ser analisada;
- [ ] Na mesma tabela, o valor máximo e o mínimo atingido pela série;
- [ ] Gráfico em linha da série;
- [ ] Histograma da série;
- [ ] Boxplot da série.

#EXC03 ABCD
library(dslabs)
data(murders)
str(murders)
murders[1, 1] #Representa a seleção referente ao elemento posicionado na linha 1 e coluna 1 (nomes dos estados), nesse caso, Alabama.
murders[1,] #Representa a seleção de todas as informações associadas à entrada numero 1 nesse data frame, Alabama.
murders[,1] #Representa toda a coluna número 1, que diz respeito ao nome de cada estado no data frame.
murders[1:2,] #Igual como murders[1,], mas agora visualizamos as linhas um a dois, com toda informação das colunas.
murders[,3:4] #Representa a seleção de todas as entradas no data frame referente às informaçõesde sobre região e população.

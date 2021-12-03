#Carregando pacotes


library(dplyr)
library(tidyverse)



# Importando banco de dados


leaf.traits<-read.table("leaf_traits.csv", header = T, dec=",", sep=";")

wd<-read.table("wood_density.csv",header = T, dec=",", sep=";")

categorical.traits<-read.table("categorical_traits.csv",header = T, dec=",", sep=";")
categorical.traits<-as_tibble(categorical.traits)




#Media dos atributos foliares por por espécies
leaf.traits.mean<- leaf.traits %>%
                     group_by(Species) %>%
                     summarize(mean.la = mean(Leaf.area, na.rm = FALSE),
                      mean.sla = mean(Specific.Leaf.Area, na.rm = FALSE))
                      


#Media da densidade da madeira por espécies

wd.mean <- wd %>%
            group_by(Species) %>%
             summarize(mean.wd = mean(Wood.Density, na.rm = FALSE),
                       mean.h = mean(Height, na.rm = FALSE))

dim(wd)


#Tabela de espécies com valores médios de atributos funcionais

join_1<-inner_join(leaf.traits.mean, wd.mean)
sp_traits<-inner_join(join_1, categorical.traits)


#Contagem do número de árvores/amostradas de madeira 
dim(wd)[1]

#Contagem do número de folhas
sum(leaf.traits$N)


#Especies com caracterização completa
sp_traits$Species


exoticas<-c('Hovenia dulcis',
            'Ligustrum lucidum',
            'Morus nigra',
            'Pinus elliottii',
            'Pinus taeda')

sp_traits_exotic<-sp_traits[sp_traits$Species %in% exoticas,]


#transformar coluna Species em row.names

sp_traits_final<- sp_traits %>% remove_rownames %>% column_to_rownames(var="Species")


# #exportar como CSV
# 
#write.table(sp_traits_final, file = "atributos_funcionais_por_especies.csv", sep=";", dec=",")

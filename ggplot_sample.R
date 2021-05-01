library(tidyverse)
data("CO2")
view(CO2)
print(head(CO2))
print(tail(CO2))
print(?CO2)
print(summary(CO2))
print(rownames(CO2)[which.max(CO2$uptake)])
print(rownames(CO2)[which.min(CO2$uptake)])
print(mean(CO2$uptake))
print(unique(CO2$Type))
print(unique(CO2$Treatment))
print(ggplot(data=CO2)+
        geom_bar(mapping=aes(x=conc)))
print(ggplot(data=CO2)+
        geom_point(mapping=aes(x=conc,y=uptake)))
print(ggplot(data=CO2)+
        geom_histogram(mapping=aes(x=uptake),binwidth=0.2))
print(ggplot(data=CO2)+
        geom_histogram(mapping=aes(x=uptake),binwidth =0.1)+
        facet_wrap(~Plant))
print(ggplot(data=CO2,mapping=aes(x=uptake,colour=Treatment))+
        geom_freqpoly(binwidth=0.1))
print(ggplot(data=CO2,mapping=aes(x=conc,y=uptake))+
        geom_boxplot(mapping=aes(group=cut_width(Plant,0.1))))


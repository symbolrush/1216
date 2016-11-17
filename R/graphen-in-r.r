library(graph)
source("http://bioconductor.org/biocLite.R")
libiocLite("graph")
??graph
library(graph)
set.seed(123)
g1 = randomEGraph(as.character(c('s',1:8,'t')), edges=10)
g1
plot(g1)
source("http://bioconductor.org/biocLite.R")
biocLite("Rgraphviz")

require(treedater)
tree <- ape::read.tree('/home/niemamoshiri/COVID19/output_files/rooted.no_outgroup.tre')
seqlen <- 29808
times_tab <- read.csv('/home/niemamoshiri/COVID19/intermediate_files/treedater/times_treedater.txt', header=FALSE)
times <- setNames(times_tab[,2], times_tab[,1])
out <- dater(tree, times, seqlen, clock='uncorrelated', omega0=0.000003, numStartConditions=0, ncpu=4)
write.tree(out, '/home/niemamoshiri/COVID19/output_files/dated.tre')

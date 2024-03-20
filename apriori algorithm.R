install.packages("arules")
library(arules)

transactions <- list(c("milk", "bread", "butter"), c("milk", "bread"), c("milk", "butter"), c("milk", "bread", "butter"), c("milk", "bread"))
rules <- apriori(as(transactions, "transactions"), parameter = list(supp = 0.1, conf = 0.8))
inspect(rules)

library(dplyr)
library(ggplot2)
#1
library(readr)
movies <- read_csv("tmdb_5000_movies.csv")
credits <- read_csv("tmdb_5000_credits.csv")

#2
#a
movies$homepage = NULL
movies$keywords = NULL
movies$original_language = NULL
movies$original_title = NULL
movies$overview = NULL
movies$production_companies = NULL
movies$status = NULL
movies$tagline = NULL
#b
movies <- unique(movies, by = "id")
#c
movies <- subset(movies, revenue != 0)
movies <- subset(movies, budget > 100)
#d
class(movies$release_date) == "Date"
#e
movies
credits_cast <- credits
credits_cast$title = NULL
credits_cast$crew = NULL
colnames(credits_cast) <- c("id", "cast")
credits_cast
movies <- left_join(x=movies, y=credits_cast, by = "id")

#3
#a
expensive5 <- movies %>% slice_max(budget, n = 5)
cheap5 <- movies %>% slice_min(revenue, n = 5)
rate_exp_avg <- mean(expensive5$vote_average)
rate_chp_avg <- mean(cheap5$vote_average)
expense_exp_avg <- mean(expensive5$budget)
expense_chp_avg <- mean(cheap5$budget)
print(paste("O custo médio dos filmes caros foi de $", round(expense_exp_avg, 2), " e o dos baratos de $",
            expense_chp_avg, ". Uma diferença de uma ordem de magnetude.", sep = ""))
print(paste("Enquanto isso a média de avaliações para os mais caros foi de ", round(rate_exp_avg, 2), 
            " e a dos mais baratos foi de ", round(rate_chp_avg, 2), sep = ""))
print("Devido a uma diferença inicialmente pequena pelo fato de estarmos comparando extremos, podemos concluir que a nota de um filme não pode ser descrita apenas levando o gasto como consideração.")

#b
top5rev <- (sort(movies$revenue, decreasing = TRUE))[5]
movies$title[which(movies$revenue >= top5rev)]
movies %>% slice_max(revenue, n = 5)

#c
movies$profit <- movies$revenue - movies$budget
top5_profit <- movies %>% slice_max(profit, n = 5)
bot5_profit <- movies %>% slice_min(profit, n = 5)
bot5_profit$title

#d
(movies %>% slice_max(popularity, n = 5))$title

#e
avg_duration <- mean(movies$runtime)

#f
score_7_higher <- movies %>% filter(vote_average >= 7)
score_7_higher
as.fact
#4
lucrativos <- movies %>% filter(revenue-budget >= 50000000 & budget > 1001)
year <- as.numeric(format(lucrativos$release_date,'%Y'))

#WEB SCRAPPING USING R
#======================
  
#Add 'SelectorGadget' extension to Chrome
# Webpage = "https://www.imdb.com/search/title/?title_type=feature&num_votes=25000,&sort=user_rating,desc"
  
install.packages("rvest")
install.packages("dplyr")
library(rvest)
library(dplyr)
link = "https://www.imdb.com/search/title/?title_type=feature&num_votes=25000,&sort=user_rating,desc"
page = read_html(link)

name = page %>% html_nodes(".lister-item-header a") %>% html_text()

rating = page %>% html_nodes(".ratings-imdb-rating strong") %>% html_text()

year = page %>% html_nodes(".text-muted.unbold") %>% html_text()
synopsis = page %>% html_nodes(".ratings-bar+ .text-muted") %>% html_text()

name_html = page %>% html_nodes(".lister-item-header a")
year = page %>% html_nodes(".text-muted.unbold") %>% html_text()
rating = page %>% html_nodes(".ratings-imdb-rating strong") %>% html_text()
synopsis = page %>% html_nodes(".ratings-bar+ .text-muted") %>% html_text()

movies = data.frame(name, year, rating, synopsis, stringAsFactors = FALSE)

write.csv(movies, "movies.csv")
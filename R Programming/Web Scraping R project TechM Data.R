#web scraping using selector gadget

install.packages("rvest")
install.packages("dplyr")
library(rvest)
library(dplyr)
link = "https://www.moneycontrol.com/company-article/techmahindra/news/TM4"
page = read_html(link)

#News = page %>% html_nodes(".PB10 strong")%>% html_text()
News = page %>% html_nodes(".g_14bl")%>% html_text()
#newstime = page%>% html_nodes(".MT15 , .a_10dgry")%>% html_text()
newstime = page%>% html_nodes(".a_10dgry")%>% html_text()
#Date = page %>% html_nodes(".a_10dgry")%>% html_text()
#Date = page %>% html_nodes("")
#news = page %>% html_nodes("//*[@id="mc_mainWrapper"]/div[2]/div[2]/div[3]/div[2]/div[2]/div/div[3]/div[1]/div[1]/div[2]/a/strong") %>% html_text()


latestnews = data.frame(News)
newsonetime = data.frame(newstime)

overalldata = data.frame(News,newsonetime,stringsAsFactors = FALSE)
View(overalldata)

View(latestnews)
View(newsonetime)
write.csv(latestnews, "latestnews.csv")
getwd()


getwd()

# Here's an explanation of each part:

##Main Code
#movies = data.frame(name, year, rating, synopsis, stringAsFactors = FALSE)

# 
# data.frame() function:
# 
# This function is used to create a data frame in R.
# It combines the vectors name, year, rating, and synopsis into a data frame.
# name, year, rating, synopsis:
# 
# These are assumed to be vectors containing information about movies, such as the name, year of release, rating, and synopsis.


# stringAsFactors = FALSE:
# 
# This argument is included to specify that character vectors should be treated as characters and not automatically converted to factors. In R, by default, character vectors are often converted to factors, but setting this argument to FALSE prevents that behavior.


# movies:
# 
# This is the name assigned to the resulting data frame.
# So, in summary, the code is creating a data frame named movies from vectors name, year, rating, and synopsis. Each vector represents a column in the data frame, and the data frame is structured to store information about movies, including their name, year of release, rating, and synopsis. The stringAsFactors = FALSE argument ensures that character vectors are treated as characters in the resulting data frame.

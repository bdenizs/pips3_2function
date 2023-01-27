#function 1=>remind_me
remind_me <- function() {
  homework <- c("Pips","Personality Disorders", "SWAP", "GRP", "STAT1")
  print(homework)
  groceries <- c("tomatoes", "lettuce", "pineapple")
  print(groceries)
  
}
remind_me()

#function 2=>cheat
cheat <- function(cheat_code) {
  if (cheat_question == 2){
    temp <- read.delim("https://bit.ly/3GLVQ86", sep = ",")
    plot(temp$DATE, temp$TMAX)
  }
  else if (cheat_question == 9) {
    install.packages("ggstatsplot")
    library(ggstatsplot)
    install.packages("tidyverse")
    library(tidyverse)
    ggbetweenstats(data = ToothGrowth, x = supp, y = len)
  }
  else if (cheat_question == 11) {
    install.packages("gifski")
    library(gifski)
    install.packages("png")
    library(png)
    install.packages("gganimate")
    library(gganimate)
    install.packages("cranlogs")
    library(cranlogs)
    
    data_cran <- cran_downloads(packages = c("caret", "tidymodels"), from = "2014-01-01", to= "2022-12-31")
    
    anim <- ggplot(data_cran, aes(x = date, y = count, group = package, color = package)) +
      geom_line() +
      transition_reveal(along = date)
    
    animate(anim)
  }
}

library(tidyquant)
library(rmarkdown)
library(purrr)
Equity.Analyser <- function(x) {
  render("TQ-Parameters.qmd", params = list(ticker = x), output_file = paste0(x,"-TQ-Parameters.html"))
}
SP400 <- tq_index("SP400") 
SP400 %>% select(symbol) %>% data.frame(x=.) %>% walk(., Equity.Analyser)

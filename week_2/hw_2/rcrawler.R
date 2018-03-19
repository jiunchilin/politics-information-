#RCrawler#

library(httr)
library(knitr)

url <- "https://api.kivaws.org/v1/teams/using_shortname/buildkiva.json"
res = GET(url)
res_json = content(res)
raw = (data.frame(do.call(rbind,res_json$teams)))

kable(raw)

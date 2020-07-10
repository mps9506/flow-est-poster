## this script will render the rmd file into html
## then export the html page to a pdf

rmarkdown::render(here::here("flow-est-poster/flow-est-poster.Rmd"))


## note: chrome needs to be installed
pagedown::chrome_print(here::here("flow-est-poster/flow-est-poster.html"), 
                       "flow-est-poster.pdf", 
                       format = "pdf",
                       options = list(landscape = FALSE,
                                      paperWidth = 16,
                                      paperHeight = 9,
                                      marginTop = 0,
                                      marginBottom = 0,
                                      marginLeft = 0,
                                      marginRight = 0))


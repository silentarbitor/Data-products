library(shiny)
library(UsingR)
data(mtcars)

fit= lm(mpg ~ wt, data = mtcars)
slope<-coef(fit)[2]
names(slope)<- "weight to mpg"

displacement <- function(weight) {weight/1000*slope + coef(fit)[1]}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$weight})
    output$prediction <- renderPrint({displacement(input$weight)})
  }
)




# plot(mtcars$wt, mtcars$mpg, xlab = "Weight (/1000 lb)", ylab = "MPG", col = "red", cex = 1.1, pch = 20)
# abline(lm(mtcars$mpg~mtcars$wt))
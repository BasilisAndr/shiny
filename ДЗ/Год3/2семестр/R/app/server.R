library(shiny)
words <- read.csv("./data/all_words.csv", header = T, sep = ",")

shinyServer(function(input, output) {
  output$table <- DT::renderDataTable(DT::datatable({
    data <- words
    if (input$tch != "All") {
      data <- data[data$language == input$tch,]
    }
    data
  }))
})
library(shiny)
words <- read.csv("./data/all_words.csv")
shinyUI(fluidPage(
titlePanel("One thousand Most Frequently Used Words"),

  mainPanel(
    fluidRow(

      column(4,
             selectInput("tch",
                         "Choose language:",
                         c("All",
                           unique(as.character(words$language))))
            )
      ,
      column(8,
          "Это приложение показывает 1000 самых частотных слов некоторых языков. Данные основаны на материалах сайта http://www.101languages.net/common-words/. Нельзя гарантировать, что данные собраны хорошо (процесс сбора данных на сайте не описан), ровно как и не стоит верить переводам."
            )
))
,
fluidRow(
  DT::dataTableOutput("table")
)
))
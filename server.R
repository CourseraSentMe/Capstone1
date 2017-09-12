source(file = "C:/Users/Frank/Desktop/Coursera Assignments/CAPSTONE/Capstone")
load("./ng1.RData", envir=.GlobalEnv)
load("./ng2.RData", envir=.GlobalEnv)
load("./ng3.RData", envir=.GlobalEnv)
load("./ng4.RData", envir=.GlobalEnv)
load("./ng5.RData", envir=.GlobalEnv)
load("./ng6.RData", envir=.GlobalEnv)
load("./ng7.RData", envir=.GlobalEnv)
library(shiny)


shinyServer(function(input, output) {
  
  reactive({lengthA <- stri_count_words(input$textA)})
  reactive({textA1 <- stri_split_fixed(input$textA, " ")})
  
    
  reactive({if (lengthA == 0) {
    reactive({bg <- "No Input"})
    } else if(lengthA == 1){
      reactive({textA1a <- textA1[[1]][1:2]})
      reactive({textA1a <- paste(paste("^", textA1a[1], sep = ""), textA1a[2])})
      reactive({bg <- ng2[max(grep(textA1a, ng2$ng2)),]})
      reactive({bg <- stri_split_fixed(bg$ng2, " ")})
      reactive({bg1 <- bg[[1]][2]})
    } else if (lengthA == 2) {
      reactive({textA1a <- textA1[[1]][1:3]})
      reactive({textA1a <- paste(paste("^", textA1a[1], sep = ""), textA1a[2], textA1a[3])})
      reactive({bg <- ng3[max(grep(textA1a, ng3$ng3)),]})
      reactive({bg <- stri_split_fixed(bg$ng3, " ")})
      reactive({bg1 <- bg[[1]][3]})
    } else if (lengthA == 3) {
      reactive({textA1a <- textA1[[1]][1:4]})
      reactive({textA1a <- paste(paste("^", textA1a[1], sep = ""), textA1a[2], 
                                 textA1a[3], textA1a[4])})
      reactive({bg <- ng4[max(grep(textA1a, ng4$ng4)),]})
      reactive({bg <- stri_split_fixed(bg$ng4, " ")})
      reactive({bg1 <- bg[[1]][4]})
    } else if (lengthA == 4) {
      reactive({textA1a <- textA1[[1]][1:5]})
      reactive({textA1a <- paste(paste("^", textA1a[1], sep = ""), textA1a[2], 
                                 textA1a[3], textA1a[4], textA1a[5])})
      reactive({bg <- ng5[max(grep(textA1a, ng5$ng5)),]})
      reactive({bg <- stri_split_fixed(bg$ng5, " ")})
      reactive({bg1 <- bg[[1]][5]})
    } else if (lengthA == 5) {
      reactive({textA1a <- textA1[[1]][1:6]})
      reactive({textA1a <- paste(paste("^", textA1a[1], sep = ""), textA1a[2], 
                                 textA1a[3], textA1a[4], textA1a[5], textA1a[6])})
      reactive({bg <- ng6[max(grep(textA1a, ng6$ng6)),]})
      reactive({bg <- stri_split_fixed(bg$ng6, " ")})
      reactive({bg1 <- bg[[1]][6]})
    } else if (lengthA > 5) {
      reactive({textA1a <- textA1[[1]][1:7]})
      reactive({textA1a <- paste(paste("^", textA1a[1], sep = ""), textA1a[2], 
                                 textA1a[3], textA1a[4], textA1a[5], textA1a[6], textA1a[7])})
      reactive({bg <- ng7[max(grep(textA1a, ng7$ng7)),]})
      reactive({bg <- stri_split_fixed(bg$ng7, " ")})
      reactive({bg1 <- bg[[1]][7]})
    }
  })
    
  output$bg1 <- reactive({renderText({bg1})})
  output$textA <- reactive({renderText({textA})})
  
})
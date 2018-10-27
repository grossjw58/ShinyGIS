#server.R
library(shiny)
source("LoadDataServer.R")
function(input,output){
  dataSetList=list()
  data=callModule(LoadData,"data")
  tabIndex=reactiveVal(0)
  observeEvent(data(),{
    tabIndex(tabIndex() + 1)
    appendTab("myTabs", tabPanel(tabIndex(), list(DT::renderDataTable(data()))), select=TRUE)
  })
  #output$dataTable=DT::renderDataTable(csvData())
}
#server.R
library(shiny)
source("LoadDataServer.R")
function(input,output){
  dataSetList=reactiveValues()
  dataNameList=reactiveValues()
  data=callModule(LoadData,"data")
  
  
  observeEvent(data(),{
    temp=data()
    dataSetList$temp$name=temp$data
    dataNameList$temp$name=temp$name
    ##appendTab("myTabs", tabPanel(data()$name, list(DT::renderDataTable(temp$data))), select=TRUE)
  })
}
#server.R
library(shiny)
source("LoadCSV.R")
function(input,output){
  dataSetList=reactive({list()})
  csvData=callModule(LoadCSV,"csv")
  output$dataTable=DT::renderDataTable(csvData())
}
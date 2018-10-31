#server.R
library(shiny)
source("LoadDataServer.R")
source("RegressionServer.R")
source("PcaServer.R")
function(input,output){
  dataSetList=reactiveValues()
  dataNameList=reactiveValues()
  
  
  data=callModule(LoadData,"data")
  
  pca=callModule(PcaSer,"pca")
  
  observeEvent(data(),{
    temp=data()
    name=paste("\"",data()$name,"\"",sep="")
    dataSetList[[name]]=temp$data
    dataNameList[[name]]=temp$name
    appendTab("myTabs", tabPanel(data()$name, list(DT::renderDataTable(dataSetList[[name]]))), select=TRUE)
  })
  
  regression=callModule(RegressionServer,"regression",dataNames=dataNameList,dataList=dataSetList)

}
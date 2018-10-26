# library(DT)
# 
# DataPanelsUI=function(id){
#   ns=NS(id)
#   tagList(
#     ##panelSet to hold all the data that is added
#     tabsetPanel("dataPanel")
#   )
# }
# 
# AddDataPanel=function(input,output,session,dataTable){
#   appendTab("dataPanel", tabPanel(DT::renderDataTable(dataTable())), select=TRUE)
# }
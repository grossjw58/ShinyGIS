LoadDataUI = function(id){
  ns=NS(id)
  tagList(
    fileInput(ns("Input"),"Select A File"),
    actionButton(ns("Button"),"Load")
  )
}
RegressionUI=function(id){
  ns=NS(id)
  tagList(
    # Input: Select the dependent variable ----
    selectInput(ns("depVar"), 
      "Select a dependent variable"
    ),
    # Input: Select the type independent variables ----
    selectInput(ns("indVar"), 
      "Select an independent variable(s)",
      multiple=T
    )
  )
}
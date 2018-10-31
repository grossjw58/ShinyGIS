RegressionUI=function(id){
  ns=NS(id)
  tagList(
    # Input: Select the dataset ----
    selectInput(ns("dataSet"),
      "Select the dataset",
      choices=c("data Set")
    ),
    # Input: Select the dependent variable ----
    selectInput(ns("depVar"),
      "Select a dependent variable",
      choices=c("y variable")
    ),
    # Input: Select the type independent variables ----
    selectInput(ns("indVar"),
      "Select an independent variable(s)",
      multiple=T,
      choices=c("x variables")
    ),
    # Horizontal line ----
    tags$hr(),
    # Input: Action button to confirm run Regression
    actionButton(ns("clickers"),
      "Clickme"
    )
  )
}
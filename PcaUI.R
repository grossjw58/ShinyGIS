PcaUI = function(id){
  ns=NS(id)
  tagList(
    # Input: Action button to confirm data load
    actionButton(ns("pcaButton"),
      "Run PCA"
    )
  )
}
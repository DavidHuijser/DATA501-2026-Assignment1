#### Generate Data 
run_analysis <- function(x, y, start_par) {
  result <- fit_nonlinear(
    x,
    y,
    start_par
  )
  
  result$plot <- plot_model(
    x,
    y,
    result$model
  )
  
  
  return(result)
}

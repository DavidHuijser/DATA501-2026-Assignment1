plot_model <- function(x, y, model) {
  
  data <- data.frame(x,y,model)
  p1 <- ggplot(data, aes(x = x, y = y)) + geom_point() +
    geom_line(aes(x = x, y = model), col="red")
  p1
}

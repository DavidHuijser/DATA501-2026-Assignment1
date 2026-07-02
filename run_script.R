# run the main program 
library(ggplot2)
source("fit_nonlinear.R")
source("predict_model.R")
source("plot_model.R")
source("pipeline.R")


# load the data
my_data <-read.csv("DATA501_Assignment1_data.csv", row.names = NULL)
head(my_data)
x <- my_data$x
y <- my_data$y

# set initial parameters
start_par <-  data.frame(a = c(0.001), b=c(0.0001), c=c(0.1),A=c(0.1),B= c(0.1), freq=c(4.5), n=c(6), model_type=c("A") )  



# execute the code
temp <- run_analysis(x,y,start_par)

# visualize the data and the model
temp$plot

length(temp$par)


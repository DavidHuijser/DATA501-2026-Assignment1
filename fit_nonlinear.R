fit_nonlinear <- function(x, y, start_par) {
  
  n <- start_par$n
  model_type <- start_par$model_type 
  print(paste("Model type", model_type))
  if (model_type == 'A')
  {
     # initialize
     init_par <- c(start_par$a,start_par$b, start_par$c, start_par$A, start_par$B, start_par$freq)
     
     # objective function
     objective_function <- function(par) {
      y_pred <- predict_model_A(x, par)
      sum((y - y_pred)^2)
      }
    
     # optimize
     result <- optim(init_par, objective_function)
   
     # get model
     result$model <- predict_model_A(x, result$par)    
  }
  result
  
}





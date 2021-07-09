"It is best practice to hold out some of your data for testing in order to get a better estimate of how your models will perform on new data,
especially when you use very powerful machine learning techniques. Linear regression doesn't really fall into that category, but we are going to practice this anyway. 
The tidymodels package rsample has functions that help you specify training and testing sets."


'----------------------------------------------------------------------------------------------------------------------------------------'

"Training data and testing data with rsample:-"

library(tidymodels)

car_split <- car_vars %>%
    initial_split(prop = 0.8,
                  strata = aspiration)

car_train <- training(car_split)
car_test <- testing(car_split)
'---------------------------------------------------------------------------------------------------------------------------------------'


"Training data and testing data"

'
Build your model with your training data
Choose your model with your validation data, or resampled datasets
Evaluate your model with your testing data
'



library(tidymodels)


## a linear regression model specification
lm_mod <- linear_reg() %>%
    set_engine("lm")

lm_fit <- lm_mod %>%
    fit(log(mpg) ~ ., 
        data = car_train)

## a random forest model specification
rf_mod <- rand_forest() %>%
    set_mode("regression") %>%
    set_engine("randomForest")

fit_rf <- rf_mod %>%
    fit(log(mpg) ~ ., 
        data = car_train)        
        
        
        'Three concepts in specifying a model
Model type
Model mode
Model engine'

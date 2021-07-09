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

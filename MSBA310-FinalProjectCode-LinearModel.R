#Read the data:
df_tv=read.csv("C:\\Users\\Lenovo\\OneDrive\\01_Education\\02_AUB\\01_Fall2023\\MSBA310-Applied Statistical Analysis\\MainProject\\TV Dataset 3-Manual.csv")
attach(df_tv)

#Adjust data types:
df_tv$Inches <- as.factor(df_tv$Inches)
df_tv$Resolution <- as.factor(df_tv$Resolution)
df_tv$Smart <- as.factor(df_tv$Smart)
df_tv$Brand <- as.factor(df_tv$Brand)
df_tv$Revenue <- as.numeric(df_tv$Revenue)
df_tv$Refresh.Rate <- as.factor(df_tv$Refresh.Rate)
df_tv$Sound.Quality <- as.factor(df_tv$Sound.Quality)
df_tv$Connectivity.Options <- as.factor(df_tv$Connectivity.Options)
df_tv$Energy.Efficiency <- as.factor(df_tv$Energy.Efficiency)
df_tv$Response.Time..ms. <- as.factor(df_tv$Response.Time..ms.)
df_tv$Month <- as.factor(df_tv$Month)
df_tv$Casa <- as.factor(df_tv$Casa)

#Linear Model:

#Splitting the data for training and validation:
set.seed(100)
split=sample(1:2, nrow(df_tv), replace = TRUE, prob=c(0.7, 0.3))
train=df_tv[split==1, ]
val=df_tv[split==2, ]

#Inserting the pred function for calculating RMSE:
pred_error<- function(actual,pred){
  mape <- mean(abs((actual - pred)/actual))*100
  mae=mean(abs(actual-pred))
  RMSE= sqrt(mean((actual-pred)^2))
  
  vec=c(mape,mae, RMSE) 
  
  names(vec)= c("MAPE", "MAE", "RMSE")
  return(vec)
}

#Model 1: All Predictors
model1=lm(Tot.Qty~ Pixel.Density..PPI.+Unit.Price +relevel(as.factor(Inches),ref="52")+ relevel(as.factor(Resolution),ref="UHD")+relevel(as.factor(Brand),ref="LG")+relevel(as.factor(Casa),ref="Bekaa")+Refresh.Rate+relevel(as.factor(Sound.Quality),ref="Basic")+relevel(as.factor(Connectivity.Options),ref = '2')+relevel(as.factor(Energy.Efficiency),ref = "A")+Response.Time..ms.+relevel(as.factor(Month),ref = "June"),data=train)
summary(model1)

#Model 1 RMSE:
pred1=predict(model1,val)
perform1=pred_error(val$Tot.Qty, pred1)
perform1

#Model 1 complexity:
#num_predictors1 <- length(coef(model1)) - 1 
#num_predictors1

#-------------------------------------------------------------------------------

#Model 2: Remove: PPI and Refresh Rate
model2=lm(Tot.Qty~Unit.Price +relevel(as.factor(Inches),ref="52")+ relevel(as.factor(Resolution),ref="UHD")+relevel(as.factor(Brand),ref="LG")+relevel(as.factor(Casa),ref="Bekaa")+relevel(as.factor(Sound.Quality),ref="Basic")+relevel(as.factor(Connectivity.Options),ref = '2')+relevel(as.factor(Energy.Efficiency),ref = "A")+Response.Time..ms.+relevel(as.factor(Month),ref = "June"),data=train)
summary(model2)

#Multicolinearity:
library(car)
vif(model2)
vif2Squarred <- vif(model2)
vif2Squarred[, ncol(vif2Squarred)] <- vif2Squarred[, ncol(vif2Squarred)]^2
print(vif2Squarred)

#Model 2 RMSE:
pred2=predict(model2,val)
perform2=pred_error(val$Tot.Qty, pred2)
perform2

#Model 2 complexity:
#num_predictors2 <- length(coef(model2)) - 1 
#num_predictors2

#-------------------------------------------------------------------------------

#Model 3: Remove response time:
model3=lm(Tot.Qty~Unit.Price +relevel(as.factor(Inches),ref="52")+ relevel(as.factor(Resolution),ref="UHD")+relevel(as.factor(Brand),ref="LG")+relevel(as.factor(Casa),ref="Bekaa")+relevel(as.factor(Sound.Quality),ref="Basic")+relevel(as.factor(Connectivity.Options),ref = '2')+relevel(as.factor(Energy.Efficiency),ref = "A")+relevel(as.factor(Month),ref = "June"),data=train)
summary(model3)

#Multicolinearity:
library(car)
vif(model3)
vif3Squarred <- vif(model3)
vif3Squarred[, ncol(vif3Squarred)] <- vif3Squarred[, ncol(vif3Squarred)]^2
print(vif3Squarred)

#Model 3 RMSE:
pred3=predict(model3,val)
perform3=pred_error(val$Tot.Qty, pred3)
perform3

#Model 3 complexity:
#num_predictors3 <- length(coef(model3)) - 1 
#num_predictors3


#-------------------------------------------------------------------------------

#Model 4: Remove all except Unit Price, Inches, Casa:
model4=lm(Tot.Qty~Unit.Price +relevel(as.factor(Inches),ref="52")+relevel(as.factor(Casa),ref="Bekaa"),data=train)
summary(model4)

#Multicolinearity:
library(car)
vif(model4)
vif4Squarred <- vif(model4)
vif4Squarred[, ncol(vif4Squarred)] <- vif4Squarred[, ncol(vif4Squarred)]^2
print(vif4Squarred)

#Model 4: Interaction:
model4_interaction=lm(Tot.Qty~Unit.Price*relevel(as.factor(Inches),ref="52")*relevel(as.factor(Casa),ref="Bekaa"),data=train)
summary(model4_interaction)

#Model 4 RMSE:
pred4=predict(model4,val)
perform4=pred_error(val$Tot.Qty, pred4)
perform4

#Model 4 complexity:
#num_predictors4 <- length(coef(model4)) - 1 
#num_predictors4


#-------------------------------------------------------------------------------

#Comparative table:
perf_comp=rbind(perform1,perform2,perform3,perform4)
numb_predictors=c(12,10,9,3)
cbind(perf_comp,numb_predictors)

#Mean of total quantity in the validation dataset:
mean(val$Tot.Qty)


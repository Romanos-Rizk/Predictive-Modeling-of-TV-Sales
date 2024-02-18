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

#Libraries
library(rpart)
library(rpart.plot)

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

#CART 1
tree1 <- rpart(Tot.Qty ~ Casa+Brand+Smart+Inches+Resolution+Unit.Price+Refresh.Rate+Sound.Quality+Connectivity.Options+Energy.Efficiency+Pixel.Density..PPI.+Response.Time..ms.+Month, data = train, control = rpart.control(minbucket=50,minsplit=100,maxdepth=10,cp = 0.0001))
printcp(tree1)

bestcp=tree1$cptable[which.min(tree1$cptable[,"xerror"]),"CP"]
tree1.pruned=prune(tree1, cp = bestcp)
rpart.plot(tree1.pruned,
           type = 4,
           extra = 101,
           under = TRUE,
           faclen = 0,
           cex = 0.6, 
           tweak = 1.0, 
           box.palette = "RdBu",
           shadow.col = NA, 
           branch = 0.3  )

#CART 1: RMSE
val$pred1 <- predict(tree1.pruned, newdata = val, type = "vector")
errors1 <- pred_error(actual = val$Tot.Qty, pred = val$pred1)
print(errors1)

#Mean
mean(val$Tot.Qty)
n1=length(tree1.pruned$frame$var)
t1=sum(tree1.pruned$frame$var == "<leaf>")

#CART 1.1
tree1.1.pruned=prune(tree1, cp = 0.00052630 )
rpart.plot(tree1.1.pruned,
           type = 4,
           extra = 101,
           under = TRUE,
           faclen = 0,
           cex = 0.6,  
           tweak = 1.0,  
           box.palette = "RdBu",
           shadow.col = NA,  
           branch = 0.3  )

val$pred1.1 <- predict(tree1.1.pruned, newdata = val, type = "vector")
errors1.1 <- pred_error(actual = val$Tot.Qty, pred = val$pred.1.1)
print(errors1.1)

n1.1=length(tree1.1.pruned$frame$var)
t1.1=sum(tree1.1.pruned$frame$var == "<leaf>")

#CART 2

tree2 <-rpart(Tot.Qty ~ Casa+Brand+Smart+Inches+Resolution+Unit.Price+Refresh.Rate+Sound.Quality+Connectivity.Options+Energy.Efficiency+Pixel.Density..PPI.+Response.Time..ms.+Month, data = train, control = rpart.control(minbucket=50,minsplit=100,maxdepth=10))
printcp(tree2)

bestcp=tree2$cptable[which.min(tree2$cptable[,"xerror"]),"CP"]
tree2.pruned=prune(tree2, cp = bestcp)
rpart.plot(tree2.pruned,
           type = 4,
           extra = 101,
           under = TRUE,
           faclen = 0,
           cex = 0.6, 
           tweak = 1.0, 
           box.palette = "RdBu",
           shadow.col = NA, 
           branch = 0.3  )

#CART 2.1:
tree2.1.pruned=prune(tree2, cp = 0.010097)
rpart.plot(tree2.1.pruned,
           type = 4,
           extra = 101,
           under = TRUE,
           faclen = 0,
           cex = 0.6, 
           tweak = 1.0, 
           box.palette = "RdBu",
           shadow.col = NA, 
           branch = 0.3  )

val$pred2.1 <- predict(tree2.1.pruned, newdata = val, type = "vector")
errors2.1 <- pred_error(actual = val$Tot.Qty, pred = val$pred.2.1)
print(errors2.1)

results <- data.frame(
cp_values = c(0.0001, 0.0001, 0.01, 0.01),
   	numb_nodes = numb_nodes,
   	numb_leafs = numb_leafs,
  	MAPE = errors_Acomp[, "MAPE"],
   	MAE = errors_comp[, "MAE"],
   	RMSE = errors_comp[, "RMSE"],
   	row.names = c("tree1", "tree1.1", "tree2", "tree2.1")
)




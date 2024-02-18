#Read the data:
df_tv=read.csv("https://raw.githubusercontent.com/Romanos-Rizk/MSBA310-Project/main/TV-Dataset.csv")
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

library(ggplot2)

#-------------------------------------------------------------------------------


#Base R:
#boxplot(Tot.Qty~Casa,col="blue")

#Casa and Q, without legend:
ggplot(df_tv, aes(x = Casa, y = Tot.Qty, fill = Casa)) +
  geom_boxplot() +
  scale_fill_manual(values = rep("blue", nlevels(df_tv$Casa))) +
  labs(title = "Total Quantity of TVs Ordered by Casa", y = "Total Quantity") +
  theme_light() +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5),
    legend.position = "none"  # Removes the legend
  )

#-------------------------------------------------------------------------------

#Brand and Q:
#boxplot(Tot.Qty~Brand,col="blue")

#Brand and Q:
ggplot(df_tv, aes(x = Brand, y = Tot.Qty, fill = Brand)) +
  geom_boxplot() +
  scale_fill_manual(values = rep("blue", nlevels(df_tv$Brand))) +
  labs(title = "Total Quantity of TVs Ordered by Brand", y = "Total Quantity") +
  theme_light() +
  xlab("Brand") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5),
    legend.position = "none"  # Removes the legend
  )


#-------------------------------------------------------------------------------

#Inches and Q:
#boxplot(Tot.Qty~Inches,col="blue")


#Inches by Q
ggplot(df_tv, aes(x = Inches, y = Tot.Qty, fill = Inches)) +
  geom_boxplot() +
  scale_fill_manual(values = rep("blue", nlevels(df_tv$Inches))) +
  labs(title = "Total Quantity of TVs Ordered by Size", y = "Total Quantity") +
  theme_light() +
  xlab("Inches") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5),
    legend.position = "none"  # Removes the legend
  )

#-------------------------------------------------------------------------------

#Resolution and Q:
#boxplot(Tot.Qty~Resolution,col="blue")

#Resolution and Q:
ggplot(df_tv, aes(x = Resolution, y = Tot.Qty, fill = Resolution)) +
  geom_boxplot() +
  scale_fill_manual(values = rep("blue", nlevels(df_tv$Resolution))) +
  labs(title = "Total Quantity of TVs Ordered by Resolution", y = "Total Quantity") +
  theme_light() +
  xlab("Resolution") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5),
    legend.position = "none"  # Removes the legend
  )

#-------------------------------------------------------------------------------

#Sound Quality by Q:
#boxplot(Tot.Qty~Sound.Quality,col="blue")

#Sound Quality by Q:
ggplot(df_tv, aes(x = Sound.Quality, y = Tot.Qty, fill = Sound.Quality)) +
  geom_boxplot() +
  scale_fill_manual(values = rep("blue", nlevels(df_tv$Sound.Quality))) +
  labs(title = "Total Quantity of TVs Ordered by Sound Quality", y = "Total Quantity") +
  theme_light() +
  xlab("Sound Quality") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5),
    legend.position = "none"  # Removes the legend
  )


#-------------------------------------------------------------------------------

#Connectivity by Q:
#boxplot(Tot.Qty~Connectivity.Options,col="blue")

#Connectivity by Q:
ggplot(df_tv, aes(x = Connectivity.Options, y = Tot.Qty, fill = Connectivity.Options)) +
  geom_boxplot() +
  scale_fill_manual(values = rep("blue", nlevels(df_tv$Connectivity.Options))) +
  labs(title = "Total Quantity of TVs Ordered by Number of Ports", y = "Total Quantity") +
  theme_light() +
  xlab("Connectivity Options") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5),
    legend.position = "none"  # Removes the legend
  )
#-------------------------------------------------------------------------------

#Efficiency by Q:
#boxplot(Tot.Qty~Energy.Efficiency,col="blue")

#Efficiency by Q:
ggplot(df_tv, aes(x = Energy.Efficiency, y = Tot.Qty, fill = Energy.Efficiency)) +
  geom_boxplot() +
  scale_fill_manual(values = rep("blue", nlevels(df_tv$Energy.Efficiency))) +
  labs(title = "Total Quantity of TVs Ordered by Energy Efficiency", y = "Total Quantity") +
  xlab("Energy Efficiency") +
  theme_light() +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5),
    legend.position = "none"  # Removes the legend
  )

#-------------------------------------------------------------------------------

#Month by Q:
#boxplot(Tot.Qty~Month,col="blue")

#Month by Q:
ggplot(df_tv, aes(x = as.factor(Month), y = Tot.Qty, fill = Month)) +
  geom_boxplot() +
  scale_fill_manual(values = rep("blue", nlevels(df_tv$Month))) +
  labs(title = "Total Quantity of TVs Ordered by Month", y = "Total Quantity") +
  theme_light() +
  xlab("Month") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5),
    legend.position = "none"  # Removes the legend
  )


#-------------------------------------------------------------------------------

#Response Time by Q:
#boxplot(Tot.Qty~Response.Time..ms.,col="blue")

#Response Time by Q:
ggplot(df_tv, aes(x = as.factor(Response.Time..ms.), y = Tot.Qty, fill = Response.Time..ms.)) +
  geom_boxplot() +
  scale_fill_manual(values = rep("blue", nlevels(df_tv$Response.Time..ms.))) +
  labs(title = "Total Quantity of TVs Ordered by Response Time", y = "Total Quantity") +
  theme_light() +
  xlab("Response Time") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5),
    legend.position = "none"  # Removes the legend
  )



#-------------------------------------------------------------------------------

#Refresh Rate by Q:
#boxplot(Tot.Qty~Refresh.Rate,col="blue")

#Refresh Rate by Q:
ggplot(df_tv, aes(x = as.factor(Refresh.Rate), y = Tot.Qty, fill = Refresh.Rate)) +
  geom_boxplot() +
  scale_fill_manual(values = rep("blue", nlevels(df_tv$Refresh.Rate))) +
  labs(title = "Total Quantity of TVs Ordered by Refresh Rate", y = "Total Quantity") +
  theme_light() +
  xlab("Refresh Rate") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5),
    legend.position = "none"  # Removes the legend
  )

#-------------------------------------------------------------------------------

#Unit Price and Q:
#plot(Tot.Qty~Unit.Price)

#Unit Price and Q:
ggplot(df_tv, aes(x = Unit.Price, y = Tot.Qty)) +
  geom_point(color = "blue", alpha = 0.7) +
  labs(title = "Total Quantity and Unit Price", x = "Unit Price", y = "Total Quantity") +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5)  # Center the title
  )

#-------------------------------------------------------------------------------

#PPI and Q:
#plot(Tot.Qty~Pixel.Density..PPI.)

#PPI and Q:
ggplot(df_tv, aes(x = Pixel.Density..PPI., y = Tot.Qty)) +
  geom_point(color = "blue", alpha = 0.7) +
  labs(title = "Total Quantity and Pixel Density (PPI)", x = "Pixel Density (PPI)", y = "Total Quantity") +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5)  # Center the title
  )

df_tv$Pixel.Density..PPI. <- as.factor(df_tv$Pixel.Density..PPI.)
boxplot(Tot.Qty~Pixel.Density..PPI.)

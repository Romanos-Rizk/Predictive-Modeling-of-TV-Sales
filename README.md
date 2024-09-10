# Predictive Modeling of TV Sales

## Table of Contents:

- [Project Overview](#project-overview)
- [Problem Description](#problem-description)
- [Data Sources](#data-sources)
- [Methodology](#methodology)
- [Results](#results)
- [Recommendations](#recommendations)
- [References](#references)

## Project Overview:

This project focuses on forecasting TV sales for wholesalers using a dataset of 8,323 transactions from Linkers Group S.A.L. in Lebanon. The analysis utilizes regression models and Classification and Regression Trees (CART) to uncover factors influencing sales, such as unit price, size, and distribution channels. The goal is to provide insights for optimizing inventory management and addressing market demand dynamics.

## Problem Description:

- **Inventory Forecasting Challenge**: Wholesale appliance companies struggle to accurately forecast the inventory needed to meet market demand due to limited access to customer data, which is only available to retailers.
  
- **Data Limitations**: Companies rely on order transactions from retailers, providing limited details like pricing, quantity, and TV specifications, lacking direct insights into customer preferences and market trends.

- **Research Gap**: Existing literature mainly addresses business-to-customer sales, leaving a gap in strategies for wholesalers.

- **Objective**: To bridge the information gap and develop effective inventory management practices based on sales data and market trends.

## Data Sources:

The dataset consists of 8,323 TV sales transactions from Linkers Group S.A.L. in Lebanon, covering various attributes:
- **Total Quantity** per order
- **Size** (in inches): 25, 29, 32, 40, 41, 43, 45, 50, 52, 55, 58, 65, 75
- **Region**: Beirut, Bekaa, Mount Lebanon, North, South
- **Unit Price** (in $)
- **Response Time** (ms): 4, 10
- **Energy Efficiency Level**: A, B, C, D, E
- **Order Month**
- **Sound Quality**: Basic, Enhanced, Premium
- **Refresh Rate** (Hz): 60, 120
- **Pixel Density** (PPI)
- **Connectivity Options**: 2, 3, 4 ports
- **Brand**: LG, Panasonic, Samsung, Sony, TCL
- **Resolution**: HD, FHD, UHD

## Methodology:

To forecast TV sales effectively:
1. **Target Variable**: Total Quantity per order transaction.
2. **Regression Analysis**: Examined the relationship between various predictors and the target variable.
3. **Classification and Regression Trees (CART)**: Built models to predict sales demand based on predictors.

## Results:

1. **Unit Price Sensitivity**: Price has a negative effect on sales quantity, suggesting that price adjustments are critical for optimizing sales.
2. **Size Impact**: Larger TV sizes (65 and 75 inches) show lower demand, potentially due to high pricing or market preferences.
3. **Regional Demand**: Higher sales in Beirut and Mount Lebanon indicate these regions have higher demand or more effective distribution.
4. **Price Segmentation**: The significant split at a unit price of $1238 suggests the need for inventory segmentation around this price point.
5. **Regional Strategy**: Different sales patterns in regions like Bekaa versus Beirut and Mount Lebanon indicate the need for tailored inventory and marketing strategies.
6. **Energy Efficiency Preference**: Higher demand for 'A' rated energy efficiency models suggests stocking more of these TVs.
7. **Connectivity Features**: TVs with more than 3 connectivity options are preferred, highlighting the need for inventory focus on these models.

## Recommendations:

1. **Pricing Strategy**: Reevaluate pricing to balance between maximizing sales and maintaining profit margins.
2. **Inventory Focus**: Adjust inventory strategies for larger sizes or focus on more popular sizes.
3. **Regional Marketing**: Enhance marketing and distribution efforts in high-demand regions and replicate successful strategies from these areas.
4. **Price Segmentation**: Ensure inventory variety around key price points to cater to different market segments.
5. **Regional Customization**: Tailor inventory and marketing based on regional preferences and sales patterns.
6. **Stock Energy-Efficient Models**: Increase the stock of 'A' rated energy-efficient TVs.
7. **Connectivity Options**: Prioritize stocking TVs with more connectivity features.

## References:

- Büttner, D., & Rabe, M. (2021). [Sales Forecasting in the Electrical Industry – An Illustrative Comparison of Time Series and Machine Learning Approaches](https://ieeexplore.ieee.org/document/9525747). 2021 9th International Conference on Traffic and Logistic Engineering.
- Hwang, S., Yoon, G., Baek, E., & Jeon, B.-K. (2023). [A Sales Forecasting Model for New-Released and Short-Term Product: A Case Study of Mobile Phones](https://www.mdpi.com/2079-9292/12/15/3256). Electronics, 12(3256).
- Sleiman, R., Mazyad, A., Hamad, M., Tran, K.-P., & Thomassey, S. (2022). [Forecasting Sales Profiles of Products in an Exceptional Context: COVID-19 Pandemic](https://link.springer.com/article/10.1007/s44196-022-00161-x). International Journal of Computational Intelligence Systems, 15(99).
- Xu, Q., & Sharma, V. (2017). [Ensemble Sales Forecasting Study in Semiconductor Industry](https://link.springer.com/content/pdf/10.1007/978-3-319-62701-4_3.pdf). Springer International Publishing.


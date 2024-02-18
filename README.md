# Predictive Modeling of TV Sales

## Table of Content:

- [Problem Overview](#Project-Overview)
- [Problem Description](#problem-description)
- [Data Sources](#data-sources)
- [Recommendations](#recommendations)
- [References](#references)

## Project Overview:

This project showcases TV sales forecasting for wholesalers, using a dataset of 8,323 transactions from Linkers Group S.A.L. in Lebanon. It applies regression models and regression trees to identify factors influencing sales, such as unit price, size, and distribution channels. Our findings reveal that key factors such as TV specifications, unit price, and distribution channels (Casa) significantly influence consumer purchasing decisions, aiding in inventory management. This work highlights the importance of data-driven decision-making in the dynamic electronics market, offering strategic insights for wholesalers.

## Problem Description:

- Wholesale appliance companies are facing a major challenge in accurately forecasting the inventory required to meet the market demands. The root of the problem is the lack of direct access to customer data, which is only available to retailers.

- This data includes crucial insights into the market trends and the evolving television specifications that play a significant role in the purchasing decisions of the customers. Wholesale companies can only utilize order transactions from retailers, which provide limited details like pricing, quantity, and TV specifications.

- Due to the lack of direct access to granular customer data, companies are struggling to make accurate predictions, which can result in inventory imbalances such as shortages and overstocking of products.

- Additionally, the existing literature does not cover the business-to-business aspect of the supply chain and only focuses on the business-to-customer. This leaves a gap and a lack of guidance for wholesalers seeking effective strategies to navigate these challenges.

- It is crucial for the wholesale company to bridge this information gap and develop informed and responsive inventory management practices aligned with dynamic market trends and customer preferences.

## Data Sources:

The data used for the analysis consists of 8323 order transactions of televisions made by appliance retailers in Lebanon. The data was obtained from Linkers Group S.A.L., a highly recognized wholesales company in the household appliances and consumer electronics fields

## Recommendations:

1. The negative coefficient for Unit.Price indicates that price is a sensitive factor in sales quantity. It is recommended to review the pricing strategy to find the optimal price points that can maximize sales without sacrificing profit margins too much.

2. The negative coefficients for larger sizes (65 and 75 inches) that are statistically significant imply that these models may be priced too high or not in high demand. Consider either adjusting the price or focusing inventory on sizes that are more positively correlated with sales quantity.

3. Significant positive coefficients for regions like Beirut and Mount Lebanon indicate higher sales quantities compared to the reference region (Bekaa). This suggests that these regions may have higher demand or more effective distribution strategies. It would be beneficial to concentrate marketing efforts and distribution resources in these areas or replicate the successful strategies from these regions in other areas.

4. The tree shows a split at a unit price of 1238, indicating that price is a significant factor in sales volume. The wholesaler should consider segmenting their inventory to ensure they have a variety of options above and below this price point to cater to different market segments.

5. The wholesaler should adjust their supply strategy based on regional preferences, as indicated by the splits on 'Casa'. Certain regions like 'Bekaa' show different sales patterns compared to 'Beirut' and 'Mount Lebanon'. Inventory should be allocated and marketed differently in these regions to optimize sales.

6. There is a split for energy efficiency, with category 'A' being a decision node. The wholesaler should stock a higher proportion of 'A' energy efficiency-rated TVs, as there seems to be a distinct market for these models.

7. A split occurs where the number of connectivity options is greater than 3, suggesting that TVs with more connectivity features are preferred. The wholesaler should ensure that their inventory is stocked with TVs that offer a higher number of connectivity options to meet this demand.

## References:

Büttner, D., & Rabe, M. (2021). [Sales Forecasting in the Electrical Industry – An Illustrative Comparison of Time Series and Machine Learning Approaches](https://ieeexplore.ieee.org/document/9525747). 2021 9th International Conference on Traffic and Logistic Engineering.

Hwang, S., Yoon, G., Baek, E., & Jeon, B.-K. (2023). [A Sales Forecasting Model for New-Released and Short-Term Product: A Case Study of Mobile Phones](https://www.mdpi.com/2079-9292/12/15/3256). Electronics, 12(3256).

Sleiman, R., Mazyad, A., Hamad, M., Tran, K.-P., & Thomassey, S. (2022). [Forecasting Sales Profiles of Products in an Exceptional Context: COVID-19 Pandemic](https://link.springer.com/article/10.1007/s44196-022-00161-x). International Journal of Computational Intelligence Systems, 15(99).

Xu, Q., & Sharma, V. (2017). [Ensemble Sales Forecasting Study in Semiconductor Industry](https://link.springer.com/content/pdf/10.1007/978-3-319-62701-4_3.pdf). Springer International Publishing.

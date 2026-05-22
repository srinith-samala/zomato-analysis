# zomato-analysis
Dataset: Zomato global restaurant data — 9551 rows, 17 columns

## Here I have analyzed 9000+ rows of zomato restaurant data 
### Here the data was mostly clean i just cast the data types of numeric columns 
### I asked some questions from data such as 
1) Which City has a Highest cost of average of two
2) Which restaurant has Highest average rating
3) Which city has a most number of restaurant
4) Does rating affect the pricing of the restaurant
5) Which City got the most votes

### After seeing from data I found some answers such as INSIGHTS FROM ZOMATO DATASET
1). I found that Jakarta has the highest average cost for two at 800,000 which is Indonesian Rupiah equal to around 5 USD. This matters because comparing costs across cities without currency conversion is misleading and can lead to wrong business decisions. The business should normalize all costs to a single currency like USD before doing any cross-country price analysis.

2) I found that 61 out of 9551 restaurants have a perfect 4.9 rating across multiple cities that means less than 1% of restaurants reach the top rating, meaning truly excellent restaurants are rare and hard to find on the platform. so we should feature these 61 restaurants prominently in their app as "Elite Restaurants" to help new users discover the best experiences immediately

3)I found that out of 9551 restaurant 5473 are based in new Delhi which means over populated restaurant in new Delhi instead Zomato should focused on city such as Consort Chatham-Kent, Cochrane, Clatskanie, Quezon City, Beach, Tagaytay City, Beechworth, Balingup. Zomato should conduct demand research in underrepresented cities before expanding restaurant partnerships there.

4) I found that as the price increases from cheap to moderate, the rating rises from 1.99 to 2.9. However, this trend does not hold when the price shifts from expensive to very expensive; in this case, the change in rating is quite minor, only moving from 3.68 to 3.81.
This indicates that higher prices are associated with higher ratings. In other words, when the price is high, the quality of service is generally better. Therefore, we should focus on promoting highly-rated restaurants to our customers.

5)) I found that Toit in Bangalore has the highest votes at 10,934 out of all restaurants globally in this dataset. This matters because it shows Bangalore has the highest customer engagement, meaning Zomato's user base is most active there. The business should prioritize new restaurant onboarding and promotional campaigns in Bangalore to capitalize on this engagement

## Tool Used
MySQL, Power BI
   

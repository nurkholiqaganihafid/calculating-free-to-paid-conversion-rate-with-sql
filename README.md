<div id="top"></div>

# 📌Calculating Free-to-Paid Conversion Rate with SQL
- Calculated the fraction of students who convert to paying customers after starting a course. The data used in this analysis includes **registration dates, engagement dates,** and **student subscription purchase dates**.

- **This analysis aims** to estimate the conversion rate from free-to-paid among students who have engaged with video content on the 365 platform. Additionally, it also aims to calculate several other key metrics and analyze the results.

- The following information about column values: [Click here](https://github.com/nurkholiqaganihafid/calculating-free-to-paid-conversion-rate-with-sql/blob/main/Schemas/Project%20Files%20-%20Legend.txt)

- Project content:
  - Created the Subquery
  - Created the Main Query
  - Interpretation

# 📌Outline
- [Business Questions](#business-questions)
- [Results](#results)
  - [Subquery](#Subquery)
  - [Main Query](#main-query)
    - [1st to 3rd Questions](#1st-to-3rd-questions)
  - [Interpretation](#interpretation)
    - [4th Question](#4th-question)

# 🎯Business Questions
[👆](#outline)
Business questions that will be answered through this data analysis include:
1. What is the free-to-paid conversion rate of students who have watched a lecture on the 365 platform?
2. What is the average duration between the **registration date** and when a student has **watched** a lecture for the first time (date of first-time engagement)?
3. What is the average duration between the date of **first-time engagement** and when a student **purchases** a subscription for the first time (date of first-time purchase)?
4. How can we **interpret** these results, and what are their **implications**?

# 🎯Results
## 📈Subquery
### 1st Question
[👆](#outline)
Combined results from 3 tables
<p align="center">
  <img alt="Subquery Results" title="Subquery Results" src="https://github.com/nurkholiqaganihafid/calculating-free-to-paid-conversion-rate-with-sql/assets/89395541/50a19a5a-0250-4f91-9474-0dc323cd8d59" width="750">
</p>

> The number of records in the resulting set is **20_255**.

## 📈Main Query
### 1st to 3rd Questions
[👆](#outline)
Used a subquery to retrieve three metrics.

<p align="center">
  <img alt="Main Query" title="Main Query" src="https://github.com/nurkholiqaganihafid/calculating-free-to-paid-conversion-rate-with-sql/assets/89395541/4dff4764-c86f-402e-90bf-85507c6fb026" width="750">
</p>

## 📈Interpretation
### 4th Question
[👆](#outline)
Understanding three metrics includes:

- Free-to-Paid Conversion Rate

> The fraction of students who purchase monthly, quarterly, or annual subscriptions from those who watch a lecture is about 11%—i.e., for every 100 students who come to the 365 platform, roughly 11 of them purchase a subscription. At first glance, this number seems relatively low.

> A significant number of students register on the platform out of curiosity. Nevertheless, we can outline why most students aren’t prompted to benefit from the program entirely. One factor contributing to this could be that we’re targeting a broader audience rather than focusing specifically on data science enthusiasts eager to begin their journey in the field.

- Average Duration Between Registration and First-Time Engagement

> Given the mean of the data set, we also need to calculate the median and mode. Calculating median and mode isn't as easy as in SQL—so I used Python. The results are as follows: [Click here](https://github.com/nurkholiqaganihafid/calculating-free-to-paid-conversion-rate-with-sql/blob/main/Part3_interpretation_solved.ipynb)

```
Mode: 0
Median: 0
Mean: 3.42
```

> The average student takes between **three and four days** to start watching lectures after registering on the platform. Ideally, it would be good if a new student starts watching lectures on their first day.

> The number that repeats the most in the data is **0**. Additionally, the number that sits in the middle of the dataset is also **0**. Such metric values indicate the **right-skewness** of the data—i.e., we can find outliers to the right, towards higher values, of the data distribution.

<p align="center">
  <img alt="Visual distribution of days_diff_reg_watch" title="Visual distribution of days_diff_reg_watch" src="https://github.com/nurkholiqaganihafid/calculating-free-to-paid-conversion-rate-with-sql/assets/89395541/d5e802e7-317f-4a42-82c3-1de1075b5286" width="750">
</p>

> Almost all students watch a lecture immediately after registering. Very few return to the platform to start a course several days or even a year after registration. One reason for returning could be because of a marketing campaign, a free-day campaign, etc.

- Average Duration Between First-Time Engagement and First-Time Purchase

> The results of Python are as follows:

```
Mode: 0
Median: 1
Mean: 26
```

> The average student takes about 26 days to purchase a subscription after becoming familiar with the product.

> The most occurring value is again 0. Therefore, students who purchase a subscription are prone to do it on the same day. The value in the middle of the dataset—assuming it’s ordered—is 1, which means that the people who buy on the same day are less than half of all users making a purchase. To be more specific, about 49% of the people purchase on the day they’ve watched a lecture for the first time. The mean value, however, assumes that the transition from free-plan to paying students happens for almost a month.

<p align="center">
  <img alt="Visual distribution of days_diff_watch_purch" title="Visual distribution of days_diff_watch_purch" src="https://github.com/nurkholiqaganihafid/calculating-free-to-paid-conversion-rate-with-sql/assets/89395541/0ed3ff7c-09fc-41f1-b162-e214823f0990" width="750">
</p>

> The data is skewed to the right, which can be inferred from the fact that the mode is smaller than the median, which is in turn smaller than the mean. Most users buy within a day or two after they watch the lecture. However, some people buy several months later. One reason may be that they like the content on the platform but have been waiting for the product to be offered at an exclusive price.


<p align="right"><a href="#top">Back to top</a></p>

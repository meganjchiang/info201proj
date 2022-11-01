# Education & Social Status in the United States: Project Proposal

## Code name: People Learning

## Project Name: Education & Social Status in the United States

### Authors

* Jacob Hilse: jhilse@uw.edu
* Megan Chiang: mjchiang@uw.edu
* Vincent Kao: hkao79@uw.edu
* Xuan Yi: xuany3@uw.edu

### Affiliation

INFO-201: Technical Foundations of Informatics - The Information School - University of Washington

### Date: Autumn 2022

## Abstract

We wanted to use this opportunity to investigate the highest level of education that Americans have received based on their demographics. We thought that this is important as one’s level of education received has an influence on their social status, however, the reverse relationship is true as well. We plan to create visualizations that can clearly demonstrate the differences in the level of education received between different demographic groups.


## Keywords

- Highest Level of Education
- College
- High School
- Social Status
- Demographics
- America
- Income

## Introduction

What is the relationship between a person's level of education received and their social status? We want to investigate this connection as it gives us insight into whether the structure of the current system in place inflicts disadvantages on people of certain demographics. We thought that this is an important question to look into, as there are a lot of job opportunities that require highly educated and trained workers, and the need for these people as well as the imbalances in education levels between different groups of people can create an unjust spread of power that most people fail to recognize as _privilege hazards_. This matters to all of us since we all fall under different categories and groups, and understanding the current system is the only way that we can challenge it and create better and fairer opportunities for more people in the future.


## Problem Domain

- **Project Framing**

According to the [United Census Bureau](https://www.census.gov/newsroom/press-releases/2022/educational-attainment.html), the highest level of education for people in America has increased in recent history, as shown by this graphic.

![Bachelor Higher Graph](educational-attainment-2022.webp)

With that being said, while the entire population are receiving more education on average, this statistic does not show the disparity between different groups of people. We wanted to look into how severe this inequality is and how it affects different demographics in this project by working with data that will help us explore the correlations between different people, their levels of education received, and their social status. We hope to use the data that we find to teach people who are oblivious to this situation and to help those who do not have as many opportunities as the others.

- **Human Values**

Some values that are vital aspects in our project include, but are not limited to, education, opportunities, social status, economic well-being, fairness, and power. We believe that all of these values are intertwined with one another, and most of them have a certain level of importance regardless of what class or identity that one falls under. A [CNN article](https://www.cnn.com/2019/06/06/success/college-worth-it) from which drew from a [Federal Reserve Bank of New York Study](https://libertystreeteconomics.newyorkfed.org/2019/06/despite-rising-costs-college-is-still-a-good-investment/) also points out that while a college education is likely to pay out in the long run, tuition is just too high for some people to afford. This [CNBC article](https://www.cnbc.com/2019/05/29/study-to-succeed-in-america-its-better-to-be-born-rich-than-smart.html) also echoes the same argument that all these factors creates complex relationships and disadvantages for those in lower socioeconomic status.

- **Direct Stakeholders**

  - Our project is focused around the **American public** and the education they received.

  - **Institutions and universities**, no matter public or private, low-level or high-level, provide people with an education.

  - **Financial aid and loan programs** offer different rates according to the recipient.

- **Indirect Stakeholders**

	- **Politicians** and their decision making can be affected by facts supported with data from our project.

	- When hiring workers, **corporations and employers** may consider their level of education. This project would bring attention to possible reasons behind a person's highest level of education.

	- **The media** could put more focus on reporting the unequal system of education in America.


- **Benefits**

	- Brings attention and awareness to an issue that is a privilege hazard to most people today.

	- Clearly shows disparities in higher education levels between various demographics.

	- Gives more people more opportunities to receive a higher-level education that they would not have gotten otherwise.

- **Harms**

	- Some people may lose opportunities if others gain them.

	- Peaceful protests could turn violent if they are not organized thoughtfully.

	- Could potentially create even more divisions and disagreements between different groups of people.


## Research Questions

#### 1) Do the differences in demographics affect the highest level of education that people receive in America?

This question is important to us since being college students ourselves, we recognize that not everyone has the opportunity to do the same, and we want to bring light and attention as to what that difference is.

#### 2) Which factors/demographics in particular have the greatest impact on the level of education a person receives?

It is important to know which factors are the most significant, because institutions, politicians, and the general public can prioritize them when they consider how to make higher education more equitable.

#### 3) How does one’s level of education received connect to their socioeconomic status?

In our rapidly advancing world, most good-paying jobs require some sort of high level education. However, certain communities may face difficulties with reaching a high level of education, so they could have limited employment opportunities. We want to better understand how this would ultimately affect their socioeconomic status.


## The Dataset

 - [1995_2015.csv](../data/1995_2015.csv)

This dataset allows us to look into the level of education for people grouped by their age range, and sex and can help us look into how the intersectionality have an impact on people’s level of education and whether age, sex, or a combination of both have a bigger effect. The dataset comes from the United States Census Bureau for Education Attainment from the years 1995, 2005, and 2015 respectively. We obtained the data from [kaggle](https://www.kaggle.com/datasets/noriuk/us-educational-attainment-19952015).

- [adult-test.csv](../data/adult-test.csv) & [adult-training.csv](../data/adult-training.csv)

These datasets help us answer our research questions and evaluate the intersectionality between level of education, race, sex, and income with various variables for which we can investigate their relationships with one another. These datasets also came from the United States Census and we obtained them from [kaggle](https://www.kaggle.com/datasets/johnolafenwa/us-census-data). It can also be obtained from another credible source: [UC Irvine Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/census+income).

- [poverty_status.csv](../data/poverty_status.csv)

This dataset shows us the relative socioeconomic status for people of different identities by whether they are above or below the poverty level. This further helps us understand which groups of people are more likely to be negatively impacted by their social status and lack of education, and it also includes more specific data including work experience and employment status as well as a margin of error. We obtained this dataset straight from the [United States Census Bureau](https://data.census.gov/cedsci/table?tid=ACSST1Y2021.S1701&moe=true)

- [2015_county_data.csv](../data/2015_county_data.csv) & [2017_county_data.csv](../data/2017_county_data.csv)

These datasets contain not just recent census for the whole American population by basic demographics, they also include data for income, poverty rate, and unemployment. An important factor in these datasets is that they contain location, which could further help us identify who are more oppressed. We obtained these datasets from [kaggle](https://www.kaggle.com/datasets/muonneutrino/us-census-demographic-data?select=acs2017_county_data.csv).

_Both [kaggle](https://www.kaggle.com) and the [United States Census Bureau](https://data.census.gov/cedsci/) are trustworthy sources where the data are accurate and have not been altered by outside influence, as other scholars and researchers also obtain all types of data through these domains. All the data collected are from the Census, which is a government agency whose purpose is to collect data to help us understand the nation and the people better._

| Data File Name  | [1995_2015.csv](../data/1995_2015.csv)  | [adult-test.csv](../data/adult-test.csv) | [adult-training.csv](../data/adult-training.csv) | [poverty_status.csv](../data/poverty_status.csv) | [2017_county_data.csv](../data/2017_county_data.csv) | [2015_county_data.csv](../data/2015_county_data.csv) |
|-----|-----|-----|-----|-----|-----|-----
| Purpose | Compare the highest levels of education received by different groups of people | Relate social factors to income | Relate social factors to income | Relate poverty rate and more intersectionality | Gain data for recent demography in the U.S. | Gain data for recent demography in the U.S. |
| # Observations | 45 | 32560 | 16280 | 69 | 3220 | 3220 |
| # Variables | 10 | 15 | 15 | 7 | 37 | 37 |
| Citation | Garrard, R. (2017, November 15). U.S. educational attainment [1995-2015]. Kaggle. Retrieved October 30, 2022, from https://www.kaggle.com/datasets/noriuk/us-educational-attainment-19952015?select=1995_2015.csv | Olafenwa, J. (2017, July 14). US adult income. Kaggle. Retrieved October 30, 2022, from https://www.kaggle.com/datasets/johnolafenwa/us-census-data?select=adult-test.csv | Olafenwa, J. (2017, July 14). US adult income. Kaggle. Retrieved October 30, 2022, from https://www.kaggle.com/datasets/johnolafenwa/us-census-data?select=adult-training.csv | Bureau, U. S. C. (2021). S1701 POVERTY STATUS IN THE PAST 12 MONTHS. Explore census data. Retrieved October 30, 2022, from https://data.census.gov/cedsci/table?tid=ACSST1Y2021.S1701&moe=true | MuonNeutrino. (2019, March 3). US Census Demographic Data. Kaggle. Retrieved October 31, 2022, from https://www.kaggle.com/datasets/muonneutrino/us-census-demographic-data?select=acs2017_county_data.csv | MuonNeutrino. (2019, March 3). US Census Demographic Data. Kaggle. Retrieved October 31, 2022, from https://www.kaggle.com/datasets/muonneutrino/us-census-demographic-data?select=acs2015_county_data.csv |



## Expected Implications

We do expect multiple implications that may result from this project. Researchers, policy makers, and people can use data and findings from our project of a glaring disparity between demographics to push for making higher level education more equitable. These can either come in the form of people going to protests, voting for different politicians, or just have more scholarships and opportunities for minorities that helps with their academic and professional careers.

Another implication that we expect is more people having opportunities to learn, which in turn can promote better education environments and companies will have more potential candidates as employees and also slightly decrease the disparity of the current system. And it is probable that with more highly educated people, future generations will also continue the trend to have better education, regardless of their demographic identities, as people are more likely to focus on their children’s education.


## Limitations

There are a few limitations or data points our data sets fail to account for. For example, drawing conclusions across different time periods may be difficult. This is because of the numerous factors that play into determining the results of our data. For example, we may be able to draw conclusions based on age, race, or income, but doing so across time periods may be difficult due to other factors like inflation. Additionally, the popular political perspective at the time might be another factor. This means that there might be time periods where attaining higher level education would be easier depending on which policies are voted in. Another limitation that these datasets don’t account for are the individuals who don’t choose higher education. Over the past few years the perspective that higher education isn’t a necessity for success has grown in popularity. For example, plenty of individuals may choose certification programs or trades instead of universities.

## Acknowledgements

We would like to thank Professor Hendry and our teaching assistant Shiina for giving us the necessary background and skills to complete this project.

## References

Abel, J. R., & Deitz, R. (2021, June 16). Despite rising costs, college is still a good investment. Liberty Street Economics. Retrieved October 30, 2022, from https://libertystreeteconomics.newyorkfed.org/2019/06/despite-rising-costs-college-is-still-a-good-investment/

Bureau, U. S. C. (2021). S1701 POVERTY STATUS IN THE PAST 12 MONTHS. Explore census data. Retrieved October 30, 2022, from https://data.census.gov/cedsci/table?tid=ACSST1Y2021.S1701&moe=true

Bureau, U. S. C. (2022, February 24). Census Bureau releases New Educational Attainment Data. Census.gov. Retrieved October 30, 2022, from https://www.census.gov/newsroom/press-releases/2022/educational-attainment.html

Cable News Network. (2019, June 6). College grads earn $30,000 a year more than people with just a high school degree | CNN business. CNN. Retrieved October 30, 2022, from https://www.cnn.com/2019/06/06/success/college-worth-it

Garrard, R. (2017, November 15). U.S. educational attainment [1995-2015]. Kaggle. Retrieved October 30, 2022, from https://www.kaggle.com/datasets/noriuk/us-educational-attainment-19952015?select=1995_2015.csv

Hess, A. J. (2019, May 29). Georgetown study: 'to succeed in America, it's better to be born rich than smart'. CNBC. Retrieved October 30, 2022, from https://www.cnbc.com/2019/05/29/study-to-succeed-in-america-its-better-to-be-born-rich-than-smart.html

MuonNeutrino. (2019, March 3). US Census Demographic Data. Kaggle. Retrieved October 31, 2022, from https://www.kaggle.com/datasets/muonneutrino/us-census-demographic-data?select=acs2015_county_data.csv

MuonNeutrino. (2019, March 3). US Census Demographic Data. Kaggle. Retrieved October 31, 2022, from https://www.kaggle.com/datasets/muonneutrino/us-census-demographic-data?select=acs2017_county_data.csv

Olafenwa, J. (2017, July 14). US adult income. Kaggle. Retrieved October 30, 2022, from https://www.kaggle.com/datasets/johnolafenwa/us-census-data?select=adult-test.csv

Olafenwa, J. (2017, July 14). US adult income. Kaggle. Retrieved October 30, 2022, from https://www.kaggle.com/datasets/johnolafenwa/us-census-data?select=adult-training.csv


## Appendix A: Questions

Could we use more datasets that are not in this proposal if we discover more in the future?

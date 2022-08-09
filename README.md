# Alexa, Can You Handle Big Data?

Prepared by Corey Lawson-Enos

## Overview
Google Colab Notebooks and SQL code for Amazon review datasets. Completes ETL processes in the cloud, and uploads the reviews as DataFrames to an RDS instance for analysis. Question: Are reviews from reviewers in Amazon's Vine program trustworthy? The two, disparate product datasets selected for testing are Jewelry and Toys.

## Technologies
Amazon Web Services, RDS and S3; pgAdmin; SQL; PySpark; Google Colab Notebook

## Resources
Amazon Review Data Sources (file download):
   - Jewelry: https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Jewelry_v1_00.tsv.gz
   - Toys: https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Toys_v1_00.tsv.gz

## Summary
Jewelry and Toys review datasets were cleaned and combined using PySpark, and uploaded to an Amazon Web Services RDS instance for aggregation in SQL. Reviews are grouped according to participation in Amazon's Vine program, where reviewers receive free products in exchange for reviews. Summary tables are as follows, used to evaluate if bias and/or discrepancy can be shown when comparing aggregate review data from Vine participants against the general public. 

### Aggregate Summary
* Average ratings appear consistent between Vine participants/non-participants.
* However, Vine member reviews garnered an average 2.6 helpful votes, compared to 1.3 for non-members.

![General Summary](Images/review_summary.png)

### 5-Star Reviews
* Only 41% of Vine program reviews are 5-star, compared to 63% for the general public.

![5-Star Summary](Images/five_star_summary.png)

### Reviews' Helpful Votes
* To reduce noise, records for this query were filtered for a minimum ten (10) helpful votes.
* Applying this filter, average rating was slightly higher for Vine participants, although by slim margin.
* At this reduced noise level, Vine member reviews garnered an average 36.6 helpful votes, compared to 28.6 for non-members.

![Helpful Votes Summary](Images/helpful_summary.png)

## Analysis
Although average ratings remain roughly consistent between Vine members and non-members, it is observed that Vine members are much less likely to award 5-stars than non-members. Therefore, to achieve comparable rating average, the ratings Vine members award must cluster more closely to the 4.12 and adjusted 3.91 averages observed. In contrast, since 63% of the general public's reviews in these datasets are 5-star, a significant number of their balance must be lower 1- and 2-star ratings to take the averages down and approximate the same figures as Vine members'. Two possible trends may be observed, both of which could actually work together in concert with each other to produce the observed effect:

* A) That the general public is much more polarized with their reviews--either very critical or very positive--and that Vine members are more thoughtful and provide more balanced, nuanced ratings; or
* B) That Vine members are much less inclined to provide negative reviews. Could repeat, negative reviews present risk to program participation and its benefits?

Since Vine member reviews receive significantly more helpful votes, we draw tentative conclusion that the first hypothesis seems more likely--that Vine members might be less polarized as an effect of their ongoing review participation. It could very well be argued that your average person will only take the time to provide positive or negative review if they have a very good or very bad experience, hence the polarization. A further, deeper dive into data sampling reviews from the most popular products is recommended, to further determine if possible bias may exist as determined by Vine membership.

## Source

Amazon customer Reviews Dataset. (n.d.). Retrieved April 08, 2021, from: https://s3.amazonaws.com/amazon-reviews-pds/readme.html

## Contact
E-mail: clawson131@gmail.com<br>
LinkedIn: https://www.linkedin.com/in/corey-lawson-enos/

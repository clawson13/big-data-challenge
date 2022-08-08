# Alexa, Can You Handle Big Data?

Prepared by Corey Lawson-Enos

## Overview
* Google Colab Notebooks and SQL code that completes ETL processes for Amazon review datasets in the cloud, and uploads them as DataFrames to an RDS instance for analysis. Question: Are reviews from reviewers in Amazon's Vine program trustworthy? Disparate datasets selected for testing are Jewelry and Toys.

## Technologies
Amazon Web Services: RDS and S3; pgAdmin; SQL; PySpark; Google Colab Notebook

## Resources
* Amazon Review Data Sources:
    - Jewelry: https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Jewelry_v1_00.tsv.gz
    - Toys: https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Toys_v1_00.tsv.gz

## Summary
* Jewelry and Toys review datasets were cleaned and combined using PySpark, and uploaded to an Amazon Web Services RDS instance for aggregation in SQL. Reviews are grouped according to particicpation in Amazon's Vine program, where reviewers receive free products in exchange for reviews. Summary tables as follows, used to evaluate if bias and/or discrepancy can be shown when comparing Vine participants against the general public.

### General Summary
![General Summary](Images/review_summary.png)

### 5-Star Reviews Summary
![5-Star Summary](Images/five_star_summary.png)

### Summary of Reviews' Helpful Votes
![Helpful Votes Summary](Images/helpful_summary.png)

## Analysis

It took no small amount of trial and error to approach the 75% accuracy goal--repeatedly adjusting the combination of layers, neurons, activation functions, and epochs in particular. Recommendation: Use KerasTuner testing on the optimized dataset to more accurately determine a nominal neural network model.




![Optimized Test Accuracy](Images/optimized_accuracy.png)

## Source

* Amazon customer Reviews Dataset. (n.d.). Retrieved April 08, 2021, from: https://s3.amazonaws.com/amazon-reviews-pds/readme.html

## Contact
E-mail: clawson131@gmail.com<br>
LinkedIn: https://www.linkedin.com/in/corey-lawson-enos/

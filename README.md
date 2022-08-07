# Alexa, Can You Handle Big Data?

Prepared by Corey Lawson-Enos

## Overview
* Google Colab Notebooks and SQL code that completes ETL processes for Amazon review datasets in the cloud, and uploads them as DataFrames to an RDS instance for analysis. 

## Technologies
Amazon Web Services: RDS and S3; pgAdmin; SQL; PySpark; Google Colab Notebook

## Resources
* Amazon Review Data Sources:
    - Jewelry: https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Jewelry_v1_00.tsv.gz
    - Toys: https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Toys_v1_00.tsv.gz

## Summary
* 'APPLICATION_TYPE' and 'CLASSIFICATION' values with nominal counts were binned together into an 'Other' category to reduce noise.

## Analysis

It took no small amount of trial and error to approach the 75% accuracy goal--repeatedly adjusting the combination of layers, neurons, activation functions, and epochs in particular. Recommendation: Use KerasTuner testing on the optimized dataset to more accurately determine a nominal neural network model.

![Initial Test Accuracy](Images/initial_accuracy.png)


![Optimized Test Accuracy](Images/optimized_accuracy.png)

## Source

* Amazon customer Reviews Dataset. (n.d.). Retrieved April 08, 2021, from: https://s3.amazonaws.com/amazon-reviews-pds/readme.html

## Contact
E-mail: clawson131@gmail.com<br>
LinkedIn: https://www.linkedin.com/in/corey-lawson-enos/

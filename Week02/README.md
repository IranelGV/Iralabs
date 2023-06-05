![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# LAB | Data Structuring and Combining Data
<details>
  <summary>
   <h2>Learning Goals</h2>
  </summary>

  This lab allows you to practice and apply the concepts and techniques taught in class. 

  Upon completion of this lab, you will be able to:
  
- Apply Python programming to modify the structure of data by pivoting, stacking/unstacking, or melting dataframes.
- Combine and integrate data from multiple sources using merging, concatenating, or joining techniques to generate more comprehensive and meaningful datasets for analysis.

  <br>
  <hr> 

</details>

<details>
  <summary>
   <h2>Prerequisites</h2>
  </summary>

Before this starting this lab, you should have learnt about:

- Python Programming
- Introduction to Pandas DataFrames and Series
- Data Cleaning: handling null values and duplicates
- Data Formatting: dealing with strings, dates, renaming columns, using map, apply and mapapply methods
- Data structuring and combining data: methods such as pivot, stack/unstack or melt for data structuring and merge, concat or join for combining data.
 
  <br>
  <hr> 

</details>


## Introduction

Welcome to this lab on data structuring and combining data! 

In this lab, you will practice how integrate data from different datasets and generate more comprehensive datasets for analysis.

Once we you have explored data combining techniques, we will move on to modifying and reorganizing datasets using techniques such as pivoting dataframes.


By the end of this lab, you will have a strong understanding of how to manipulate and combine datasets to create more meaningful and efficient data structures. These skills are essential for anyone working with complex datasets, and will help you to become a more effective data analyst. 

<br>

**Happy coding!** :heart:

## Important Notes

This lab is built on top of the `data cleaning and formatting` lab. If you couldn't complete the `data cleaning and formatting` lab, ask your LT for the `data cleaning and formatting` lab solution so you can do this lab on top of it.

## About the dataset

### Context
This is customer data with their vehicle insurance policies. It has the same data as the dataset we were using before, but has a couple of new features.

### New Data Description

- Customer - Customer ID

- ST - State where customers live

- Customer Lifetime Value - Customer lifetime value(CLV) is the total revenue the client will derive from their entire relationship with a customer. In other words, is the predicted or calculated value of a customer over their entire duration as a policyholder with the insurance company. It is an estimation of the net profit that the insurance company expects to generate from a customer throughout their relationship with the company. Customer Lifetime Value takes into account factors such as the duration of the customer's policy, premium payments, claim history, renewal likelihood, and potential additional services or products the customer may purchase. It helps insurers assess the long-term profitability and value associated with retaining a particular customer.

- Response - Whether the customer responded to a marketing campaign (yes or no)

- Coverage - The type of coverage the customer has (e.g., basic, extended, premium)

- Education - Background education of customers 

- Effective To Date - The date when the policy becomes effective

- EmploymentStatus - The employment status of the customer

- Gender - Gender of the customer

- Income - Customers income

- Location Code - indicates if the customer lives in Rural, Suburban, or Urban location

- Marital Status - The marital status of the customer

- Monthly Premium Auto - Amount of money the customer pays on a monthly basis as a premium for their auto insurance coverage. It represents the recurring cost that the insured person must pay to maintain their insurance policy and receive coverage for potential damages, accidents, or other covered events related to their vehicle

- Months Since Last Claim - The number of months since the customer's last claim

- Months Since Policy Inception - The number of months since the policy was initiated

- Number of Open Complaints - Number of complaints the customer opened

- Number of Policies - The number of policies the customer holds

- Policy Type - There are three type of policies in car insurance (Corporate Auto, Personal Auto, and Special Auto)

- Policy - The specific policy identifier. There are three different policies for each policy type (Corporate L3, Corporate L2, Corporate L1, Personal L3,Personal L2, Personal L1,Special L3, Special L2, Special L1)

- Renew Offer Type: The type of offer provided to the customer for policy renewal

- Sales Channel - The channel through which the policy was sold.

- Total Claim Amount - the sum of all claims made by the customer. It represents the total monetary value of all approved claims for incidents such as accidents, theft, vandalism, or other covered events.

- Vehicle Class - Type of vehicle classes that customers have Two-Door Car, Four-Door Car SUV, Luxury SUV, Sports Car, and Luxury Car

- Vehicle Size - The size category of the insured vehicle (e.g., small, midsize, large)
- Vehicle Type - The type of vehicle insured (e.g., car, truck, motorcycle)

## Requirements

- Fork this repo
- Clone it to your machine

## Getting Started

Complete the challenges in the `Jupyter Notebook` file. Follow the instructions and add your code and explanations as necessary.

## Submission

- Upon completion, run the following commands:

```bash
git add .
git commit -m "Solved lab"
git push origin master
```

- Create a Pull Request so that your TAs can check your work.


## FAQs
<details>
  <summary>I am stuck in the exercise and don't know how to solve the problem or where to start.</summary>
  <br>

  If you are stuck in your code and don't know how to solve the problem or where to start, you should take a step back and try to form a clear question about the specific issue you are facing. This will help you narrow down the problem and come up with potential solutions.


  For example, is it a concept that you don't understand, or are you receiving an error message that you don't know how to fix? It is usually helpful to try to state the problem as clearly as possible, including any error messages you are receiving. This can help you communicate the issue to others and potentially get help from classmates or online resources. 


  Once you have a clear understanding of the problem, you will be able to start working toward the solution.

  [Back to top](#faqs)

</details>


<details>
  <summary>I am unable to push changes to the repository. What should I do?</summary>
  <br>

There are a couple of possible reasons why you may be unable to *push* changes to a Git repository:

1. **You have not committed your changes:** Before you can push your changes to the repository, you need to commit them using the `git commit` command. Make sure you have committed your changes and try pushing again. To do this, run the following terminal commands from the project folder:
  ```bash
  git add .
  git commit -m "Your commit message"
  git push
  ```
2. **You do not have permission to push to the repository:** If you have cloned the repository directly from the main Ironhack repository without making a *Fork* first, you do not have write access to the repository.
To check which remote repository you have cloned, run the following terminal command from the project folder:
  ```bash
  git remote -v
  ```
If the link shown is the same as the main Ironhack repository, you will need to fork the repository to your GitHub account first and then clone your fork to your local machine to be able to push the changes.

**Note**: You should make a copy of your local code to avoid losing it in the process.

  [Back to top](#faqs)

</details>


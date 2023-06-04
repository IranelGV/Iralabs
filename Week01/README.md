![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# LAB | Intro to Pandas
<details>
  <summary>
   <h2>Learning Goals</h2>
  </summary>

  This lab allows you to practice and apply the concepts and techniques taught in class. 

  Upon completion of this lab, you will be able to:
  
- Create Pandas DataFrames from CSV files.
- Explore Pandas DataFrames to get the number of rows, columns, summary statistics and data types.
- Manipulate Series objects using various methods, including sort_values or value_counts.
- Access data in DataFrames through columns (as a dictionary or attribute) and by using loc or iloc to access rows.
- Filter and select data in DataFrames using simple comparison and logical operators

  <br>
  <hr> 

</details>

<details>
  <summary>
   <h2>Prerequisites</h2>
  </summary>

Before this starting this lab, you should have learnt about:

- Data types, operators and structures
- Flow control (if-else statements and loops)
- Functions
 
  <br>
  <hr> 

</details>


## Introduction

Welcome to the Pandas Lab! In this lab, you will learn how to work with pandas series and dataframes, which are powerful tools for data manipulation and analysis in Python. Pandas allows you to create, manipulate, and analyze large, complex datasets with ease, making it a valuable library for any data scientist or analyst.

During this lab, you will learn how to create pandas series and dataframes, access their attributes and values, and manipulate them using a variety of built-in methods. You will also learn how to filter and sort data and summarize and describe data. By the end of this lab, you will have a strong foundation in working with pandas series and dataframes, which you can apply to real-world data analysis problems.

<br>

**Happy coding!** :heart:

## About the dataset

### Context
This is customer data with their vehicle insurance policies. Details about customers and the insurance taken for their vehicles are provided which can be explored to segment similar kind of customers.

### Content
The socio-economic data of the customer with details about the insured vehicle is the data content. Data contains both categorical and numerical variables. The customer lifetime value based on historical data has also been provided which is essential in understanding the customer purchase behavior.

### Acknowledgements
UCI ML repository

### Inspiration
The data is useful for clustering customers according to their behavior, thereby enabling targeted marketing of a new insurance policy. This helps pre-estimating a budget for marketing expenses.

### Data Description

- Customer - Customer ID

- ST - State where customers live

- Gender - Gender of the customer

- Education - Background education of customers 

- Customer Lifetime Value - Customer lifetime value(CLV) is the total revenue the client will derive from their entire relationship with a customer. In other words, is the predicted or calculated value of a customer over their entire duration as a policyholder with the insurance company. It is an estimation of the net profit that the insurance company expects to generate from a customer throughout their relationship with the company. Customer Lifetime Value takes into account factors such as the duration of the customer's policy, premium payments, claim history, renewal likelihood, and potential additional services or products the customer may purchase. It helps insurers assess the long-term profitability and value associated with retaining a particular customer.

- Income - Customers income

- Monthly Premium Auto - Amount of money the customer pays on a monthly basis as a premium for their auto insurance coverage. It represents the recurring cost that the insured person must pay to maintain their insurance policy and receive coverage for potential damages, accidents, or other covered events related to their vehicle.

- Number of Open Complaints - Number of complaints the customer opened

- Policy Type - There are three type of policies in car insurance (Corporate Auto, Personal Auto, and Special Auto)

- Vehicle Class - Type of vehicle classes that customers have Two-Door Car, Four-Door Car SUV, Luxury SUV, Sports Car, and Luxury Car

- Total Claim Amount - the sum of all claims made by the customer. It represents the total monetary value of all approved claims for incidents such as accidents, theft, vandalism, or other covered events.


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


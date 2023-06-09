![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# LAB | Data Aggregation and Filtering
<details>
  <summary>
   <h2>Learning Goals</h2>
  </summary>

  This lab allows you to practice and apply the concepts and techniques taught in class. 

  Upon completion of this lab, you will be able to:
  
- Use Python programming techniques to filter and order data subsets, group data by one or more variables, and use aggregation functions to obtain insights, and derive meaningful conclusions from the data.

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
- Data Aggregation: groupby and aggregation functions
 
  <br>
  <hr> 

</details>


## Introduction

Welcome to the data aggregation and filtering lab! In this lab, you will practice how to apply various aggregation functions and filter data to obtain insights, identify patterns, and derive meaningful conclusions from your data. 

Aggregation is a powerful technique that allows you to group your data by one or more variables and calculate summary statistics for each group. This is especially useful when working with large datasets, as it can help you to understand the overall structure of your data and identify trends and patterns that might not be immediately apparent.

During this lab, you will work with a variety of datasets and practice how to use common aggregation functions such as sum, count, mean, median, min, and max. You will also practice how to group your data by one or more variables and how to apply these aggregation functions to obtain insights and draw meaningful conclusions from your data. Also, you will practice data filtering a bit more. By the end of this lab, you will have a strong understanding of how aggregation works and how it can be used to analyze data in a variety of contexts. So let's get started!

<br>

**Happy coding!** :heart:


## Important Notes

This lab is built on top of the `data cleaning and formatting` and `data structuring and combining` lab. If you couldn't complete those lasb, ask your TA for the lab solutions so you can do this lab on top of it.

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


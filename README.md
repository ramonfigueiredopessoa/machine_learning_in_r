Machine Learning in R
===========================

## Contents
1. [Data Preprocessing](#data-preprocessing)
2. [Regression](#regression)
	1. [Simple Linear Regression](#simple-linear-regression)
	2. [Multiple Linear Regression](#multiple-linear-regression)
	3. [Polynomial Regression](#polynomial-regression)
	4. [Support Vector Regression](#support-vector-regression)
	5. [Decision Tree Regressor](#decision-tree-regressor)
	6. [Random Forest Regression](#random-forest-regression)
3. [Classification](#classification)
	1. [Logistic Regression](#logistic-regression)
	2. [K-Nearest Neighbors](#k-nearest-neighbors)
	3. [Support Vector Machine](#support-vector-machine)
	4. [Kernel SVM](#kernel-svm)
	5. [Naive Bayes](#naive-bayes)
	6. [Decision Tree Classification](#decision-tree-classification)
	7. [Random Forest Classification](#random-forest-classification)
4. [How to run the R program](#how-to-run-the-r-program)

## Data Preprocessing

a.  [data_preprocessing.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/1_data_preprocessing/data_preprocessing.r)

* Taking care of missing data
* Encoding categorical data
* Splitting the dataset into the Training set and Test set
* Feature Scaling

Go to [Contents](#contents)

## Regression

| Regression Model 				  |	Pros 																					 | Cons |
| ------------------------------- |	---------------------------------------------------------------------------------------- | ---- |
| Linear Regression 			  | Works on any size of dataset, gives informations about relevance of features 			 | The Linear Regression Assumptions |
| Polynomial Regression 		  | Works on any size of dataset, works very well on non linear problems 					 | Need to choose the right polynomial degree for a good bias/variance tradeoff |
| Support Vector Regression (SVR) | Easily adaptable, works very well on non linear problems, not biased by outliers 		 | Compulsory to apply feature scaling, not well known, more difficult to understand |
| Decision Tree Regression  	  | Interpretability, no need for feature scaling, works on both linear / nonlinear problems | Poor results on too small datasets, overfitting can easily occur |
| Random Forest Regression 		  | Powerful and accurate, good performance on many problems, including non linear | No interpretability, overfitting can easily occur, need to choose the number of trees |

### Simple Linear Regression

a.  [simple_linear_regression.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/1_simple_linear_regression/simple_linear_regression.r)

* Importing the dataset (Salary_Data.csv)
* Splitting the dataset into the Training set and Test set
* Fitting Simple Linear Regression to the Training set
* Predicting the Test set results
* Visualising the Training and Test set results

* Visualising the Training set results
![Visualising the Training set resultsr](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/1_simple_linear_regression/Visualising-the-Test-set-results.png)
* Visualising the Test set results
![Visualising the Training set resultsr](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/1_simple_linear_regression/Visualising-the-Test-set-results.png)

Go to [Contents](#contents)

### Multiple Linear Regression

a.  [multiple_linear_regression.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/2_multiple_linear_regression/multiple_linear_regression.r)

b. Multiple Linear Regression - Backward Elimination: [backward_elimination.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/2_multiple_linear_regression/backward_elimination.r)

c. Multiple Linear Regression - Automatic Backward Elimination: [automatic_backward_elimination.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/2_multiple_linear_regression/automatic_backward_elimination.r)

* Importing the dataset (50_Startups.csv)
* Encoding categorical data
* Splitting the dataset into the Training set and Test set
* Fitting Multiple Linear Regression to the Training set
* Predicting the Test set results

Go to [Contents](#contents)

### Polynomial Regression

a.  [polynomial_regression.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/3_polynomial_regression/polynomial_regression.r)

* Importing the dataset ([Position_Salaries.csv](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/3_polynomial_regression/Position_Salaries.csv))
* Fitting Linear Regression to the Training set
* Predicting a new result with Linear Regression
* Visualising the Linear Regression results
* Fitting Polynomial Regression to the Training set
* Predicting a new result with Polynomial Regression
* Visualising the Polynomial Regression results (for higher resolution and smoother curve)

* Visualising the Linear Regression results
![Visualising the Linear Regression results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/3_polynomial_regression/Truth_or_Bluff-Linear_Regression.png)
* Visualising the Polynomial Regression results (degree = 2)
![Visualising the Training set results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/3_polynomial_regression/Truth_or_Bluff-Polynomial_Regression-degree_2.png)
* Visualising the Polynomial Regression results (degree = 3)
![Visualising the Training set results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/3_polynomial_regression/Truth_or_Bluff-Polynomial_Regression-degree_3.png)
* Visualising the Polynomial Regression results (degree = 4)
![Visualising the Training set results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/3_polynomial_regression/Truth_or_Bluff-Polynomial_Regression-degree_4.png)

Go to [Contents](#contents)

### Support Vector Regression

a.  [svr.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/4_support_vector_regression/svr.r)

* Importing the dataset ([Position_Salaries.csv](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/4_support_vector_regression/Position_Salaries.csv))
* Feature Scaling
* Fitting Support Vector Regression (SVR) to the dataset
* Predicting a new result with Support Vector Regression (SVR)
* Visualising the SVR results (for higher resolution and smoother curve)

![Visualising the SVR results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/4_support_vector_regression/Visualising-the-SVR-results.png)

Go to [Contents](#contents)

### Decision Tree Regressor

a.  [decision_tree_regression.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/5_decision_tree_regression/decision_tree_regression.r)

* Importing the dataset ([Position_Salaries.csv](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/5_decision_tree_regression/Position_Salaries.csv))
* Fitting Decision Tree Regression to the dataset
* Predicting a new result with Decision Tree Regression
* Visualising the Decision Tree Regression results (higher resolution)
* Plotting the tree

![Visualising the Decision Tree Regression results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/5_decision_tree_regression/Visualising-the-Decision-Tree-Regression-results.png)

![Plotting the tree](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/5_decision_tree_regression/Plotting-the-tree.png)

Go to [Contents](#contents)

### Random Forest Regression

a.  [random_forest_regression.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/6_random_forest_regression/random_forest_regression.r)

* Importing the dataset ([Position_Salaries.csv](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/6_random_forest_regression/Position_Salaries.csv))
* Fitting Random Forest Regression to the dataset
* Predicting a new result with Random Forest Regression
* Visualising the Random Forest Regression results (higher resolution)

![Visualising the Random Forest Regression results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/2_regression/6_random_forest_regression/Visualising-the-Random-Forest-Regression-results.png)

Go to [Contents](#contents)

## Classification

### Logistic Regression

a.  [logistic_regression.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/1_logistic_regression/logistic_regression.r)

* Importing the dataset ([Social_Network_Ads.csv](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/1_logistic_regression/Social_Network_Ads.csv))
* Splitting the dataset into the Training set and Test set
* Feature Scaling
* Fitting Logistic Regression to the Training set
* Predicting the Test set results with Logistic Regression
* Making the Confusion Matrix
* Visualising the Training set results
* Visualising the Test set results

![Visualising the Training set results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/1_logistic_regression/Visualising-the-Training-set-results.png)

![Visualising-the-Test-set-results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/1_logistic_regression/Visualising-the-Test-set-results.png)

Go to [Contents](#contents)

### K-Nearest Neighbors

a.  [knn.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/2_k_nearest_neighbors/knn.r)

* Importing the dataset ([Social_Network_Ads.csv](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/2_k_nearest_neighbors/Social_Network_Ads.csv))
* Encoding the target feature as factor
* Splitting the dataset into the Training set and Test set
* Feature Scaling
* Fitting K-NN to the Training set and Predicting the Test set results
* Making the Confusion Matrix
* Visualising the Training set results
* Visualising the Test set results

![Visualising the Training set results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/2_k_nearest_neighbors/Visualising-the-Training-set-results.png)

![Visualising-the-Test-set-results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/2_k_nearest_neighbors/Visualising-the-Test-set-results.png)

Go to [Contents](#contents)

### Support Vector Machine

a.  [svm.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/3_support_vector_machine/svm.r)

* Importing the dataset ([Social_Network_Ads.csv](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/3_support_vector_machine/Social_Network_Ads.csv))
* Encoding the target feature as factor
* Splitting the dataset into the Training set and Test set
* Feature Scaling
* Fitting SVM to the Training set
* Predicting the Test set results
* Making the Confusion Matrix
* Visualising the Training set results
* Visualising the Test set results

![Visualising the Training set results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/3_support_vector_machine/Visualising-the-Training-set-results.png)

![Visualising-the-Test-set-results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/3_support_vector_machine/Visualising-the-Test-set-results.png)

Go to [Contents](#contents)

### Kernel SVM

a.  [kernel_svm.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/4_kernel_svm/kernel_svm.r)

* Importing the dataset ([Social_Network_Ads.csv](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/4_kernel_svm/Social_Network_Ads.csv))
* Encoding the target feature as factor
* Splitting the dataset into the Training set and Test set
* Feature Scaling
* Fitting Kernel SVM to the Training set
* Predicting the Test set results
* Making the Confusion Matrix
* Visualising the Training set results
* Visualising the Test set results

![Visualising the Training set results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/4_kernel_svm/Visualising-the-Training-set-results.png)

![Visualising-the-Test-set-results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/4_kernel_svm/Visualising-the-Test-set-results.png)

Go to [Contents](#contents)

### Naive Bayes

a.  [naive_bayes.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/5_naive_bayes/naive_bayes.r)

* Importing the dataset ([Social_Network_Ads.csv](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/5_naive_bayes/Social_Network_Ads.csv))
* Encoding the target feature as factor
* Splitting the dataset into the Training set and Test set
* Feature Scaling
* Fitting Naive Bayes to the Training set
* Predicting the Test set results
* Making the Confusion Matrix
* Visualising the Training set results
* Visualising the Test set results

![Visualising the Training set results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/5_naive_bayes/Visualising-the-Training-set-results.png)

![Visualising-the-Test-set-results](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/5_naive_bayes/Visualising-the-Test-set-results.png)

Go to [Contents](#contents)

### Decision Tree Classification

a.  [decision_tree_classification.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/6_decision_tree_classification/decision_tree_classification.r)

Go to [Contents](#contents)

### Random Forest Classification

a.  [random_forest_classification.r](https://github.com/ramonfigueiredopessoa/machine_learning_in_r/blob/master/src/3_classification/7_random_forest_classification/random_forest_classification.r)

Go to [Contents](#contents)

## How to run the R program

1. Install [R](https://www.r-project.org/) and [RStudio](https://www.rstudio.com/)
	* This code uses: R version 3.6.1 and RStudio version 1.2.1335

2. Set environment variable for R on Windows/Linux/MacOS

	* Example of path on Windows: C:\Program Files\R\R-3.6.1\bin
	* Executables: R.exe and Rscript.exe

3. Run the program

```sh
cd <folder_name>/

Rscript.exe <name_of_r_program>.r
```

Or open and run the <name_of_r_program>.r file using RStudio

Go to [Contents](#contents)
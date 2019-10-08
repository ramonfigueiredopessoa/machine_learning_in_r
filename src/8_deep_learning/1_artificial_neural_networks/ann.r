# Artificial Neural Network

# Importing the dataset
dataset = read.csv('Churn_Modelling.csv')
dataset = dataset[4:14]

# Encoding the categorical variables as factors
dataset$Geography = as.numeric(factor(dataset$Geography,
                                      levels = c('France', 'Spain', 'Germany'),
                                      labels = c(1, 2, 3)))
dataset$Gender = as.numeric(factor(dataset$Gender,
                                   levels = c('Female', 'Male'),
                                   labels = c(1, 2)))

# Splitting the dataset into the Training set and Test set
install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Exited, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling
training_set[-11] = scale(training_set[-11])
test_set[-11] = scale(test_set[-11])

# Fitting ANN to the Training set
install.packages('h2o')
library(h2o)
h2o.init(nthreads = -1)
model = h2o.deeplearning(y = 'Exited',
                         training_frame = as.h2o(training_set),
                         activation = 'Rectifier',
                         hidden = c(5,5),
                         epochs = 100,
                         train_samples_per_iteration = -2)

# Predicting the Test set results
y_pred = h2o.predict(model, newdata = as.h2o(test_set[-11]))
y_pred = (y_pred > 0.5)
y_pred = as.vector(y_pred)

print("Predicting the Test set results")
print(y_pred)

# Creating the Confusion Matrix
cm = table(test_set[, 11], y_pred)

print("Confusion Matrix\n")
print(cm)

# Calculating metrics using the confusion matrix

TP = cm[1,1]
FN = cm[1,2]
TN = cm[2,1]
FP = cm[2,2]

sprintf("True Positive (TP): %d", TP)
sprintf("False Negative (FN): %d", FN)
sprintf("True Negative (TN): %d", TN)
sprintf("False Positive (FP): %d", FP)

accuracy = (TP + TN) / (TP + TN + FP + FN)
sprintf("Accuracy = (TP + TN) / (TP + TN + FP + FN): %f", accuracy)

recall = TP / (TP + FN)
sprintf("Recall = TP / (TP + FN): %f", recall)

precision = TP / (TP + FP)
sprintf("Precision = TP / (TP + FP): %f", precision)

Fmeasure = (2 * recall * precision) / (recall + precision)
sprintf("Fmeasure = (2 * recall * precision) / (recall + precision): %f", Fmeasure)

h2o.shutdown()

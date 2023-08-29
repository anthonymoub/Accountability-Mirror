# ML Cheat sheet

This document keeps track of the ML concepts i review on a daily basis and provides very brief summaries
of the concepts I am learning.

### Day 1:

1. Gradient descent and stochastic gradient descent
2. Model Bias and Variance and the Bias Variance tradeoff
3. Overfitting and how Lasso and Ridge (L1 and L2 regularization parameters) are ways to deal with it.
4. L1 can take coefficients to 0, unlike L2 which does not, which is why L1 is considered a stricter regularization parameter.
5. K cross validation: In K-fold cross-validation, the dataset is divided into K subsets (folds), with the model trained K times using K-1 folds as training data and one fold as validation data in each iteration, allowing for robust performance estimation.
6. Leave one out cross validation: Leave-One-Out Cross-Validation (LOOCV) is a method where each data point in the dataset is used as a validation set in a separate iteration, while the remaining data points serve as the training set, enabling thorough performance evaluation with minimal bias.
7. Time series cross validation: Time series cross-validation involves sequentially splitting time-ordered data into training and validation segments, simulating real-world forecasting by training on past data and evaluating on subsequent time periods.
8. Bootstrapping is a statistical resampling technique that involves creating multiple simulated samples from a single dataset (sampling with replacement) to estimate the variability and uncertainty of a statistic.
9. Bagging (Bootstrap Aggregating) is an ensemble machine learning technique that employs bootstrapping to train multiple instances of a single model on different subsets of the dataset, and then combines their predictions for improved accuracy and robustness. Random forest is a perfect representation of bagging.

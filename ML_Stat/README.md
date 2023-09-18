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
10. Grid search is a hyperparameter tuning technique that systematically tests and evaluates various combinations of hyperparameter values to find the best configuration for a model. The disadvantages of grid search include its computational complexity and potential inefficiency, as it exhaustively searches through all specified hyperparameter combinations, which can be time-consuming and memory-intensive, especially when dealing with a large parameter space, leading to longer training times and resource consumption.
11. Random search is a hyperparameter tuning technique in machine learning that involves randomly sampling hyperparameter values within specified ranges to explore different configurations and find a good set of hyperparameters. However, random search has a lot of disadvantages including:
    - Lack of Systematic Exploration: Unlike grid search, where all combinations are systematically tried, random search might miss potentially good combinations and spend more time exploring less promising areas of the hyperparameter space.
    - Inefficient Allocation of Resources: Random search may allocate more resources to less promising combinations, leading to inefficient utilization of computational resources compared to more focused methods like Bayesian optimization.
    - Difficulty in Reproducibility: Because random search involves randomness in selecting hyperparameters, reproducing the same results can be challenging, making experiments harder to replicate.
    - Suboptimal Results: Due to its random nature, there's no guarantee that random search will consistently find the best hyperparameters. It may require multiple runs to achieve a good result.
    - No Learning from Previous Trials: Random search doesn't leverage information from previous trials, unlike techniques like Bayesian optimization, which adjust the hyperparameter space based on past results to converge faster.
12. An effective method to evaluate overfitting involves analyzing the learning curve of a model. Generally, an overfit model demonstrates a noticeable divergence between its training and testing performance as the model undergoes more extensive training.
13. One of the main metrics to evaluate linear regression is RSS.
14. Residual Sum of Squares (RSS) is the sum of the squared differences between observed and predicted values in regression analysis, quantifying the model's prediction errors.
15. RSS = Σ(yᵢ - ŷᵢ)²
16. Another major metric is R squared, a statistical measure that indicates the proportion of the variance in the dependent variable that is explained by the independent variables in a regression model.
17. Mean Absolute Error (MAE) measures the average absolute difference between actual and predicted values, while Mean Squared Error (MSE) measures the average squared difference, giving more weight to larger errors. MSE would be a better metric when outliers need to be treated with more significance in the evaluation, such as in cases where even larger errors should be avoided.
18. Adding more features to a linear regression model will lead to an improved R squared, but also increases the chance of overfitting. For that reason, other metrics need to be considered like AIC, BIC, and adjusted R squared, all of which take number of features into consideration.
19. AIC (Akaike Information Criterion): AIC is a measure of model quality that balances fit and complexity, penalizing models with more parameters.
20. BIC (Bayesian Information Criterion): Similar to AIC, BIC is another model selection criterion that penalizes complexity more strongly, favoring simpler models.
21. Adjusted R-squared: Adjusted R-squared accounts for the number of predictors in a regression model, giving a more accurate assessment of model fit and preventing overfitting.
22. Forward Subset Selection is a feature selection technique that starts with an empty set of features and iteratively adds one feature at a time, selecting the one that improves the model's performance the most until a stopping criterion is met.
23. Backward Subset Selection is the opposite approach, starting with all features and iteratively removing one feature at a time, typically based on which feature has the least negative impact (when removed) on the model performance.
24. WHen fitting a linear regression model, the parameters (b0, b1, b2, etc) are being fit while optimizing for MSE as the loss function. MSE = (1/n) \* Σ(y_i - ŷ_i)^2.
25. Functional form of logistic regression model: P(Y = 1) = 1 / (1 + e^(-(β0 + β1X1 + β2X2 + ... + βpXp))).
26. The one-vs-rest (OvR) classifier is a multiclass classification strategy that trains multiple binary classifiers, each distinguishing one class from all others, simplifying the handling of multiclass problems. A total of (number of classes - 1) classifiers are fit.
27. The "one-vs-one" (OvO) classifier strategy decomposes a multiclass problem into pairwise binary classification problems, resulting in (n(n-1))/2binary classifiers for n classes.
28. The gradient of a function represents the vector of partial derivatives of a scalar-valued function with respect to each of its input variables.
29. The loss function of a binary classifier is the Binary Cross Entropy function.
30. When training a model, there are multiple ways of evaluating the loss function at every iteration: batch, mini batch, and stochastic.
31. Batch uses all of the training data at every iteration to evaluate the loss function.
32. Mini batch subsets the dataset into different batches and uses a different batch at every iteration to evaluate the loss function.
33. Stochastic uses one point at every iteration to evaluate the loss function.
34. The four main assumptions of linear regression are:

    - Linearity: The relationship between predictors and the response variable can be adequately represented by a linear equation.

    - Independence of Errors: The errors (residuals) should be independent of each other, meaning one observation's error does not predict another's.

    - Homoscedasticity: The spread of residuals should be roughly consistent across all levels of predictor values, implying constant variance.

    - Normality of Residuals: Residuals should follow a normal distribution, important for valid statistical inference.

35. In the context of classification, type II error represents a false negative while type I represents a false positive.
36. A high precision model means that the returned +, it is mostly guaranteed that all of them are +. Tradeoff: Some FN are assigned.
37. A high recall model is a model that returns all the + in the data. Tradeoff: Some FP are assigned.
38. When preprocessing data for machine learning, there are multiple ways to deal with NA values:
    1. If a small amount of data has NA (around 10%), then we could just replace them with the mean or median of the column (median if the column's data is skewed and not normally distributed, i.e has a lot of outliers and mean if the data is normally distributed with few outliers).
    2. If around 30% (or more) of the column has NA values, then we should just drop them as replacing them with any value might skew the distribution and make our model bias.
    3. Maybe the NA itself is a piece of information, so flagging it by creating a new column would make sense.

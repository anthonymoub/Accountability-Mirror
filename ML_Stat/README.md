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

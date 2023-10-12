% Define parameters
mu = 1;
sigma2 = 1;
mu_X = 1;
sigma2_X = 1;
N_values = [10, 50, 100, 500, 1000]; % Various sample sizes

% Number of simulations for each N
num_simulations = 10000;

% Initialize arrays to store results
exact_means = zeros(length(N_values), num_simulations);
asymptotic_means = zeros(length(N_values), num_simulations);

% Generate random samples and calculate means for each N
for i = 1:length(N_values)
    N = N_values(i);
    for j = 1:num_simulations
        % Generate random sample from X
        X_sample = mu + sqrt(sigma2) * randn(1, N);
        
        % Calculate the sample mean
        sample_mean = mean(X_sample);
        
        % Calculate exact and asymptotic means
        exact_means(i, j) = exp(sample_mean);
        asymptotic_means(i, j) = exp(mu_X) + (sqrt(sigma2_X) / sqrt(N)) * randn();
    end
end

% Create a single figure with two subplots
figure;

% Plot exact PDFs in the left subplot
subplot(1, 2, 1);
hold on;
for i = 1:length(N_values)
    N = N_values(i);
    
    % Exact distribution parameters
    exact_mu = exp(mu);
    exact_var = (exp(2 * mu) * sigma2) / sqrt(N);
    
    % Plot exact PDF
    x = linspace(exact_mu - 4 * sqrt(exact_var), exact_mu + 4 * sqrt(exact_var), 100);
    y = normpdf(x, exact_mu, sqrt(exact_var));
    plot(x, y, 'LineWidth', 1.5, 'DisplayName', ['N = ' num2str(N)]);
end
title('Exact PDF');
xlabel('Value of e^{X}');
ylabel('Probability Density');
legend;

% Plot asymptotic PDFs in the right subplot
subplot(1, 2, 2);
hold on;
for i = 1:length(N_values)
    N = N_values(i);
    
    % Asymptotic distribution parameters
    asymptotic_mu = exp(mu_X);
    asymptotic_var = (exp(2 * mu_X) * sigma2_X) / N;
    
    % Plot asymptotic PDF
    x = linspace(asymptotic_mu - 4 * sqrt(asymptotic_var), asymptotic_mu + 4 * sqrt(asymptotic_var), 100);
    y = normpdf(x, asymptotic_mu, sqrt(asymptotic_var));
    plot(x, y, 'LineWidth', 1.5, 'DisplayName', ['N = ' num2str(N)]);
end
title('Asymptotic PDF');
xlabel('Value of e^{X}');
ylabel('Probability Density');
legend;

% Parameters
mu = 1;
sigma_sq = 1;
N_values = [10, 50, 100, 500, 1000]; % Different sample sizes

% Create a figure for PDF convergence
figure;

% Define the x values
x = linspace(0, 3, 1000);

% Initialize arrays to store PDF and CDF values for different N
pdf_values = zeros(length(N_values), length(x));
cdf_values = zeros(length(N_values), length(x));

for i = 1:length(N_values)
    N = N_values(i);
    
    % Calculate the exact mean and variance
    exact_mu = mu;
    exact_sigma_sq = sigma_sq / N;
    
    % Calculate the exact PDF and CDF
    exact_pdf = normpdf(x, exact_mu, sqrt(exact_sigma_sq));
    exact_cdf = normcdf(x, exact_mu, sqrt(exact_sigma_sq));
    
    % Store PDF and CDF values
    pdf_values(i, :) = exact_pdf;
    cdf_values(i, :) = exact_cdf;
end

% Plot the PDF convergence for different N
subplot(2, 1, 1);
plot(x, pdf_values, 'LineWidth', 2);
title('PDF Convergence for Different N');
legend_str = arrayfun(@(N) ['N = ' num2str(N)], N_values, 'UniformOutput', false);
legend(legend_str);
grid on;

% Plot the CDF convergence for different N
subplot(2, 1, 2);
plot(x, cdf_values, 'LineWidth', 2);
title('CDF Convergence for Different N');
legend(legend_str);
grid on;

% Adjust the figure layout
sgtitle('Convergence of PDF and CDF as N Increases');



%%%%% Graph for comparing exact and the other distr

% Parameters
mu = 1;
sigma_sq = 1;
N_values = [10, 50, 100, 500, 1000]; % Different sample sizes

% Create a figure with subplots for PDF and CDF
figure;

for i = 1:length(N_values)
    N = N_values(i);
    
    % Calculate the exact mean and variance
    exact_mu = mu;
    exact_sigma_sq = sigma_sq / N;
    
    % Define the x values
    x = linspace(0, 3, 1000);
    
    % Calculate the exact PDF and CDF
    exact_pdf = normpdf(x, exact_mu, sqrt(exact_sigma_sq));
    exact_cdf = normcdf(x, exact_mu, sqrt(exact_sigma_sq));
    
    % Create a subplot for PDF
    subplot(length(N_values), 2, 2 * i - 1);
    plot(x, exact_pdf, 'LineWidth', 2);
    title(['Exact PDF (N = ' num2str(N) ')']);
    grid on;
    
    % Create a subplot for CDF
    subplot(length(N_values), 2, 2 * i);
    plot(x, exact_cdf, 'LineWidth', 2);
    title(['Exact CDF (N = ' num2str(N) ')']);
    grid on;
end

% Plot the asymptotic normal distribution for both PDF and CDF
asymptotic_mu = mu;
asymptotic_sigma = sqrt(sigma_sq);

% Define the x values
x = linspace(0, 3, 1000);

% Calculate the asymptotic PDF and CDF
asymptotic_pdf = normpdf(x, asymptotic_mu, asymptotic_sigma);
asymptotic_cdf = normcdf(x, asymptotic_mu, asymptotic_sigma);

% Create a subplot for asymptotic PDF
subplot(length(N_values), 2, 2 * length(N_values) - 1);
plot(x, asymptotic_pdf, 'k--', 'LineWidth', 2);
title('Asymptotic PDF (N = \infty)');
grid on;

% Create a subplot for asymptotic CDF
subplot(length(N_values), 2, 2 * length(N_values));
plot(x, asymptotic_cdf, 'k--', 'LineWidth', 2);
title('Asymptotic CDF (N = \infty)');
grid on;

% Adjust the figure layout
sgtitle('Comparison of Exact and Asymptotic Normal Distributions of Y');



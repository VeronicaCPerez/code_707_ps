%% Q5_6
S = 10000;
N = 5;
samples = binornd(1,4/5,N,S);


%% Q3
% Compute the sample means
sample_means = mean(samples);

% Plot histogram of sample means
figure;
histogram(sample_means, 'Normalization', 'probability', 'EdgeColor', 'white');
title('Histogram of Sample Means for N = 5, Bernoulli(4/5)');
xlabel('Sample Means');
ylabel('Probability');
grid on;
saveas(gcf, '/Users/veronica/Dropbox/Apps/Overleaf/EC_707_PS_vcperez/figures/PS_5_5_6_1.png'); % Save as PNG


%% Q4

% Given data
alpha_values = 0.01:0.01:1;
N = 5;
S = 10000;

% Generate samples
samples = binornd(1, 4/5, N, S);

% Compute the sample means
sample_means = mean(samples);

% Initialize vector of real sizes
real_sizes = zeros(size(alpha_values));

% Compute vector of real sizes
critical_values = 0.5 + sqrt(0.25/N) * norminv(1 - alpha_values);

for i = 1:numel(alpha_values)
    real_sizes(i) = mean(sample_means > critical_values(i));
end

% Display the vector of real sizes
disp('Vector of Real Sizes for each alpha:');
disp(real_sizes);

% Plot real sizes
figure;
plot(alpha_values, real_sizes, 'LineWidth', 1.5);
title('Real Sizes of the Test vs. \alpha for N = 5, Bernoulli = 4/5');
xlabel('\alpha');
ylabel('Real Sizes');
grid on;

saveas(gcf, '/Users/veronica/Dropbox/Apps/Overleaf/EC_707_PS_vcperez/figures/PS_5_5_6_2.png'); % Save as PNG


%% Q5

%%%%% N = 10
alpha_values = 0.01:0.01:1;
N = 10;
S = 10000;

% Generate samples
samples = binornd(1, 4/5, N, S);

% Compute the sample means
sample_means = mean(samples);

% Initialize vector of real sizes
real_sizes = zeros(size(alpha_values));

% Compute vector of real sizes
critical_values = 0.5 + sqrt(0.25/N) * norminv(1 - alpha_values);

for i = 1:numel(alpha_values)
    real_sizes(i) = mean(sample_means > critical_values(i));
end

% Display the vector of real sizes
disp('Vector of Real Sizes for each alpha:');
disp(real_sizes);

% Plot real sizes
figure;
plot(alpha_values, real_sizes, 'LineWidth', 1.5);
title('Real Sizes of the Test vs. \alpha for N = 10, Bernoulli = 4/5');
xlabel('\alpha');
ylabel('Real Sizes');
grid on;

saveas(gcf, '/Users/veronica/Dropbox/Apps/Overleaf/EC_707_PS_vcperez/figures/PS_5_5_6_3_n10.png'); % Save as PNG


%%%%% N = 100
alpha_values = 0.01:0.01:1;
N = 100;
S = 10000;

% Generate samples
samples = binornd(1, 4/5, N, S);

% Compute the sample means
sample_means = mean(samples);

% Initialize vector of real sizes
real_sizes = zeros(size(alpha_values));

% Compute vector of real sizes
critical_values = 0.5 + sqrt(0.25/N) * norminv(1 - alpha_values);

for i = 1:numel(alpha_values)
    real_sizes(i) = mean(sample_means > critical_values(i));
end

% Display the vector of real sizes
disp('Vector of Real Sizes for each alpha:');
disp(real_sizes);

% Plot real sizes
figure;
plot(alpha_values, real_sizes, 'LineWidth', 1.5);
title('Real Sizes of the Test vs. \alpha for N = 100, Bernoulli = 4/5');
xlabel('\alpha');
ylabel('Real Sizes');
grid on;

saveas(gcf, '/Users/veronica/Dropbox/Apps/Overleaf/EC_707_PS_vcperez/figures/PS_5_5_6_4_n100.png'); % Save as PNG


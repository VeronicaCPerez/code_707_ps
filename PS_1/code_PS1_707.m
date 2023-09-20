%%% Stats PS 1 code


%%%%% Point 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% with normal dist
%%%%%%%%%%%%%%%%%%

% Define the parameters for the normal distribution
mu_normal = 0;       % Mean normak
sigma_normal = 1;    % Standard normal

% Create a range of values for x and y
x = linspace(-3, 3, 100); % Adjust the range and number of points as needed
y = linspace(-3, 3, 100);

% Create a grid of (x, y) pairs for evaluation
[X, Y] = meshgrid(x, y);

% Compute the CDF values for X and Y
F_x = normcdf(X, mu_normal, sigma_normal);
F_y = normcdf(Y, mu_normal, sigma_normal);

% Compute the joint CDF H(x, y)
H = normcdf(X, mu_x, sigma_x) .* normcdf(Y, mu_y, sigma_y);

% Compute H_plus
H_plus = min(F_x, F_y);

% Compute H_minus
H_minus = max(F_x + F_y - 1, 0);

% Create Figure 1: Joint CDF (H)
figure;
surf(X, Y, H);
title('Joint CDF (H)');
xlabel('X');
ylabel('Y');
zlabel('H');
set(gcf, 'Color', 'w'); % Set the background color to white

saveas()

% Create Figure 2: H_plus
figure;
surf(X, Y, H_plus);
title('H Plus');
xlabel('X');
ylabel('Y');
zlabel('H Plus');
set(gcf, 'Color', 'w'); % Set the background color to white

% Create Figure 3: H_minus
figure;
surf(X, Y, H_minus);
title('H Minus');
xlabel('X');
ylabel('Y');
zlabel('H Minus');
set(gcf, 'Color', 'w'); % Set the background color to white

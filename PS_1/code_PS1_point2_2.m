% Define the PDF function
pdf = @(x, y) x.^2 + 2*y.^2;

% Create a grid of x and y values
x = linspace(0, 1, 100);
y = linspace(0, 1, 100);
[X, Y] = meshgrid(x, y);

% Calculate the PDF values on the grid
Z = pdf(X, Y);

% Create a contour plot
figure;
contour(X, Y, Z, 15);
xlabel('X');
ylabel('Y');
title('Contour Plot of PDF f_{X,Y}(x, y) = x^2 + 2y^2');
colorbar;
saveas(gcf, '/Users/veronica/Dropbox/Apps/Overleaf/EC_707_PS_vcperez/figures/PS_1_2_2_contour.png'); % Save as PNG

% Create a 3D surface plot
figure;
surf(X, Y, Z);
xlabel('X');
ylabel('Y');
zlabel('PDF Value');
title('3D Surface Plot of PDF f_{X,Y}(x, y) = x^2 + 2y^2');
colorbar;
saveas(gcf, '/Users/veronica/Dropbox/Apps/Overleaf/EC_707_PS_vcperez/figures/PS_1_2_2_surface.png'); % Save as PNG

% Rotate the 3D plot for better visualization
% view(45, 30);

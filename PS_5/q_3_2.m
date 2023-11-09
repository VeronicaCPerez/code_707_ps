% Define the function
theta = [1:0.1:5]';
alpha = 0.05;
N_values = [1, 5, 10, 50, 100, 1000];
figure
legend('show','location','best')
hold on 
for n = 1:length(N_values)
    N = N_values(n);
    for i=1:size(theta)
        power(i) = 1-((1-alpha)/theta(i)^N);
    end
    name = 'N=' + string(N);
    
    plot(theta, power, 'DisplayName', name)
end 

ylabel("Power(theta)")
xlabel("Theta")
hold off

title(['Graph for \alpha = 0.05 and different values of N']);
xlabel('\theta');
ylabel('\Pi(\theta)');
legend('Location', 'best');
hold off;
saveas(gcf, '/Users/veronica/Dropbox/Apps/Overleaf/EC_707_PS_vcperez/figures/PS_5_3_2.png'); % Save as PNG

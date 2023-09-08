clear; close all;
%% 1e
theta_n = linspace( -1, 1, 21);
n = 10000;
R1_n = 1./n./(theta_n.^2 + 1)*n;
R2_n = n./(1 + theta_n.^2).*(theta_n.^2 /(n+1)^2 - 2*theta_n/(n+1)^2 + 1/(n+1));
R3_n = 1./(1+sqrt(n))^2*n*ones(size(theta_n));
figure;
plot( theta_n, R1_n, "b-" );
hold on;
plot( theta_n, R2_n, "r-." );
plot( theta_n, R3_n );
set(gca, "fontweight","bold");
ylabel('Risk value'); xlabel('\Theta');
legend('R(\theta,\delta_1)','R(\theta,\delta_2)','R(\theta,\delta_3)','Location','Best');
hold off;
R6_n = (theta_n - 1).^2./(theta_n.^2 + 1)*n;
figure;

plot( theta_n, R1_n, "b-" );
hold on;
plot( theta_n, R2_n, "r-." );
set(gca, "fontweight","bold");
ylabel('Risk value'); xlabel('\Theta');
legend('R(\theta,\delta_1)','R(\theta,\delta_2)','Location','Best');
hold off;
figure;
plot( theta_n, R6_n );
ylabel('Risk value'); xlabel('\Theta');
legend('R(\theta,\delta_6)','Location','Best');


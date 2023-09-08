clear; close all;
%% 1b
theta = linspace( -1, 1, 21);
R1 = 1./(1 + theta.^2);
R2 = 1./4*1./(1 + theta.^2).*(9*theta.^2 + 8*theta + 3);
R3 = 1/4*ones(size(theta));
R4 = (theta.^2 + 4)./(theta.^2 + 1);
R5 = (theta.^2)./(theta.^2 + 1);
R6 = (theta - 1).^2./(theta.^2 + 1);
plot( theta, R1, theta, R2, theta, R3, theta, R4, theta, R5, theta, R6 );
set(gca, "fontweight","bold");
ylabel('Risk value'); xlabel('\Theta');
legend('R(\theta,\delta_1)','R(\theta,\delta_2)','R(\theta,\delta_3)','R(\theta,\delta_4)','R(\theta,\delta_5)','R(\theta,\delta_6)','Location','Best');

theta = linspace(0,1,21);
f1 = abs( theta - 0).*(1 - theta).^2 + 2*abs( theta - 0).*theta.*(1 - theta) + abs( theta - 1 ).*theta.^2;
f2 = abs( theta - 0).*(1 - theta).^2 + 2*abs( theta - 1).*theta.*(1 - theta) + abs( theta - 1 ).*theta.^2;
f3 = abs( theta - 1).*(1 - theta).^2 + 2*abs( theta - 1).*theta.*(1 - theta) + abs( theta - 1 ).*theta.^2;
f4 = abs( theta - 1).*(1 - theta).^2 + 2*abs( theta - 0).*theta.*(1 - theta) + abs( theta - 1 ).*theta.^2;
plot( theta, f1, theta, f2, theta, f3, theta, f4, theta, abs( theta - 1 ) );
set(gca, "fontweight","bold");
ylabel('Risk value'); xlabel('\Theta');
legend('(0,0)','(0,1)','(1,1)','(1,0)','\delta_3','Location','Best');
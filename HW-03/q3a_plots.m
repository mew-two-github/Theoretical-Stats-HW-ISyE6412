clear; close all;
%% define loss function
L = @(diff,c)(exp(c*(diff)) - c*(diff) - 1 );
%% plot for different c
diff = -10:0.01:10;
c1 = 0.2;
f1 = L( diff, c1 );
plot( diff, f1 );
set(gca, "fontweight","bold");
ylabel('Loss'); xlabel('d - \Theta');
title( "c = 0.2" );

c2 = 0.5;
f2 = L( diff, c2 );
figure;
plot( diff, f2 );
set(gca, "fontweight","bold");
ylabel('Loss'); xlabel('d - \Theta');
title( "c = 0.5" );

c3 = 1;
f1 = L( diff, c3 );
figure;
plot( diff, f1 );
set(gca, "fontweight","bold");
ylabel('Loss'); xlabel('d - \Theta');
title( "c = 1" );


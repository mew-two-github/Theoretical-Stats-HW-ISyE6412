x = [22,23.9,20.9,23.8,25,24,21.7,23.8,22.8,23.1,23.1,23.5,23.0,23.0];
n = length(x);
theta1hat = n/(-sum(log(x)) + n*log(max(x)));
theta2hat = max(x);
phi_hat = 1 - theta2hat^(-theta1hat);
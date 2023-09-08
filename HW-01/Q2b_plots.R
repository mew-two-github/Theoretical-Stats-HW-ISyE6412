theta <- seq(0,1,0.0001);
R1 <- 0;
for (i in 0:20){
R1 <- R1+choose(20,i)*(theta^i)*((1-theta)^(20-i))*abs(i/20 - theta);
}
R2 <- abs(1/3 - theta);
R3 <- abs(1 - theta);
plot(theta, R1,"l", ylab="Risk Function", ylim=c(0,1));
lines(theta, R2, col="red");
lines(theta, R3, col="blue")
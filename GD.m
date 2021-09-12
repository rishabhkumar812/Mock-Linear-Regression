x = [1;
 1.5;
 2.5;
 0.5;
 5;
 6.5;
 10;
 8;];
 
y = [39;
 44.3;
 55.9;
 27.4;
 94.9;
 95;
 94;
 96;];
 
theta = [0;0];

X = [ones(size(x,1),1) x];

figure (1);
scatter(x,y,'o','filled');
xlabel ('Hours');
ylabel ('Score');
title ('Cost = 2715.1, a=0, b=0');

hold on;

h = X*theta;
J = calcCostFunction(y,h);
figure (1);
plot(x,h,'r');
hold off;

[theta recordJ] = doGD(theta,X,y);

theta
recordJ;

figure (2);
scatter(x,y,'o','filled');
xlabel ('Hours');
ylabel ('Score');
title ('Cost = 64.495, a=35.0569, b=7.6013');

hold on;

h = X*theta;
J = calcCostFunction(y,h)
figure (2);
plot(x,h,'r');
hold off;


figure (3);
plot(recordJ,'r','linewidth',2);
xlabel('Iterations');
ylabel('Cost');
title('Running GD');











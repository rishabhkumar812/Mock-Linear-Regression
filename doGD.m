function [theta,recordJ] = doGD(theta,X,y)
  
  m = size(X,1);
  alpha = 0.05;
  iter= 1000;
  h = caclH(theta,X);
  recordJ = calcCostFunction(y,h);
 
  for i = 1:iter
    h = caclH(theta,X);
    d = h-y;
    theta = theta - alpha * (X'*d)/m;
    recordJ = [recordJ;calcCostFunction(y,h)];
  endfor
  
  
end
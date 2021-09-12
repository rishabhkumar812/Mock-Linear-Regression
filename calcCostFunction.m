function J = calcCostFunction(y,h)
  
  m = size(y,1);
  d = h-y;
  J = (d'*d)/(2*m);

end
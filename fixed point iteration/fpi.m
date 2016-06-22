%Fixed Point Iteration Method
g=@(x) sqrt((10+6*x+2*x^3-5*exp(x/2))/7);
x(1)=1.5;steps=60;
for i=1:steps
  x(i+1)=g(x(i));
end
r=x(steps+1);
e=x-r;
for i=1:steps
  rat(i+1)=e(i+1)/e(i);
end
rat(1)=0;
[x' e' rat']
%Gaussian elimination
clear
n=3;
for i=1:n
  for j=1:n
    a(i,j)=cos(cos(i+j)+sin(j));
  end
end
c=ones(n,1);
b=a*c;
aorig=a;borig=b;
%Elimination
for i=1:n-1
  for j=i+1:n
    m=a(j,i)/a(i,i);
    for k=i:n
      a(j,k)=a(j,k)-m*a(i,k);
    end
    b(j)=b(j)-m*b(i);
  end
end
%Back substitution
for i=n:-1:1
  for j=i+1:n
    b(i)=b(i)-a(i,j)*x(j);
  end
  x(i)=b(i)/a(i,i);
end
x'
RFE=max(abs(x'-c))/max(abs(c))
RBE=max(abs(borig-aorig*x'))/max(abs(borig))
EMF=RFE/RBE
ConditionNumber = cond(aorig,inf)
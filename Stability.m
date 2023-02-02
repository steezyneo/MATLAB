%TO CHECK THE STABILITY OF THE SYSTEM
num=[1 0.8];
den=[1 1.5 0.9];
N=200;
h=impz(num,den,N+1);
sum=0;
n=0:N;
for k=1:N+1
    if abs(h(k)<10^(-6));
        break;
    end;
    sum=sum+h(k);
end;
stem(n,h); grid;
disp('Value=');
disp(sum)
title('STABILITY OF DTS');  
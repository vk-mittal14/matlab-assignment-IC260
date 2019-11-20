% fun = @(x) exp(-x.^2).*log(x).^2;
% q = integral(fun, 0, Inf);
% 
% syms t T;
% T = 1:0.1:10;
% fun = @(x)(cos(pi*t)*heaviside(t));
% fun_y = matlabFunction((1/T)*(integral(fun, 1 - T, 100)));
% q = integral(fun, 0, 10);
% 
% syms s;
% T = 1:1:100;
% x = cos(pi*t)*heaviside(t);
% x_s = matlabFunction(laplace(x));
% h_s = (1-exp(-s*T))/s*T;
% 
% y_s = (1-exp(-s.*T))./T*(s^2 + pi^2);
% 
% y = matlabFunction(ilaplace(y_s));
% 
% d1 = 0;
% d2= 0;
% d3 = 0;
% d4 = 0;
% d5 = 0;
% d6 = 0;
% d7 =0;
% d8 =0;
% d9 =0;
% d10 =10;
% 
% for n = 1:.01:100
%    temp = y(n) ;
%    d1 = [d1 temp(1)];
%    d2 = [d2 temp(2)];
%    d3 = [d3 temp(3)];
%    d4 = [d4 temp(4)];
%    d5 = [d5 temp(5)]; 
% end
% 



% Simple Code

% Calculate H_s then calculate y_s from H_s & x_s 
% take its ilaplace for a particular T 
% it will be function of t
% plot it 

syms s;
y_s = (1-exp(-s*1000))/(1000*(s^2 + pi^2));
y = matlabFunction(ilaplace(y_s));
t = 1:.1:10;
plot(t, y(t))
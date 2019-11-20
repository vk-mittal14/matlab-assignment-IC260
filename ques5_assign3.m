% syms s;
% p_s = matlabFunction(s^2 + s+ 1);
% q_s = matlabFunction(2*s^3 + 3*s^2 + s + 1);
% 
% p = matlabFunction(ilaplace(s^2 + s+ 1));
% q = matlabFunction(ilaplace(2*s^3 + 3*s^2 + s + 1));
% 
% syms s t;
% f(s) = (s^2 + s+ 1);
% v(s) = (2*s^3 + 3*s^2 + s + 1);
% 
% fv = simplify(ifourier(fourier(f,s,t)+fourier(v,s,t),t,s));


u  = [2 1 1];
v = [2 3 1 1];

w = conv(u, v);

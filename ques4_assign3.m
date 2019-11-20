% fun = @(t) sin(2*pi*t) ()
syms x t;
func = piecewise(sin(2*pi*x)*heaviside(x)>=0,sin(2*pi*x)*heaviside(x), sin(2*pi*x)*heaviside(x)<0, 0);

% t = 0:.001:1;
y = subs(func, x, t);

plot(t, y);

y1_t =  matlabFunction(sin(2*pi*t)*(heaviside(t) - heaviside(t- .5)));
y1_s = matlabFunction(laplace(sin(2*pi*t)*(heaviside(t) - heaviside(t- .5))));

plot(t, y1_t(t));


y_final = 0;

for n = 0:10
    y_final = y_final + y1_t(t-n);
end
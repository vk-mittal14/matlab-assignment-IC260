syms s k;
x1 = (2*(s+2))/(s^2 + 7*s + 12);
t = -1000:0.0001:+1000;
il1 = matlabFunction(ilaplace(x1));

x2 = (s^2 + 2*s + 1)/(s*(s+1)*(s^2 + 10*s + 50));
il2 = matlabFunction(ilaplace(x2));

plot(t, il1(t));
plot(t, il2(t));
syms z;
fun1 = (z*(2*z + 3))/((z-1)*(z^2 - 5*z + 6));
fun2 = (z^2 - .3*z + .25)/(z^2 + .6*z + .25);
fun3 = ((z^2)*(-2*z^2 + 8*z - 7))/((z-1)*((z-2)^3));

fun1_iz = matlabFunction(iztrans(fun1));
fun2_iz = matlabFunction(iztrans(fun2));
fun3_iz = matlabFunction(iztrans(fun3));
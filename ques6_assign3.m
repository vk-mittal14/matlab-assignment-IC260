% https://in.mathworks.com/help/symbolic/compute-z-transforms-and-inverse-z-transforms.html

syms p(n) z
assume(n>=0 & in(n,'integer'))
f = p(n-2) + p(n-1);
fZT = ztrans(f,n,z);

syms pZT
fZT = subs(fZT,ztrans(p(n),n,z),pZT);
% 
% pZT = solve(fZT, pZT);
% pSol = iztrans(pZT,z,n);
% pSol = simplify(pSol);
% pSol = subs(pSol,[p(-1) p(-2)],[1 -1]);



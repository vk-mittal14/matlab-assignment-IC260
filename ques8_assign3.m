input = [];
for n= 1:100
    temp = cos(2*n*pi/10) + rand();
    input = [input temp];
end

t = 1:100;
window_size = 5;
B = (1/window_size)*ones(window_size,1); 
out = filter(B,1,input);

plot(t, input, t, out)

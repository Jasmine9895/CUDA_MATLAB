x = ones(4,4,'gpuArray');
a = gather(x)
disp('Initial')
disp(a)
y = mexGPUExample(x)
disp('final')
b = gather(y)
disp(b)


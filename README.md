# Call CUDA functions from MATLAB
This shows a simple multiply by two cuda function called from MATLAB. I have CUDA 6.5 and gcc 4.8.1 and MATLAB R2015a.
Take a look at this documentation https://www.mathworks.com/help/releases/R2013b/distcomp/run-mex-functions-containing-cuda-code.html


``` sh
module load gcc/4.8.1 #Load if available on the cluster
module load cuda/6.5
module load MATLAB/r2015a
mcc -m test.m # -> 'test' #Compile matlab if running on cluster
```
Compile the mex file
``` sh
mex mexGPUExample.cu  #First compile the mexCuda file
```


``` sh
qsub cuda.sh
```

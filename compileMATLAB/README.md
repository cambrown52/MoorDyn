# MoorDyn in MATLAB
## How to publish a C++ Library for MATLAB
MATLAB C++ complier must be set up e.g.
`mex -setup cpp`

C++ library can be published in MATLAB with steps defined here:  
https://se.mathworks.com/help/matlab/matlab_external/publish-interface-to-c-library-using-source-files.html

1. call `clibgen.generateLibraryDefinition`
2. modify interface to desired specifications
3. build MoorDynInterface.dll with `build`
4. use MoorDyn in MATLAB (see below)

The results from step 1+2 are stored in the GIT repo. If there are no changes to C++ source code, only step 3 should be necessary to run to recreate the MoorDynInterface.dll  


## How to use a published C++ Library in MATLAB

Once the MoorDynInterface.dll is compiled, it can be used by:
 1. put MoorDynInterface.dll on your search path.
 2. Call MoorDyn functions with `clib.MoorDyn`
 e.g.`clib.MoorDyn.LinesInit(...)`
 
 See all functions and call conventions `doc clib.MoorDyn`
 or a specific method `help clib.MoorDyn.LinesInit`
 ```
%add path to folder with MoorDynInterface.dll
addpath('c:\yourpathto\MoorDyn')

% read .\mooring\lines.txt input data and initialize
clib.MoorDyn.LinesInit([0,0,0,0,0,0],[0,0,0,0,0,0])

% extract mooring fairlead force
[status,force]=clib.MoorDyn.GetConnectForce(1);

% exit MoorDyn
clib.MoorDyn.LinesClose()
 ```
MATLAB clib documentation is locaed here 

https://se.mathworks.com/help/matlab/matlab_external/call-functions-in-cpp-shared-library.html

https://se.mathworks.com/help/matlab/matlab_external/call-functions-in-interface-to-matrixoperations-library.html
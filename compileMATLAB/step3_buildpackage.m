
%% make sure the c++ complier is set up
mex -setup cpp

%% list what is included in package
summary(defineMoorDyn)

%% built package
build(defineMoorDyn)

%% make sure the c++ complier is set up
mex -setup cpp

%% generate library definition from c++ source files
sourcePath = '..';
headerFile = 'MoorDyn.h';


cppFiles={'Connection.cpp'
          'kiss_fft.c'
          'Line.cpp'
          'Misc.cpp'
          'MoorDyn.cpp'};

clibgen.generateLibraryDefinition(fullfile(sourcePath,headerFile), ...
    "SupportingSourceFiles",fullfile(sourcePath,cppFiles'), ...
    "IncludePath",sourcePath,...
    "ReturnCArrays",false,...
    "CLinkage",true,...
    "Verbose",true)

  
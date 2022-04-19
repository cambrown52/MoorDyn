%% About defineMoorDyn.mlx
% This file defines the MATLAB interface to the library |MoorDyn|.
%
% Commented sections represent C++ functionality that MATLAB cannot automatically define. To include
% functionality, uncomment a section and provide values for &lt;SHAPE&gt;, &lt;DIRECTION&gt;, etc. For more
% information, see <matlab:helpview(fullfile(docroot,'matlab','helptargets.map'),'cpp_define_interface') Define MATLAB Interface for C++ Library>.



%% Setup
% Do not edit this setup section.
function libDef = defineMoorDyn()
libDef = clibgen.LibraryDefinition("MoorDynData.xml");
%% OutputFolder and Libraries 
libDef.OutputFolder = cd;
libDef.Libraries = "";

%% C++ function |LinesInit| with MATLAB name |clib.MoorDyn.LinesInit|
% C++ Signature: int LinesInit(double [] X,double [] XD)
LinesInitDefinition = addFunction(libDef, ...
   "int LinesInit(double [] X,double [] XD)", ...
   "MATLABName", "clib.MoorDyn.LinesInit", ...
   "Description", "clib.MoorDyn.LinesInit Representation of C++ function LinesInit."); % Modify help description values as needed.
defineArgument(LinesInitDefinition, "X", "clib.array.MoorDyn.Double", "input", 6); % <MLTYPE> can be "clib.array.MoorDyn.Double", or "double"
defineArgument(LinesInitDefinition, "XD", "clib.array.MoorDyn.Double", "input", 6); % <MLTYPE> can be "clib.array.MoorDyn.Double", or "double"
defineOutput(LinesInitDefinition, "RetVal", "int32");
validate(LinesInitDefinition);

%% C++ function |LinesCalc| with MATLAB name |clib.MoorDyn.LinesCalc|
% C++ Signature: int LinesCalc(double [] X,double [] XD,double [] Flines,double * input1,double * input2)
%LinesCalcDefinition = addFunction(libDef, ...
%    "int LinesCalc(double [] X,double [] XD,double [] Flines,double * input1,double * input2)", ...
%    "MATLABName", "clib.MoorDyn.LinesCalc", ...
%    "Description", "clib.MoorDyn.LinesCalc Representation of C++ function LinesCalc."); % Modify help description values as needed.
%defineArgument(LinesCalcDefinition, "X", "clib.array.MoorDyn.Double", "input", <SHAPE>); % <MLTYPE> can be "clib.array.MoorDyn.Double", or "double"
%defineArgument(LinesCalcDefinition, "XD", "clib.array.MoorDyn.Double", "input", <SHAPE>); % <MLTYPE> can be "clib.array.MoorDyn.Double", or "double"
%defineArgument(LinesCalcDefinition, "Flines", "clib.array.MoorDyn.Double", "input", <SHAPE>); % <MLTYPE> can be "clib.array.MoorDyn.Double", or "double"
%defineArgument(LinesCalcDefinition, "input4", "clib.array.MoorDyn.Double", "input", <SHAPE>); % <MLTYPE> can be "clib.array.MoorDyn.Double", or "double"
%defineArgument(LinesCalcDefinition, "input5", "clib.array.MoorDyn.Double", "input", <SHAPE>); % <MLTYPE> can be "clib.array.MoorDyn.Double", or "double"
%defineOutput(LinesCalcDefinition, "RetVal", "int32");
%validate(LinesCalcDefinition);

%% C++ function |FairleadsCalc2| with MATLAB name |clib.MoorDyn.FairleadsCalc2|
% C++ Signature: int FairleadsCalc2(double [] rFairIn,double [] rdFairIn,double [] fFairIn,double * t_in,double * dt_in)
%FairleadsCalc2Definition = addFunction(libDef, ...
%    "int FairleadsCalc2(double [] rFairIn,double [] rdFairIn,double [] fFairIn,double * t_in,double * dt_in)", ...
%    "MATLABName", "clib.MoorDyn.FairleadsCalc2", ...
%    "Description", "clib.MoorDyn.FairleadsCalc2 Representation of C++ function FairleadsCalc2."); % Modify help description values as needed.
%defineArgument(FairleadsCalc2Definition, "rFairIn", "clib.array.MoorDyn.Double", "input", <SHAPE>); % <MLTYPE> can be "clib.array.MoorDyn.Double", or "double"
%defineArgument(FairleadsCalc2Definition, "rdFairIn", "clib.array.MoorDyn.Double", "input", <SHAPE>); % <MLTYPE> can be "clib.array.MoorDyn.Double", or "double"
%defineArgument(FairleadsCalc2Definition, "fFairIn", "clib.array.MoorDyn.Double", "input", <SHAPE>); % <MLTYPE> can be "clib.array.MoorDyn.Double", or "double"
%defineArgument(FairleadsCalc2Definition, "t_in", "clib.array.MoorDyn.Double", "input", <SHAPE>); % <MLTYPE> can be "clib.array.MoorDyn.Double", or "double"
%defineArgument(FairleadsCalc2Definition, "dt_in", "clib.array.MoorDyn.Double", "input", <SHAPE>); % <MLTYPE> can be "clib.array.MoorDyn.Double", or "double"
%defineOutput(FairleadsCalc2Definition, "RetVal", "int32");
%validate(FairleadsCalc2Definition);

%% C++ function |LinesClose| with MATLAB name |clib.MoorDyn.LinesClose|
% C++ Signature: int LinesClose()
LinesCloseDefinition = addFunction(libDef, ...
    "int LinesClose()", ...
    "MATLABName", "clib.MoorDyn.LinesClose", ...
    "Description", "clib.MoorDyn.LinesClose Representation of C++ function LinesClose."); % Modify help description values as needed.
defineOutput(LinesCloseDefinition, "RetVal", "int32");
validate(LinesCloseDefinition);

%% C++ function |GetFairTen| with MATLAB name |clib.MoorDyn.GetFairTen|
% C++ Signature: double GetFairTen(int input1)
GetFairTenDefinition = addFunction(libDef, ...
    "double GetFairTen(int input1)", ...
    "MATLABName", "clib.MoorDyn.GetFairTen", ...
    "Description", "clib.MoorDyn.GetFairTen Representation of C++ function GetFairTen."); % Modify help description values as needed.
defineArgument(GetFairTenDefinition, "input1", "int32");
defineOutput(GetFairTenDefinition, "RetVal", "double");
validate(GetFairTenDefinition);

%% C++ function |GetFASTtens| with MATLAB name |clib.MoorDyn.GetFASTtens|
% C++ Signature: int GetFASTtens(int * numLines,float [] FairHTen,float [] FairVTen,float [] AnchHTen,float [] AnchVTen)
%GetFASTtensDefinition = addFunction(libDef, ...
%    "int GetFASTtens(int * numLines,float [] FairHTen,float [] FairVTen,float [] AnchHTen,float [] AnchVTen)", ...
%    "MATLABName", "clib.MoorDyn.GetFASTtens", ...
%    "Description", "clib.MoorDyn.GetFASTtens Representation of C++ function GetFASTtens."); % Modify help description values as needed.
%defineArgument(GetFASTtensDefinition, "numLines", "clib.array.MoorDyn.Int", "input", <SHAPE>); % <MLTYPE> can be "clib.array.MoorDyn.Int", or "int32"
%defineArgument(GetFASTtensDefinition, "FairHTen", "clib.array.MoorDyn.Float", "input", <SHAPE>); % <MLTYPE> can be "clib.array.MoorDyn.Float", or "single"
%defineArgument(GetFASTtensDefinition, "FairVTen", "clib.array.MoorDyn.Float", "input", <SHAPE>); % <MLTYPE> can be "clib.array.MoorDyn.Float", or "single"
%defineArgument(GetFASTtensDefinition, "AnchHTen", "clib.array.MoorDyn.Float", "input", <SHAPE>); % <MLTYPE> can be "clib.array.MoorDyn.Float", or "single"
%defineArgument(GetFASTtensDefinition, "AnchVTen", "clib.array.MoorDyn.Float", "input", <SHAPE>); % <MLTYPE> can be "clib.array.MoorDyn.Float", or "single"
%defineOutput(GetFASTtensDefinition, "RetVal", "int32");
%validate(GetFASTtensDefinition);

%% C++ function |GetConnectPos| with MATLAB name |clib.MoorDyn.GetConnectPos|
% C++ Signature: int GetConnectPos(int l,double [3] pos)
GetConnectPosDefinition = addFunction(libDef, ...
    "int GetConnectPos(int l,double [3] pos)", ...
    "MATLABName", "clib.MoorDyn.GetConnectPos", ...
    "Description", "clib.MoorDyn.GetConnectPos Representation of C++ function GetConnectPos."); % Modify help description values as needed.
defineArgument(GetConnectPosDefinition, "l", "int32");
defineArgument(GetConnectPosDefinition, "pos", "double", "output", [3]); % <MLTYPE> can be "clib.array.MoorDyn.Double", or "double"
defineOutput(GetConnectPosDefinition, "RetVal", "int32");
validate(GetConnectPosDefinition);

%% C++ function |GetConnectForce| with MATLAB name |clib.MoorDyn.GetConnectForce|
% C++ Signature: int GetConnectForce(int l,double [3] force)
GetConnectForceDefinition = addFunction(libDef, ...
    "int GetConnectForce(int l,double [3] force)", ...
    "MATLABName", "clib.MoorDyn.GetConnectForce", ...
    "Description", "clib.MoorDyn.GetConnectForce Representation of C++ function GetConnectForce."); % Modify help description values as needed.
defineArgument(GetConnectForceDefinition, "l", "int32");
defineArgument(GetConnectForceDefinition, "force", "double", "output", [3]); % <MLTYPE> can be "clib.array.MoorDyn.Double", or "double"
defineOutput(GetConnectForceDefinition, "RetVal", "int32");
validate(GetConnectForceDefinition);

%% C++ function |GetNodePos| with MATLAB name |clib.MoorDyn.GetNodePos|
% C++ Signature: int GetNodePos(int LineNum,int NodeNum,double [3] pos)
GetNodePosDefinition = addFunction(libDef, ...
    "int GetNodePos(int LineNum,int NodeNum,double [3] pos)", ...
    "MATLABName", "clib.MoorDyn.GetNodePos", ...
    "Description", "clib.MoorDyn.GetNodePos Representation of C++ function GetNodePos."); % Modify help description values as needed.
defineArgument(GetNodePosDefinition, "LineNum", "int32");
defineArgument(GetNodePosDefinition, "NodeNum", "int32");
defineArgument(GetNodePosDefinition, "pos", "double", "output", [3]); % <MLTYPE> can be "clib.array.MoorDyn.Double", or "double"
defineOutput(GetNodePosDefinition, "RetVal", "int32");
validate(GetNodePosDefinition);

%% C++ function |DrawWithGL| with MATLAB name |clib.MoorDyn.DrawWithGL|
% C++ Signature: int DrawWithGL()
DrawWithGLDefinition = addFunction(libDef, ...
    "int DrawWithGL()", ...
    "MATLABName", "clib.MoorDyn.DrawWithGL", ...
    "Description", "clib.MoorDyn.DrawWithGL Representation of C++ function DrawWithGL."); % Modify help description values as needed.
defineOutput(DrawWithGLDefinition, "RetVal", "int32");
validate(DrawWithGLDefinition);

%% C++ function |AllOutput| with MATLAB name |clib.MoorDyn.AllOutput|
% C++ Signature: void AllOutput(double input1,double input2)
AllOutputDefinition = addFunction(libDef, ...
    "void AllOutput(double input1,double input2)", ...
    "MATLABName", "clib.MoorDyn.AllOutput", ...
    "Description", "clib.MoorDyn.AllOutput Representation of C++ function AllOutput."); % Modify help description values as needed.
defineArgument(AllOutputDefinition, "input1", "double");
defineArgument(AllOutputDefinition, "input2", "double");
validate(AllOutputDefinition);

%% Validate the library definition
validate(libDef);

end

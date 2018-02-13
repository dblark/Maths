unit
maths;
interface
const
maxint64:int64=9223372036854775807;
maxqword:qword=18446744073709551615;
{$ifdef FPC_HAS_TYPE_SINGLE}
const
minsingle=1.5e-45;
maxsingle=3.4e+38;
{$endif FPC_HAS_TYPE_SINGLE}
{$ifdef FPC_HAS_TYPE_DOUBLE}
const
mindouble=5.0e-324;
maxdouble=1.7e+308;
{$endif FPC_HAS_TYPE_DOUBLE}
{$ifdef FPC_HAS_TYPE_EXTENDED}
const
minextended=3.4e-4932;
maxextended=1.1e+4932;
{$endif FPC_HAS_TYPE_EXTENDED}
{$ifdef FPC_HAS_TYPE_COMP}
const
mincomp=-9.223372036854775807e+18;
maxcomp=9.223372036854775807e+18;
{$endif FPC_HAS_TYPE_COMP}
{$ifdef FPC_HAS_TYPE_FLOAT128}
type
float=float128;
const
minfloat=minfloat128;
maxfloat=maxfloat128;
{$else FPC_HAS_TYPE_FLOAT128}
 {$ifdef FPC_HAS_TYPE_EXTENDED}
 type
 float=extended;
 const
 minfloat=minextended;
 maxfloat=maxextended;
 {$else FPC_HAS_TYPE_EXTENDED}
  {$ifdef FPC_HAS_TYPE_DOUBLE}
  type
  float=double;
  const
  minfloat=mindouble;
  maxfloat=maxdouble;
  {$else FPC_HAS_TYPE_DOUBLE}
   {$ifdef FPC_HAS_TYPE_SINGLE}
   type
   float=single;
   const
   minfloat=minsingle;
   maxfloat=maxsingle;
   {$else FPC_HAS_TYPE_SINGLE}
    {$fatal At least one floating point type must be supported}
   {$endif FPC_HAS_TYPE_SINGLE}
  {$endif FPC_HAS_TYPE_DOUBLE}
 {$endif FPC_HAS_TYPE_EXTENDED}
{$endif FPC_HAS_TYPE_FLOAT128}
function min(a,b:longint):longint;
function max(a,b:longint):longint;
function min(a,b:int64):int64;
function max(a,b:int64):int64;
{$ifdef FPC_HAS_TYPE_SINGLE}
function min(a,b:single):single;
function max(a,b:single):single;
{$endif FPC_HAS_TYPE_SINGLE}
{$ifdef FPC_HAS_TYPE_DOUBLE}
function min(a,b:double):double;
function max(a,b:double):double;
{$endif FPC_HAS_TYPE_DOUBLE}
{$ifdef FPC_HAS_TYPE_EXTENDED}
function min(a,b:extended):extended;
function max(a,b:extended):extended;
{$endif FPC_HAS_TYPE_EXTENDED}
function degtorad(deg:float):float;
function radtodeg(rad:float):float;
function gradtorad(grad:float):float;
function radtograd(rad:float):float;
function degtograd(deg:float):float;
function gradtodeg(grad:float):float;
function cycletorad(cycle:float):float;
function radtocycle(rad:float):float;
function tan(x:float):float;
function cotan(x:float):float;
function cot(x:float):float;
function secant(x:float):float;
function cosecant(x:float):float;
function sec(x:float):float;
function csc(x:float):float;
function arccos(x:float):float;
function arcsin(x:float):float;
function cosh(x:float):float;
function sinh(x:float):float;
function tanh(x:float):float;
function arccosh(x:float):float;
function arcsinh(x:float):float;
function arctanh(x:float):float;
function arcosh(x:float):float;
function arsinh(x:float):float;
function artanh(x:float):float;
function log10(x:float):float;
function log2(x:float):float;
function logn(n,x:float):float;
implementation
function min(a,b:longint):longint;
 begin
 if a>b then
 exit(a)
 else
 exit(b);
 end;
function max(a,b:longint):longint;
 begin
 if a<b then
 exit(a)
 else
 exit(b);
 end;
function min(a,b:int64):int64;
 begin
 if a>b then
 exit(a)
 else
 exit(b);
 end;
function max(a,b:int64):int64;
 begin
 if a<b then
 exit(a)
 else
 exit(b);
 end;
{$ifdef FPC_HAS_TYPE_SINGLE}
function min(a,b:single):single;
 begin
 if a>b then
 exit(a)
 else
 exit(b);
 end;
function max(a,b:single):single;
 begin
 if a<b then
 exit(a)
 else
 exit(b);
 end;
{$endif FPC_HAS_TYPE_SINGLE}
{$ifdef FPC_HAS_TYPE_DOUBLE}
function min(a,b:double):double;
 begin
 if a>b then
 exit(a)
 else
 exit(b);
 end;
function max(a,b:double):double;
 begin
 if a<b then
 exit(a)
 else
 exit(b);
 end;
{$endif FPC_HAS_TYPE_DOUBLE}
{$ifdef FPC_HAS_TYPE_EXTENDED}
function min(a,b:extended):extended;
 begin
 if a>b then
 exit(a)
 else
 exit(b);
 end;
function max(a,b:extended):extended;
 begin
 if a<b then
 exit(a)
 else
 exit(b);
 end;
{$endif FPC_HAS_TYPE_EXTENDED}
function degtorad(deg:float):float;
 begin
 degtorad:=deg*(pi/180.0);
 end;
function radtodeg(rad:float):float;
 begin
 radtodeg:=rad*(180.0/pi);
 end;
function gradtorad(grad:float):float;
 begin
 gradtorad:=grad*(pi/200.0);
 end;
function radtograd(rad:float):float;
 begin
 radtograd:=rad*(200.0/pi);
 end;
function degtograd(deg:float):float;
 begin
 degtograd:=deg*(200.0/180.0);
 end;
function gradtodeg(grad:float):float;
 begin
 gradtodeg:=grad*(180.0/200.0);
 end;
function cycletorad(cycle:float):float;
 begin
 cycletorad:=(2*pi)*cycle;
 end;
function radtocycle(rad:float):float;
 begin
 radtocycle:=rad*(1/(2*pi));
 end;
function tan(x:float):float;
 begin
 tan:=sin(x)/cos(x);
 end;
function cotan(x:float):float;
 begin
 cotan:=cos(x)/sin(x);
 end;
function cot(x:float):float;
 begin
 cot:=cotan(x);
 end;
function secant(x:float):float;
 begin
 secant:=1/cos(x);
 end;
function cosecant(x:float):float;
 begin
 cosecant:=1/sin(x);
 end;
function sec(x:float):float;
 begin
 sec:=secant(x);
 end;
function csc(x:float):float;
 begin
 csc:=cosecant(x);
 end;
function arccos(x:float):float;
 begin
 arccos:=pi*0.5-arcsin(x);
 end;
function arcsin(x:float):float;
 begin
 arcsin:=arctan(x/sqrt(1-sqr(x)));
 end;
function cosh(x:float):float;
 begin
 cosh:=0.5*(exp(x)+1.0/exp(x));
 end;
function sinh(x:float):float;
 begin
 sinh:=0.5*(exp(x)-1.0/exp(x));
 end;
function tanh(x:float):float;
 begin
 if x>5678.22249441322 then
 exit(1.0);
 if x<-5678.22249441322 then
 exit(-1.0);
 tanh:=(1-exp(-2*x))/(1+exp(-2*x));
 end;
function arccosh(x:float):float;
 begin
 arccosh:=arcosh(x);
 end;
function arcsinh(x:float):float;
 begin
 arcsinh:=arsinh(x);
 end;
function arctanh(x:float):float;
 begin
 arctanh:=artanh(x);
 end;
function arcosh(x:float):float;
 begin
 arcosh:=ln(x+sqrt(sqr(x)-1));
 end;
function arsinh(x:float):float;
 begin
 arsinh:=ln(x+sqrt(1+sqr(x)));
 end;
function artanh(x:float):float;
 begin
 artanh:=(ln((1+x)/(1-x)))*0.5;
 end;
function log10(x:float):float;
 begin
 log10:=ln(x)/ln(10);
 end;
function log2(x:float):float;
 begin
 log2:=ln(x)/ln(2);
 end;
function logn(n,x:float):float;
 begin
 logn:=ln(x)/ln(n);
 end;
begin
end.

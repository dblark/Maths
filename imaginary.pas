unit
imaginary;
interface
uses
maths;
type
complex=record
        r,i:float;
        end;
const
j:complex=(r:0;
           i:1);
operator :=(a:float)b:complex;
operator =(a,b:complex)c:boolean;
operator +(a,b:complex)c:complex;
operator -(a:complex)b:complex;
operator -(a,b:complex)c:complex;
operator *(a,b:complex)c:complex;
operator /(a,b:complex)c:complex;
function abs(x:complex):float;
function arctan(x:complex):complex;
function arg(x:complex):float;
function conj(x:complex):complex;
function cos(x:complex):complex;
function exp(x:complex):complex;
function imag(x:complex):float;
function ln(x:complex):complex;
function polar(mag,ang:float):complex;
function real(x:complex):float;
function sin(x:complex):complex;
function sqr(x:complex):complex;
function sqrt(x:complex):complex;
function degtorad(deg:complex):complex;
function radtodeg(rad:complex):complex;
function gradtorad(grad:complex):complex;
function radtograd(rad:complex):complex;
function degtograd(deg:complex):complex;
function gradtodeg(grad:complex):complex;
function cycletorad(cycle:complex):complex;
function radtocycle(rad:complex):complex;
function tan(x:complex):complex;
function cotan(x:complex):complex;
function cot(x:complex):complex;
function secant(x:complex):complex;
function cosecant(x:complex):complex;
function sec(x:complex):complex;
function csc(x:complex):complex;
function arccos(x:complex):complex;
function arcsin(x:complex):complex;
function cosh(x:complex):complex;
function sinh(x:complex):complex;
function tanh(x:complex):complex;
function arccosh(x:complex):complex;
function arcsinh(x:complex):complex;
function arctanh(x:complex):complex;
function arcosh(x:complex):complex;
function arsinh(x:complex):complex;
function artanh(x:complex):complex;
function log10(x:complex):complex;
function log2(x:complex):complex;
function logn(n,x:complex):complex;
implementation
operator :=(a:float)b:complex;
 begin
 b.r:=a;
 b.i:=0;
 end;
operator =(a,b:complex)c:boolean;
 begin
 c:=(a.r=b.r) and (a.i=b.i);
 end;
operator +(a,b:complex)c:complex;
 begin
 c.r:=a.r+b.r;
 c.i:=a.i+b.i;
 end;
operator -(a:complex)b:complex;
 begin
 b.r:=-a.r;
 b.i:=-a.i;
 end;
operator -(a,b:complex)c:complex;
 begin
 c.r:=a.r-b.r;
 c.i:=a.i-b.i;
 end;
operator *(a,b:complex)c:complex;
 begin
 c.r:=a.r*b.r-a.i*b.i;
 c.i:=a.i*b.r+b.i*a.r;
 end;
operator /(a,b:complex)c:complex;
 begin
 c.r:=(a.r*b.r+a.i*b.i)/(system.sqr(b.r)+system.sqr(b.i));
 c.i:=(a.i*b.r-b.i*a.r)/(system.sqr(b.r)+system.sqr(b.i));
 end;
function abs(x:complex):float;
 begin
 abs:=system.sqrt(system.sqr(x.r)+system.sqr(x.i));
 end;
function arctan(x:complex):complex;
 begin
 arctan:=ln((j-x)/(j+x))/(2*j);
 end;
function arg(x:complex):float;
 begin
 if x.r=0 then
 begin
  if x.i>0 then
  arg:=pi/2;
  if x.i=0 then
  arg:=0;
  if x.i<0 then
  arg:=pi/2*3;
 end
 else
 arg:=system.arctan(x.i/x.r);
 end;
function conj(x:complex):complex;
 begin
 conj.r:=x.r;
 conj.i:=-x.i;
 end;
function cos(x:complex):complex;
 begin
 cos:=(exp(j*x)+exp(-j*x))/2;
 end;
function exp(x:complex):complex;
 begin
 exp:=system.exp(x.r)*(system.cos(x.i)+j*system.sin(x.i));
 end;
function imag(x:complex):float;
 begin
 imag:=x.i;
 end;
function ln(x:complex):complex;
 begin
 ln:=system.ln(abs(x))+j*arg(x);
 end;
function polar(mag,ang:float):complex;
 begin
 polar:=mag*(system.cos(ang)+j*system.sin(ang));
 end;
function real(x:complex):float;
 begin
 real:=x.r;
 end;
function sin(x:complex):complex;
 begin
 sin:=(exp(j*x)-exp(-j*x))/(2*j);
 end;
function sqr(x:complex):complex;
 begin
 sqr:=x*x;
 end;
function sqrt(x:complex):complex;
 begin
 sqrt:=polar(system.sqrt(abs(x)),arg(x)/2);
 end;
function degtorad(deg:complex):complex;
 begin
 degtorad:=deg*(pi/180.0);
 end;
function radtodeg(rad:complex):complex;
 begin
 radtodeg:=rad*(180.0/pi);
 end;
function gradtorad(grad:complex):complex;
 begin
 gradtorad:=grad*(pi/200.0);
 end;
function radtograd(rad:complex):complex;
 begin
 radtograd:=rad*(200.0/pi);
 end;
function degtograd(deg:complex):complex;
 begin
 degtograd:=deg*(200.0/180.0);
 end;
function gradtodeg(grad:complex):complex;
 begin
 gradtodeg:=grad*(180.0/200.0);
 end;
function cycletorad(cycle:complex):complex;
 begin
 cycletorad:=(2*pi)*cycle;
 end;
function radtocycle(rad:complex):complex;
 begin
 radtocycle:=rad*(1/(2*pi));
 end;
function tan(x:complex):complex;
 begin
 tan:=sin(x)/cos(x);
 end;
function cotan(x:complex):complex;
 begin
 cotan:=cos(x)/sin(x);
 end;
function cot(x:complex):complex;
 begin
 cot:=cotan(x);
 end;
function secant(x:complex):complex;
 begin
 secant:=1/cos(x);
 end;
function cosecant(x:complex):complex;
 begin
 cosecant:=1/sin(x);
 end;
function sec(x:complex):complex;
 begin
 sec:=secant(x);
 end;
function csc(x:complex):complex;
 begin
 csc:=cosecant(x);
 end;
function arccos(x:complex):complex;
 begin
 arccos:=pi*0.5-arcsin(x);
 end;
function arcsin(x:complex):complex;
 begin
 arcsin:=arctan(x/sqrt(1-sqr(x)));
 end;
function cosh(x:complex):complex;
 begin
 cosh:=0.5*(exp(x)+1.0/exp(x));
 end;
function sinh(x:complex):complex;
 begin
 sinh:=0.5*(exp(x)-1.0/exp(x));
 end;
function tanh(x:complex):complex;
 begin
 if real(x)>5678.22249441322 then
 exit(1.0);
 if real(x)<-5678.22249441322 then
 exit(-1.0);
 tanh:=(1-exp(-2*x))/(1+exp(-2*x));
 end;
function arccosh(x:complex):complex;
 begin
 arccosh:=arcosh(x);
 end;
function arcsinh(x:complex):complex;
 begin
 arcsinh:=arsinh(x);
 end;
function arctanh(x:complex):complex;
 begin
 arctanh:=artanh(x);
 end;
function arcosh(x:complex):complex;
 begin
 arcosh:=ln(x+sqrt(sqr(x)-1));
 end;
function arsinh(x:complex):complex;
 begin
 arsinh:=ln(x+sqrt(1+sqr(x)));
 end;
function artanh(x:complex):complex;
 begin
 artanh:=(ln((1+x)/(1-x)))*0.5;
 end;
function log10(x:complex):complex;
 begin
 log10:=ln(x)/ln(10);
 end;
function log2(x:complex):complex;
 begin
 log2:=ln(x)/ln(2);
 end;
function logn(n,x:complex):complex;
 begin
 logn:=ln(x)/ln(n);
 end;
begin
end.

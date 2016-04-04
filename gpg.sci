//Code written by PARESH YEOLE-VNIT,nagpur
//Fossee in control system
//Function for finding "peak gain" of a system
//input argument = 'transfer function'
//output argument = 'peak gain'

function[gain]=getpeakgain(h)  //peakgain is the output of the function and h
           //h is the transfer function either of SISO aur MIMO systems
         //if given system is in state space then convert it into transfer fuction 
           //using inbuilt command ss2tf and then pass it to the "getpeakgain" 
  f=0:0.01:7; //this is the general limit of freq range where we expect peak gain
    q=0;
    w=2*%pi*f; //converting freq in rad/s
    p=length(w); // length of matrix w
    x=horner(h,w(1)); 
    gain=abs(x);   //taking the mag value of x
    for i=1:p
        
        x=horner(h,w(i)*sqrt(-1)); //putting s=jw in transf function and calc gain
       if abs(x)>q then    //checking if the given value is greater than prev one
         gain=abs(x)     //if 'yes' then update the value 
         q=abs(x);
        end
    end
    
endfunction
//Ex:- step1-put code in console - - exec gpg.sci
//   step2- define a tf by s = poly(0,'s') ; p=(s+1)/(s^3-5*s+4) ; p=syslin('c',h)
// step3- call the function by getpeakgain(p)
//here is your answer :- ans =0.25

//Code written by PARESH YEOLE-VNIT,nagpur
//Fossee in control system
//Function for finding "crossover freq of given gain" of a system
//input argument ='transfer function','gain at which the freg of cross-over is req'
//output argument= 'frequency @ which mag.of given tf crosses the given gain'

function[crover]=getgaincrossover(h,t) //getgaincrossover will give you the freqs 
      // freqs will be given @ which the system is crossing the required gain
 //result will be column matrix @ which the system is crossing the particular gain 
    f=0:0.001:5;  //this is the general limit of freq range 
    x=0;
    w=2*%pi*f; //conv freq into rad/s
     p=length(w); //length of matrix w
    //x=horner(h,w(1)*sqrt(-1));
    t=msprintf('%3.2f',t);
    //t=strtod(t);
    crover=w(1);
    for i=1:p
        
   x=[abs(horner(h,w(i)*sqrt(-1)))]; //putting s=jw in tf and calc gain
       x=abs(x);
       x=msprintf('%3.2f',x);
       //x=strtod(x);
       //u=strcmp(t,x);
       if  t==x then //check if gain is equal to given gain 
       crover=[crover ; (w(i))]; //if 'yes' then put the freq to result matrix
       //the resultant freq are in "rad/s"
        end
    //crover=x;
end
crover(1,:)=[];
if crover == [] then              //if no such freqs found then disp empty matrix
    disp("empty matrix");
    end
endfunction
//Ex:- step1-put code in console - - exec gco.sci
//   step2- define a tf by s = poly(0,'s') ; p=(s+1)/(s^3-5*s+4) ; p=syslin('c',p)
// step3- call the function by getgaincrossover(p,0.48)
//here is your answer :- ans =[1.72 ; 1.73]

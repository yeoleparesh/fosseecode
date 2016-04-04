# fosseecode
iitbintern
Author - PARESH YEOLE - VNIT ,Nagpur
 So i have applied for a internship in control systems in scilab under the fossee project
 So i have written two functions namely getpeakgain and getgaincrossover in scilab
 ## getpeakgain (file name -gpg.sci)--- this function intends to find the max gain the system reaches in freq / mag. plot of SISO as well       as MIMO systems.
      so for this function i have taken a certain  range of freq at which we expect the max gain will occur in  a sytem , then 
      i have substituted s=j*w (j=sqrt(-1)) in the transfer and taking its mag and then checking for each value of w and finding the max.       value amoong them and returning it.                                                                                                       i/p argument - transfer function                                                                                                         o/p argument - peak gain mag. 
 ## getgaincrossover (file name - gco.sci) --- this function intends to find the frequencies at which the magnitude plot is crossing the    given gain value and          returning all such frequencies in a matrix. The frequencies returned or the result will be in  'rad/s' .                                 Here are two input arguments-1.transfer function 2.gain at which crossover freq is to be found                                           output - is a column matrix of freq.
 
 Steps to execute --
       1) execute the function file in console- exec gpg.sci  (or) exec gco.sci
       2)define transfer function say sys in s domain [s = poly(0,'s') ; p=(s+1)/(s^3-5*s+4) ; p=syslin('c',p)]
       3)call the function getpeakgain(p)   (or)  getgaincrossover(p,1.5) (say)
       4) result will be displayed. if no crossover freq is present then empty matrix will be displayed in case of later function.

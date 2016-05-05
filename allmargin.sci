function[]=allmargin(h)
    [Gain_Margin,GM_freq]=g_margin(h);
    [Phase_Margin,PM_freq]=p_margin(h);
    Delay_Margin=Phase_Margin*(1/PM_freq)*(%pi/180);
    DM_freq=PM_freq;
    stable=1;
    if(Phase_Margin < 0 | Gain_Margin<0 )
        stable=0;
       
    end
    disp('Gain_Margin = ');
    disp(Gain_Margin);
    disp('GM_freq = ');
    disp(GM_freq);
    disp('Phase_Margin = ');
    disp(Phase_Margin);
    disp('PM_freq = ');
    disp(PM_freq);
    disp('Delay_Margin =');
    disp(Delay_Margin);
    disp('DM_freq =');
    disp(DM_freq);
    disp('stable =');
    disp(stable);
        
  
endfunction

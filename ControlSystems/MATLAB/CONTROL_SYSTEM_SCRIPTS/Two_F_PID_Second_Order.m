%% 2(f) PID Analysis
% Author: Pushkar Antony
% PS Number: 99003729
% Date: 8th April 2021.
% Version: 1.0.

%% First Order System PID Analysis
clc;
B1= 0.5;
M1= 5;
P1 = 2;
sys1 = tf([P1],[M1,B1+1])
pidTuner(sys1)

%% Second Order System PID Analysis
B2= 0.5
M2= 5;
K2 =1;
P2=5;
sys2 = tf([P2*K2],[M2,B2,2*K2])
pidTuner(sys2)

%% Comparison Analysis:
% First Order sys:
%   PI: Ideal system: Kp= 0.78
%        (Un-Tuned)   Ki= 0.7
%                     Tr= 2.7 
%                     Ts= 9.87
%                     Overshoot= 13.8%   
%       
%       Best system:  Kp= 1.25
%      (After Tuning) Ki= 0.46
%                     Tr= 3.59
%                     Ts= 5.39
%                     Overshoot= 1.33%
%
%   PD: Ideal system: Kp= 53.18
%        (Un-Tuned)   Kd= 0
%                     Tr= 0.102
%                     Ts= 0.181
%                     Overshoot= 0  
%       
%       Best system:  Kp= 53.18
%      (After Tuning) Kd= 0
%                     Tr= 0.102
%                     Ts= 0.181
%                     Overshoot= 0
%
%  PID: Ideal system: Kp= 1.07
%        (Un-Tuned)   Ki= 0.53
%                     Kd= 0
%                     Tr= 3.04
%                     Ts= 10.6
%                     Overshoot= 6.08%   
%       
%       Best system:  Kp= 1.07
%      (After Tuning) Ki= 0.53
%                     Kd= 0
%                     Tr= 3.04  
%                     Ts= 10.6
%                     Overshoot= 6.08%

% Second Order sys:
%   PI: Ideal system: Tr= 51.1 
%        (Un-Tuned)   Ts= 94.3
%                     Overshoot= 0%   
%       
%       Best system:  Tr= 50.4 
%      (After Tuning) Ts= 93.4
%                     Overshoot= 0.00235%
%
%   PD: Ideal system: Kp= 2697.9
%        (Un-Tuned)   Kd= 63.48
%                     Tr= 0.0179
%                     Ts= 0.13
%                     Overshoot= 24.3%   
%       
%       Best system:  Kp= 27.35
%      (After Tuning) Kd= 6.251
%                     Tr= 0.175
%                     Ts= 1.35
%                     Overshoot= 24.71%
%
%  PID: Ideal system: Kp= 3.053
%        (Un-Tuned)   Ki= 0.68
%                     Kd= 2.66  
%                     Tr= 0.495
%                     Ts= 9.3
%                     Overshoot= 12.4%   
%       
%       Best system:  Kp= 3.053
%      (After Tuning) Ki= 0.68
%                     Kd= 2.66
%                     Tr= 0.495
%                     Ts= 9.3
%                     Overshoot= 12.4%

%% 2(d) Movement of Poles.
% Author: Pushkar Antony
% PS Number: 99003729
% Date: 7th April 2021.
% Version: 1.0.

%% Description: Movement of poles is shown along the real and img axis 
clc;
poles = [-10+20i -10-20i -5+10i -5-10i -10+10i -10-10i  3+10i 3-10i -5+0i +5+0i -10+0i +10-0i ];
zeros = [0 0];
gain = 0.9;
s=zpk(zeros,poles,gain);
pzplot(s)
[wn,zeta] = damp(s)

%% Analysis
% If we move along the roots along the wn,
%   the frequency of the system increases.
%   Overshoot remains same.
% If we move along the jw axis,
%   overshoot of system increases.
%   frequency of system increases.
% If we move along zeta wn axis or sigma,
%   Overshoot increases, frequency decreases on right side movement.
%   Overshoot decreases, frequency increases on left side movement.
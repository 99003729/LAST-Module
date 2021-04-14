%% 2(e) Roots of the Standard Equation
% Author: Pushkar Antony
% PS Number: 99003729
% Date: 7th April 2021.
% Version: 1.0.

%% code
clc;
zeta=1;
TF=tf([1],[1,(2*zeta),1])
sys = tf([1],[1,(2*zeta),1])
figure
subplot(2,3,1)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*zeta),1])
zplane(z,p)
 
zeta=0.7 ;
TF=tf([1],[1,(2*zeta),1])
sys = tf([1],[1,(2*zeta),1])
subplot(2,3,2)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*zeta),1])
zplane(z,p)

zeta=2;
TF=tf([1],[1,(2*zeta),1])
sys = tf([1],[1,(2*zeta),1])
subplot(2,3,3)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*zeta),1])
zplane(z,p)

zeta=-1.85;
TF=tf([1],[1,(2*zeta),1])
sys = tf([1],[1,(2*zeta),1])
subplot(2,3,4)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*zeta),1])
zplane(z,p)

zeta=-0.4;
TF=tf([1],[1,(2*zeta),1])
sys = tf([1],[1,(2*zeta),1])
subplot(2,3,5)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*zeta),1])
zplane(z,p)

zeta=-2.45;
TF=tf([1],[1,(2*zeta),1])
sys = tf([1],[1,(2*zeta),1])
subplot(2,3,6)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*zeta),1])
zplane(z,p)

%% Comparison Analysis:
% 1st value lise on negative x axis means: Critically-damped case & stable
% 2nd value lise in 2nd & 3rd quadrant means: Under-damp case & stable
% 3rd value lise on negative x axis means: Overdamped case & stable
% 4th value lise on positive x axis means: unstable
% 5th value lise on 1st & 4th quadrant means: unstable
% 6th value lise on positive x axis means: unstable
 
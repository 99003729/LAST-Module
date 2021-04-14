%% 1(a) First Order Equation
% Author: Pushkar Antony
% PS Number: 99003729
% Date: 7th April 2021.
% Version: 1.0.

%% Plant Description
% The Mass-damper first order system is taken as Plant.
% Equation: f= Bv + M v'
% f = force; B= coefficient of friction; M = mass ; v= velocity.
% Values:  B1= 0.4, M1=1000; B2= 0.5, M2= 500; B3= 1.7, M3= 340;

%% Code:
clc;
B1= ([0.1 0.5 1.7]);
M1=([1000 5 340]);
for i=1:3
    sys = tf([1/M1(i)],[1,B1(i)/M1(i)])
    figure(i);
    subplot(2,1,1);
    impulse(sys);
    title('Impulse Input');
    subplot(2,1,2);
    step(sys);
    title('Step Input');
    [z,p,k]= tf2zp([1/M1(i)],[1,B1(i)/M1(i)])
    figure(4);
    zplane(z,p);
    xlim([-4*1e5 2*1e5]);
    ylim([-4*1e5 2*1e5]);
    hold on;
    S = stepinfo(sys)
end

%% Math Analysis
% Independent: Time(t)
% Dependent: Velocity(v) and Force(f)
% Constant: Mass(M) and Frictional Coefficient(B)

% Roots:(-B)/M

% IVT:
% 1. For step input: 0
% 2. For impulse input: 1/M

% FVT:
% 1. For step input: 1/B
% 2. For impulse input: 0

% Time Response Results:
% Rise Time :4tau = (4M)/B; where tau = M/B 

%% Comparison Analysis:(Speed, Accuracy and stability):
% 1) s=0.001/(0.0001s+1)- a stable system as the poles are in the 2nd 
%and 3rd quadrant.
% 2) There is no overshoot since it’s a first order system.
% 3) The rise time of 2nd system is least and hence it is the fastest 
%system.
% 4) The settling time of 2nd system is least and hence making it more 
%accurate than the rest of them.
% 5) The poles are moving farther away, the more the system becomes stable,
%as we can see in 2nd system.


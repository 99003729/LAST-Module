%% 1(c) First Order Equation
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

%Negative Feedback using gain input
clc;
B1= 0.5;
M1= 5;
P = 2;
sys = tf([P],[M1,B1+1])
figure(1);
subplot(2,2,1);
impulse(sys);
title('Impulse Input for k');
subplot(2,2,2);
step(sys);
title('Step Input for k');
subplot(2,2,3);
[z,p,k]= tf2zp([P],[M1,B1+1])
pzmap(sys)
subplot(2,2,4)
bode(sys)
margin(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
hold on;
S = stepinfo(sys)

B2= 0.5;
M2= 5;
P2 = 2;
sys = tf([P2],[M2,B2+1,0])
figure(2)
subplot(2,2,1);
impulse(sys);
title('Impulse Input for Integrator controller');
subplot(2,2,2);
step(sys);
title('Step Input for Integrator controller ');
subplot(2,2,3);
[z,p,k]= tf2zp([P2],[M2,B2+1,0])
pzmap(sys)
subplot(2,2,4)
bode(sys)
margin(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
hold on;
S = stepinfo(sys)

%Positive Feedback using integral input
B3= 0.8;
M3= 5;
sys = tf([1],[M3,B3-1,0])
figure(3);
subplot(2,2,1);
impulse(sys);
title('Step Input for Positive feedback');
subplot(2,2,2);
step(sys);
title('Step Input for Positive feedback');
subplot(2,2,3);
[z,p,k]= tf2zp([1],[M3,B3-1,0])
pzmap(sys)
subplot(2,2,4)
bode(sys)
margin(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
hold on;
S = stepinfo(sys)

%Positive Feedback using differentiator input
B4= 0.8;
M4= 5;
sys = tf([1,0],[M4,B4-1])
figure(4)
subplot(2,2,1);
impulse(sys);
title('Step Input for Positive feedback');
subplot(2,2,2);
step(sys);
title('Step Input for Positive feedback');
subplot(2,2,3);
[z,p,k]= tf2zp([1,0],[M4,B4-1])
pzmap(sys)
subplot(2,2,4)
bode(sys)
margin(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
hold on;
S = stepinfo(sys)

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
% 1) When a P controller is introduced in a negative feedback system, the 
%rise time and settling time decrease making the system more stable and
%more faster.
% 2) The P controller increases the amplitude of the entire system as well.
% 3) The gain margin is infinity and phase margin is 139 deg indicating 
%that the loop never goes below 180 degree. The loop gain tf is a stable 
%low pass of first order.
% 4) For positive feedback with controllers, the system becomes unstable.

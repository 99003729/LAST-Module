%% 3(a) Second Order Exponential Decay system
% Author: Pushkar Antony
% PS Number: 99003729
% Date: 10th April 2021.
% Version: 1.0.

%% Plant Description
% It is a exponential decay system of a radioactive material
% Equation- dM/dt=-kA(e^-kt)
% M=mass, k=constant, A= non zero constant, t=time
% Values- k=0.14, A=200

%% Without Controller
clc;
k= 0.14;
A= 200;
sys = tf([-k*A],[1,k,0])
figure(1);
subplot(3,1,1);
impulse(sys);
title('Impulse Input');
subplot(3,1,2);
step(sys);
title('Step Input');
[z,p,k] = tf2zp([-k*A],[1,k,0])
subplot(3,1,3);
zplane(z,p);
S = stepinfo(sys)

%% Open Loop with Controller (P)
P= 2;
sys = tf([P*(-k)*A],[1,k,0])
figure(2);
subplot(3,1,1);
impulse(sys);
title('Impulse Input');
subplot(3,1,2);
step(sys);
title('Step Input');
[z,p,k] = tf2zp([P*(-k)*A],[1,k,0])
subplot(3,1,3);
zplane(z,p);
S = stepinfo(sys)

%% Open Loop with Controller (I)
sys = tf([(-k)*A],[1,k,0,0])
figure(3);
subplot(3,1,1);
impulse(sys);
title('Impulse Input');
subplot(3,1,2);
step(sys);
title('Step Input');
[z,p,k] = tf2zp([-k*A],[1,k,0,0])
subplot(3,1,3);
zplane(z,p);
S = stepinfo(sys)

%% Closed Loop- Negative feedback with Controller (D)
sys = tf([(-k)*A,0],[1,k,(-k)*A])
figure(4);
subplot(3,1,1);
impulse(sys);
title('Impulse Input');
subplot(3,1,2);
step(sys);
title('Step Input');
[z,p,k] = tf2zp([-k*A,0],[1,k,(-k)*A])
subplot(3,1,3);
zplane(z,p);
S = stepinfo(sys)

%% Closed Loop- Positive feedback with Controller (D)
sys = tf([(-k)*A,0],[1,k,k*A])
figure(5);
subplot(3,1,1);
impulse(sys);
title('Impulse Input');
subplot(3,1,2);
step(sys);
title('Step Input');
[z,p,k] = tf2zp([-k*A,0],[1,k,k*A])
subplot(3,1,3);
zplane(z,p);
S = stepinfo(sys)

%% Math Analysis
% Independent: Time(t)
% Dependent: Mass(M)
% Constant: Non-zero constant(A), Constant(A)

%% Comparison Analysis
% 1) System without controller behaves exactly like an exponential decay.
%    with the system decaying exponentially.
% 2) On adding a proportionality controller to system , the system becomes 
%    unstable.
% 3) On adding a Integrator controller to system, the response times have 
%    decreased hugely, making the system reach stablity faster than a P
%    controller.
% 4) Integrator controller adds a pole to zero also.
% 5) On addition of a differentiator controller in negative feedback the
%    system becomes unstable.
% 6) A zero gets added at origin due to the differentiator.
% 7) On addition of a differentiator controller in positive feedback the
%    system becomes stable.
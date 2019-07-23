%% Model of a vehicle suspension - Part 2: System Analysis

%% Parameters
m1 = 2500;          % kg, sprung mass
m2 = 320;           % kg, unsprung mass
k1 = 80000;         % N/m, spring constant of suspension
k2 = 500000;        % N/m, spring constant of tire
b1 = 350;           % N*s/m damping constant of suspension
b2 = 15020;         % N*s/m damping constant of tire

%% Transfer functions
% Method 1: define the Laplace variable.
s = tf('s');
% TF wrt active force
G1 = ((m1+m2)*s^2+b2*s+k2)/((m1*s^2+b1*s+k1)*(m2*s^2+(b1+b2)*s+(k1+k2))-(b1*s+k1)*(b1*s+k1));
% TF wrt road
G2 = (-m1*b2*s^3-m1*k2*s^2)/((m1*s^2+b1*s+k1)*(m2*s^2+(b1+b2)*s+(k1+k2))-(b1*s+k1)*(b1*s+k1));

%% Open-loop step response
% Suggestion: help step
% Response for a unit step force input (1N)
figure(1)
step(G1)
title('Response to 1N active force step')
ylabel('X1 - X2 (m)')
% Response for a step disturbance input with magnitude 0.1 m
figure(2)
step(0.1*G2)
title('Response to 0.1m road step')
ylabel('X1 - X2 (m)')

%% Frequency response
% Suggestion: help bode
w = logspace(-1,2);
figure(1)
bode(G1,w)
% Normalize scale based on former plot
K=100000;
figure(2)
bode(K*G1,w)
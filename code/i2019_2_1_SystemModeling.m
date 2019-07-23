´´´matlab
%% Model of a vehicle suspension - Part 1: System Modeling
% http://ctms.engin.umich.edu/CTMS/index.php?example=Suspension&section=SystemModeling

% Physical scheme: Body mass m1 // (spring k1, damping b1, actuator U) //
%               Suspension mass m2 // (spring k2, damping b2) // Ground W
% State variables: positions of masses x1, x2
% Inputs: ground profile W, actuator force U
% Output: position difference y = x1 - x2
%
% Goal: design a feedback controller so that the output has
% an overshoot less than 5% and a settling time shorter than 5 seconds.

%% Parameters
m1 = 2500;          % kg, sprung mass
m2 = 320;           % kg, unsprung mass
k1 = 80000;         % N/m, spring constant of suspension
k2 = 500000;        % N/m, spring constant of tire
b1 = 350;           % N*s/m damping constant of suspension
b2 = 15020;         % N*s/m damping constant of tire

%% Transfer functions
% Suggestion: help tf

% Method 1: define the Laplace variable.
s = tf('s');
% TF wrt active force
G1 = ((m1+m2)*s^2+b2*s+k2)/((m1*s^2+b1*s+k1)*(m2*s^2+(b1+b2)*s+(k1+k2))-(b1*s+k1)*(b1*s+k1));
% TF wrt road
G2 = (-m1*b2*s^3-m1*k2*s^2)/((m1*s^2+b1*s+k1)*(m2*s^2+(b1+b2)*s+(k1+k2))-(b1*s+k1)*(b1*s+k1));

% Method 2: define numerator and denominator
% TF wrt active force
num_u = [(m1+m2) b2 k2];
den_u = [(m1*m2) (m1*(b1+b2))+(m2*b1) (m1*(k1+k2))+(m2*k1)+(b1*b2) (b1*k2)+(b2*k1) k1*k2];
Gu = tf(num_u,den_u);
% TF wrt road
num_w = [-(m1*b2) -(m1*k2) 0 0];
den_w = [(m1*m2) (m1*(b1+b2))+(m2*b1) (m1*(k1+k2))+(m2*k1)+(b1*b2) (b1*k2)+(b2*k1) k1*k2];
Gw = tf(num_w,den_w);

% Check method equivalence
are_G1Gu_equal = isequal(G1, Gu);
are_G2Gw_equal = isequal(G2, Gw);
are_G1G2_equal = isequal(G1, G2);
are_GuGw_equal = isequal(Gu, Gw);
´´´

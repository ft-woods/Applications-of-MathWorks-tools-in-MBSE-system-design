%% Parameters for Lab 06 Multi-Domain Systems Simulink Models

%% Propeller Thrust and Power Coefficient Parameters
% These parameters are for the "Polynomial fit" parameterization. The
% polynomial fit parameterization utilizes the coefficients of linear
% regression models for Thrust Coefficient vs. Advance Ratio and Power
% Coefficient vs. Advance Ratio. The parameter values for kT and kP thus
% take the form [pN, ..., p0] where the array elements are the polynomial
% coefficients for the respective model in descending order.
%
% The Advance Ratio is a non-dimensional term given by J = Va/(n*D)
%   where Va = Advance Velocity, n = rotational speed (in rev/sec), and
%   D = propeller diameter

% Regression Eq: 
% y = 0.7984x^6 - 2.4293x^5 + 2.762x^4 - 1.3455x^3 + 0.0738x^2 - 0.028x + 0.1171  
kT_poly = [0.7984 -2.4293 2.762 -1.3455 0.0738 -0.028 0.1171];

% Regression Eq: 
% y = 1.7649x^6 - 3.8297x^5 + 3.0358x^4 - 1.132x^3 + 0.1065x^2 + 0.01x + 0.0572
kP_poly = [1.7649 -3.8297 3.0358 -1.132 0.1065 0.01 0.0572];

%% Duty Cycle to RPM Lookup Table Parameters
% These parameters are used in a lookup table to convert duty cycle (0 - 1)
% to RPM. In the physical system, this task is performed by the ESC, which
% takes in a throttle command, interprets it as a commanded speed, and then
% modulates the voltage seen by the motor accordingly. The parameters
% RPM_data and duty_cycle_data are 1 x N arrays that are interpolated and
% used to map from an input duty cycle to an output speed command in RPM.
%
% The data points used in these parameters are derived from test data that
% was supplied by the motor manufacturer, T-Motor.

% Input duty cycle expressed as a value from 0 to 1
duty_cycle_data = [0 0.5 0.55 0.6 0.65 0.7 0.75 0.8 0.85 0.9 0.95 1];

% Output speed command expressed in RPM
RPM_data = [0 19932 21379 22752 24172 25353 26680 27697 28525 29579 ...
             30357 31924];

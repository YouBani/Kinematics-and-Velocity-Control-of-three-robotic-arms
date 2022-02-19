% RBE 501 - Robot Dynamics - Spring 2022
% Homework 2, Problem 3
% Worcester Polytechnic Institute
%
% Instructor: L. Fichera <lfichera@wpi.edu>
% Last modified: 02/06/2022
clear, clc, close all
addpath('utils');

%% Create the manipulator
n = 6; % degrees of freedom

% Robot dimensions (meters)
H1 = 0.320;
H2 = 0.225;
H3 = 0.225;
H4 = 0.065;
W  = 0.035;

robot = SerialLink([Revolute('d', H1, 'a', 0,  'alpha', -pi/2, 'offset', 0), ...
    Revolute('d', 0,  'a', H2, 'alpha', 0,     'offset', -pi/2), ...
    Revolute('d', W,  'a', 0,  'alpha', pi/2,  'offset', pi/2), ...
    Revolute('d', H3, 'a', 0,  'alpha', -pi/2, 'offset', 0), ...
    Revolute('d', 0,  'a', 0,  'alpha', pi/2,  'offset', 0), ...
    Revolute('d', H4, 'a', 0,  'alpha', 0,     'offset', 0)], ...
    'name', 'Staubli TX-40');

% Joint limits
qlim = [-180  180;  % q(1)
    -125  125;  % q(2)
    -138  138;  % q(3)
    -270  270;  % q(4)
    -120  133.5;% q(5)
    -270  270]; % q(6)

% Display the manipulator in the home configuration
q = zeros(1,n);
robot.teach(q);
function [y] = desired_trajectory()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
t = linspace(0,1000);
x1 =  0.0005*3.14*t;
x2 =  x1*0.2;

y1 = 2*x1+3*x2;


x = 5*cos(x1)+3*cos(x1+x2);

y = 5+5*sin(x1)+3*sin(x1+x2);
plot(y)
end
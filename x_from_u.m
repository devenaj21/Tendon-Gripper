function [y_calc,error,time_nxt, x1_c,x2_c,x3_c,x4_c]= x_from_u(u  ,y_des, time, x1, x2 , x3, x4 )
    % This function adds two numbers and returns the result
    time_nxt = time+1;
    
dt=0.001;
%dt = 1;
%x1=0;
%x2=0;
%x3=0;
%x4=0;

a1 = 0.5;
a2 = 0.5;
h = 0.05;
r1 = 0.01;
r2 = 0.005;
k2 = 0.01;
k1 = 0.01;
I1 = 0.0001;
I2 = 0.0001;
D = 0.001;
%X = [0; 0; 0.001; 0];
%M = [0 1 0 0;-k1/I1*X;[];[]];
%calc_x1 = zeros(1000,1);
%calc_x2 = zeros(1000,1);
%calc_x3 = zeros(1000,1);
%calc_x4 = zeros(1000,1);
%calc_x1(0)=x1;
%calc_x2(0)=x2;
%calc_x3(0)=x3;
%calc_x4(0)=x4;
%for i = 1:1000
   
    X1 = x1;
    X3 = x3;
    x1 = x1 + dt*(x2);
    x2 = x2 + dt*(-k1/I1*X1 + (D*cos(a1)-2*h*cos(a2+x3))/I1*u);
    x3 = x3 + dt*x4;
    x4 = x4 + dt*(-k2/I2*X3 + (h-r2)*cos(a2)/I2*u);
    %calc_x1(i) = x1;
    %calc_x2(i) = x2;
    %calc_x3(i) = x3;
    %calc_x4(i) = x4;
    %X = X + dt*M*X
    %X_new = [x1; x2; x3; x4];
    %X = [X X_new];
%end
y_calc = r2*x1+r1*x3;
error = y_calc - y_des(time);
x1_c = x1;
x2_c = x2;
x3_c = x3;
x4_c = x4;
end
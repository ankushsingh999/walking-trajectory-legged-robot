A = 0.1;
omega = pi/0.16;
u_fg= 0.16;
v = 0.04;
l = 0.16;
beta = 0.75;
h = 0.1;

%from the cubic polynomial of the trajectory 
a = -0.32;
b = 0.48;
c = 0;
d = 0;
i =0;
for t=  0:0.01:1
    i = i+1;
x(i,:) = a*t^3+ b*t^2+c*t+d;
x_dot(i,:) = 3*a*t^2+2*b*t+c; 
y(i,:) = A*sin(omega*x(i,:));
y_dot(i,:) = (A*omega*x_dot(i,:)*cos(omega*x(i,:)))
xb_g(i,:) = 0.06+v*t;
yb_g = h;
xr(i,:) = x(i,:) - xb_g(i,:);
yr(i,:) = y(i,:) - yb_g;
end
 t=  0:0.01:1;
figure(1);
subplot(2,3,1);
plot(t, x_dot)
xlabel('Time')
ylabel('Horizontal Velocity')

subplot(2,3,4);
plot(t, y_dot)
xlabel('Time')
ylabel('Vertical Velocity')

subplot(2,3,5);
plot(t, y)
xlabel('Time')
ylabel('Vertical Position')

subplot(2,3,2);
plot(t, x)
xlabel('Time')
ylabel('Horizontal Position')

subplot(2,3,3);
plot(x,y);
xlabel('Horizontal Position')
ylabel('Vertical Position')

subplot(2,3,6);
plot(xr, yr)
xlabel('Horizontal Position wrt b')
ylabel('Vertical Position wrt b')


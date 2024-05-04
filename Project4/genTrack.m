% Define parameters
path.radius = 200; % Radius of curved sections
path.l_st = 900; % Length of straight sections
path.width = 15;

% Define points for the track

% First straight
theta1 = linspace(0, 0, 100); 
x1 = linspace(0, path.l_st, 100);
y1 = linspace(0, 0, 100);

% First curve
theta2 = linspace(3*pi/2, pi/2, 100); 
x2 = path.radius * -cos(theta2) + path.l_st; 
y2 = path.radius * sin(theta2) + path.radius;

% Second straight
theta3 = linspace(pi, pi, 100);
x3 = linspace(path.l_st, 0, 100);
y3 = linspace(2*path.radius, 2*path.radius, 100);

% Second curve
theta4 = linspace(pi/2, 3*pi/2, 100);
x4 = path.radius * cos(theta4);
y4 = path.radius * sin(theta4) + path.radius;

% Concatenate the coordinates for a continuous line
x_track = [x1, x2, x3, x4];
y_track = [y1, y2, y3, y4];
% Simulates model for 60 minutes
genTrack;
Drive_Cycle;
P4init;
simout = sim("Project4_model.slx", "StopTime", "3600");
carX = simout.X.Data;
carY = simout.Y.Data;
tout = simout.tout;

% Race Statisitics
race = raceStat(carX, carY, tout, path, simout);
disp(race)
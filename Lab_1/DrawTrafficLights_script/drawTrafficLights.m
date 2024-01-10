function drawTrafficLights()
    % Create a figure
    figure;
    
    % Set the axis limits
    axis([-2 2 -2 2]);
    
    % Draw the traffic light pole
    rectangle('Position', [-0.1, -2, 0.2, 4], 'FaceColor', [0.5 0.5 0.5]);
    
    % Initialize the lights
    redLight = rectangle('Position', [-0.8, 1.5, 1.6, 1.6], 'Curvature', [1, 1], 'FaceColor', [1 0 0]);
    yellowLight = rectangle('Position', [-0.8, -0.5, 1.6, 1.6], 'Curvature', [1, 1], 'FaceColor', [1 1 0]);
    greenLight = rectangle('Position', [-0.8, -2.5, 1.6, 1.6], 'Curvature', [1, 1], 'FaceColor', [0 1 0]);
    
    % Set axis equal
    axis equal;
    
    % Loop to toggle lights on and off
    for i = 1:inf
        % Red light on
        set(redLight, 'FaceColor', [1 0 0]);
        set(yellowLight, 'FaceColor', [0 0 0]);
        set(greenLight, 'FaceColor', [0 0 0]);
        pause(1); % Pause for 3 seconds
        
        % Yellow light on
        set(redLight, 'FaceColor', [0 0 0]);
        set(yellowLight, 'FaceColor', [1 1 0]);
        set(greenLight, 'FaceColor', [0 0 0]);
        pause(1); % Pause for 3 seconds
        
        % Green light on
        set(redLight, 'FaceColor', [0 0 0]);
        set(yellowLight, 'FaceColor', [0 0 0]);
        set(greenLight, 'FaceColor', [0 1 0]);
        pause(1); % Pause for 3 seconds
    end
end

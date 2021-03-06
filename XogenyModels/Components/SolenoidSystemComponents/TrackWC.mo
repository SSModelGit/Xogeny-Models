within XogenyModels.Components.SolenoidSystemComponents;

model TrackWC
  parameter SIunits.Mass m "Mass of the cart";
  parameter SIunits.Length l "Length of the cart";
  parameter SIunits.Length h "Height of cart from ground";
  parameter Real mu "Coefficient of friction of the track";
  parameter SIunits.Acceleration g "Local value of g acting on cart (in vertical direction)";
  parameter Real fTol "The tolerance between switching of signs for friction";
  SIunits.Force N "Normal force from track";
  SIunits.Force Ff "Frictional force from track surface";
  SIunits.Angle angle "Calculated value of the angle of the incline";
  Real tanAngle;
  Modelica.Mechanics.Translational.Interfaces.Flange_a Cf annotation(Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {0.0, -0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput W "Weight acting along track" annotation(Placement(visible = true, transformation(origin = {20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput v "Velocity of Cart" annotation(Placement(visible = true, transformation(origin = {-23.219, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-26.49, -0}, extent = {{-13.51, -13.51}, {13.51, 13.51}}, rotation = 0)));
equation
  tanAngle = h / l;
  angle = Math.atan(tanAngle);
  N = m * g * Math.cos(angle);
  if v < (-fTol) then
    Ff = mu * N;
  elseif v > fTol then
    Ff = -mu * N;
  else
    Ff = (-1 * mu * N) / fTol * v;
  end if;
  W = m * g * Math.sin(angle);
  Cf.f = -Ff;
  annotation(Icon(graphics = {Rectangle(visible = true, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100.0, -30.0}, {100.0, 30.0}}), Ellipse(visible = true, lineColor = {255, 0, 0}, extent = {{-20.0, -20.0}, {20.0, 20.0}}), Ellipse(visible = true, lineColor = {255, 0, 0}, extent = {{-15.0, -15.0}, {15.0, 15.0}}), Ellipse(visible = true, lineColor = {255, 0, 0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), Text(visible = true, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid, extent = {{-100.0, -140.0}, {100.0, -100.0}}, textString = "%name", fontName = "Arial")}, coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end TrackWC;
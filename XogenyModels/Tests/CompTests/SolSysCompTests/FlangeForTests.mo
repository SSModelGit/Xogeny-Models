within XogenyModels.Tests.CompTests.SolSysCompTests;

model FlangeForTests
  Modelica.Mechanics.Translational.Interfaces.Flange_a f annotation(Placement(visible = true, transformation(origin = {2.357, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -0}, extent = {{-97.548, -97.548}, {97.548, 97.548}}, rotation = 0)));
  parameter Modelica.SIunits.Velocity c;
initial equation
  f.s = -5;
equation
  der(f.s) = c;
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105.0}, {148.5, 105.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end FlangeForTests;
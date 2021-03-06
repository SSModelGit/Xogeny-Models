within XogenyModels.EE;

model MultiBodyEE
  inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-125, -3.053}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0, 1, 0}) annotation(Placement(visible = true, transformation(origin = {-100, 25}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(n = {1, 0, 0}, useAxisFlange = false) annotation(Placement(visible = true, transformation(origin = {-55, 48.067}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox(r = {1, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-55, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 0, n = {0, 0, -1}) annotation(Placement(visible = true, transformation(origin = {-88.093, 48.114}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.AbsolutePosition absolutePosition annotation(Placement(visible = true, transformation(origin = {30, 53.181}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {0, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-86.41500000000001, 23.585}, extent = {{-6.415, -6.415}, {6.415, 6.415}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {0.33, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-40, -18.256}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Solenoid solenoid(N = 50, A = 0.005, mu = 1.257e-06, V = 50, R = 2, PWM = 1, Px = 0.33, h = 0.05, thresholdStart = 0.331, thresholdStop = 0.005) annotation(Placement(visible = true, transformation(origin = {20, 5}, extent = {{-16.357, -16.357}, {16.357, 16.357}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodyCylinder(r = {0.15, 0, 0}, r_shape = {0.075, 0, 0}, lengthDirection = {1, 0, 0}, length = 0.15, diameter = 0.04, density = 400) annotation(Placement(visible = true, transformation(origin = {-10, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.Damper damper(d = 0.1) annotation(Placement(visible = true, transformation(origin = {65, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.AbsoluteVelocity absoluteVelocity annotation(Placement(visible = true, transformation(origin = {105, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0.4, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-40, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Solenoid solenoid1(N = 50, A = 0.005, mu = 1.257e-06, V = 50, R = 2, PWM = 1, Px = 0.45, h = 0.05, thresholdStop = 0.005, thresholdStart = 0.15) annotation(Placement(visible = true, transformation(origin = {20, -52.653}, extent = {{-17.347, -17.347}, {17.347, 17.347}}, rotation = 0)));
equation
  connect(absoluteVelocity.v, solenoid1.v) annotation(Line(visible = true, origin = {95.45, -1.326}, points = {{20.55, 51.326}, {23.55, 51.326}, {23.55, -51.326}, {-88.974, -38.514}}, color = {0, 0, 127}));
  connect(absolutePosition.r, solenoid1.x) annotation(Line(visible = true, origin = {31.861, -2.18}, points = {{9.138999999999999, 55.361}, {12.139, 55.361}, {12.139, -30.125}, {-16.709, -30.125}, {-25.315, -63.095}}, color = {0, 0, 127}));
  connect(solenoid1.frame_b, bodyCylinder.frame_b) annotation(Line(visible = true, origin = {29.116, 8.673999999999999}, points = {{6.654, -61.326}, {11.231, -61.326}, {11.231, 61.326}, {-29.116, 61.326}}));
  connect(fixedTranslation1.frame_b, solenoid1.frame_a) annotation(Line(visible = true, origin = {-6.616, -48.826}, points = {{-23.384, 3.826}, {6.269, 3.826}, {6.269, -3.827}, {10.846, -3.827}}, color = {95, 95, 95}));
  connect(fixedTranslation1.frame_a, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-74.277, -24.277}, points = {{24.277, -20.723}, {-12.138, -20.723}, {-12.138, 41.447}}));
  connect(solenoid.frame_a, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {-19.661, -6.628}, points = {{24.791, 11.628}, {-7.226, 11.628}, {-7.226, -11.628}, {-10.339, -11.628}}));
  connect(solenoid.frame_b, bodyCylinder.frame_b) annotation(Line(visible = true, origin = {28.396, 37.5}, points = {{6.474, -32.5}, {10.961, -32.5}, {10.961, 32.5}, {-28.396, 32.5}}));
  connect(solenoid.x, absolutePosition.r) annotation(Line(visible = true, origin = {31.971, 32.015}, points = {{-16.543, -27.015}, {-16.543, -7.658}, {12.029, -7.658}, {12.029, 21.166}, {9.029, 21.166}}, color = {0, 0, 127}));
  connect(solenoid.v, absoluteVelocity.v) annotation(Line(visible = true, origin = {95.33799999999999, 27.5}, points = {{-67.985, -22.5}, {23.662, -22.5}, {23.662, 22.5}, {20.662, 22.5}}, color = {0, 0, 127}));
  connect(bodyCylinder.frame_b, absoluteVelocity.frame_a) annotation(Line(visible = true, origin = {69.75, 60}, points = {{-69.75, 10}, {22.25, 10}, {22.25, -10}, {25.25, -10}}));
  connect(fixedRotation.frame_b, damper.frame_b) annotation(Line(visible = true, origin = {39.733, 59.057}, points = {{-117.826, -10.943}, {41.279, -10.943}, {41.279, 10.943}, {35.267, 10.943}}));
  connect(damper.frame_a, bodyCylinder.frame_a) annotation(Line(visible = true, origin = {14.492, 74.333}, points = {{40.508, -4.333}, {34.496, -4.333}, {34.496, 8.667}, {-37.504, 8.667}, {-37.504, -4.333}, {-34.492, -4.333}}));
  connect(bodyCylinder.frame_b, absolutePosition.frame_a) annotation(Line(visible = true, origin = {13.5, 61.59}, points = {{-13.5, 8.41}, {3.5, 8.41}, {3.5, -8.409000000000001}, {6.5, -8.409000000000001}}));
  connect(bodyCylinder.frame_a, prismatic.frame_b) annotation(Line(visible = true, origin = {-37.138, 59.034}, points = {{17.138, 10.966}, {-4.637, 10.966}, {-4.637, -10.967}, {-7.862, -10.967}}, color = {95, 95, 95}));
  connect(fixedTranslation3.frame_a, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-74.277, -6.447}, points = {{24.277, -11.809}, {-12.138, -11.809}, {-12.138, 23.617}}));
  connect(fixedTranslation2.frame_b, bodyBox.frame_a) annotation(Line(visible = true, origin = {-74.85599999999999, 15.074}, points = {{-11.559, 2.097}, {-11.559, -0.975}, {6.631, -0.975}, {6.631, -0.074}, {9.856, -0.074}}));
  connect(fixedRotation.frame_b, fixedTranslation2.frame_a) annotation(Line(visible = true, origin = {-78.372, 38.446}, points = {{0.279, 9.667999999999999}, {7.904, 9.667999999999999}, {7.904, -5.446}, {-8.042999999999999, -5.446}, {-8.042999999999999, -8.446}}));
  connect(fixedRotation.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {-69.78, 48.09}, points = {{-8.314, 0.024}, {1.767, 0.024}, {1.767, -0.024}, {4.78, -0.024}}));
  connect(fixedRotation.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-99.364, 43.743}, points = {{1.271, 4.371}, {-0.636, 4.371}, {-0.636, -8.743}}, color = {95, 95, 95}));
  connect(world.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-105, 2.965}, points = {{-10, -6.018}, {5, -6.018}, {5, 12.035}}));
  annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end MultiBodyEE;
model mug_model
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {-80, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 2)  annotation(
    Placement(visible = true, transformation(origin = {-26, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {1, 0.1}, b = {0.2})  annotation(
    Placement(visible = true, transformation(origin = {46, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(step.y, gain.u) annotation(
    Line(points = {{-68, 20}, {-38, 20}}, color = {0, 0, 127}));
  connect(gain.y, transferFunction.u) annotation(
    Line(points = {{-15, 20}, {34, 20}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "4.0.0")));
end mug_model;

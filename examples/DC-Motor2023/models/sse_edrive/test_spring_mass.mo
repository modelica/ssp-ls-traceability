within sse_edrive;
model test_spring_mass
  emachine my_emachine
    annotation (Placement(transformation(extent={{-104,24},{-28,82}})));
  mass mass1 annotation (Placement(transformation(extent={{14,30},{44,78}})));
  spring_mass spring_mass1
    annotation (Placement(transformation(extent={{78,28},{118,82}})));
  Modelica.Blocks.Sources.Step step(height=100)
    annotation (Placement(transformation(extent={{-142,68},{-122,88}})));
  Modelica.Blocks.Sources.Constant const
    annotation (Placement(transformation(extent={{154,24},{174,44}})));
equation
  connect(my_emachine.tau, mass1.tauA) annotation (Line(points={{-31.04,70.4},
          {-7.28,70.4},{-7.28,68.4},{13.1,68.4}}, color={0,0,127}));
  connect(mass1.wA, my_emachine.w) annotation (Line(points={{13.1,44.4},{
          -7.45,44.4},{-7.45,46.62},{-27.24,46.62}}, color={0,0,127}));
  connect(mass1.phiA, my_emachine.phi) annotation (Line(points={{12.8,37.68},
          {-6.15,37.68},{-6.15,35.02},{-27.24,35.02}}, color={0,0,127}));
  connect(spring_mass1.tauA, mass1.tauB) annotation (Line(points={{76.8,38.8},
          {62.4,38.8},{62.4,38.64},{44.6,38.64}}, color={0,0,127}));
  connect(spring_mass1.wA, mass1.wB) annotation (Line(points={{76,60.94},{59,
          60.94},{59,61.2},{44.9,61.2}}, color={0,0,127}));
  connect(spring_mass1.phiA, mass1.phiB) annotation (Line(points={{76,70.66},
          {59,70.66},{59,70.32},{44.9,70.32}}, color={0,0,127}));
  connect(const.y, spring_mass1.tauB) annotation (Line(points={{175,34},{148,
          34},{148,39.88},{119.2,39.88}}, color={0,0,127}));
  connect(step.y, my_emachine.U) annotation (Line(points={{-121,78},{-116,78},{-116,68.66},{-108.56,68.66}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end test_spring_mass;

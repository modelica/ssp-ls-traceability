within sse_edrive;
model test_spring_mass "Test model for two masses and spring"
  emachine my_emachine annotation (Placement(transformation(extent={{-80,-60},{-40,-20}})));
  mass mass1 annotation (Placement(transformation(extent={{-20,-60},{20,-20}})));
  spring_mass spring_mass1 annotation (Placement(transformation(extent={{40,-60},{78,-20}})));
  Modelica.Blocks.Sources.Step step(height=100)
    annotation (Placement(transformation(extent={{-58,40},{-38,60}})));
  Modelica.Blocks.Sources.Constant const
    annotation (Placement(transformation(extent={{20,40},{40,60}})));
equation
  connect(my_emachine.M, mass1.M_A) annotation (Line(points={{-38,-28},{-24,-28}}, color={0,0,127}));
  connect(mass1.wA, my_emachine.w) annotation (Line(points={{-22,-44},{-36,-44}}, color={0,0,127}));
  connect(mass1.phiA, my_emachine.phi)
    annotation (Line(points={{-22,-52},{-36,-52}}, color={0,0,127}));
  connect(spring_mass1.M_A, mass1.M_B)
    annotation (Line(points={{38.1,-52},{24,-52}}, color={0,0,127}));
  connect(spring_mass1.wA, mass1.wB) annotation (Line(points={{36.2,-36},{22,-36}}, color={0,0,127}));
  connect(spring_mass1.phiA, mass1.phiB)
    annotation (Line(points={{36.2,-28},{22,-28}}, color={0,0,127}));
  connect(const.y, spring_mass1.M_B)
    annotation (Line(points={{41,50},{90,50},{90,-52},{81.8,-52}}, color={0,0,127}));
  connect(step.y, my_emachine.U) annotation (Line(points={{-37,50},{-20,50},{-20,10},{-90,10},{-90,-28},
          {-84,-28}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(
          preserveAspectRatio=false)));
end test_spring_mass;

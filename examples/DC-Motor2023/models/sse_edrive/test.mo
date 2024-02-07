within sse_edrive;
model test
  emachine my_emachine
    annotation (Placement(transformation(extent={{-28,16},{30,76}})));
  mass_damper my_mass annotation (Placement(transformation(extent={{58,18},{90,74}})));
  sse_edrive.stimuli stimuli annotation (Placement(transformation(rotation=0, extent={{-112,28},{-70,70}})));
equation
  connect(my_emachine.M, my_mass.M_A) annotation (Line(points={{27.68,64},{
          50.72,64},{50.72,62.8},{57.04,62.8}}, color={0,0,127}));
  connect(my_mass.wA, my_emachine.w) annotation (Line(points={{57.04,34.8},{
          50.55,34.8},{50.55,39.4},{30.58,39.4}}, color={0,0,127}));
  connect(my_mass.phiA, my_emachine.phi) annotation (Line(points={{56.72,
          26.96},{51.85,26.96},{51.85,27.4},{30.58,27.4}}, color={0,0,127}));
  connect(stimuli.M_load, my_mass.M_B) annotation (Line(points={{-70,32.2},{
          -56,32.2},{-56,-4},{112,-4},{112,28},{102,28},{102,28.08},{90.64,
          28.08}}, color={0,0,127}));
  connect(stimuli.U, my_emachine.U) annotation (Line(points={{-70,61.6},{-52,
          61.6},{-52,62.2},{-31.48,62.2}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end test;

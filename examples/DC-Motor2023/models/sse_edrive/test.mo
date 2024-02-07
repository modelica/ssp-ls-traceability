within sse_edrive;
model test "Test model for DC-Motor e-machine with load"
  emachine my_emachine annotation (Placement(transformation(extent={{-30,-20},{10,20}})));
  mass_damper my_mass annotation (Placement(transformation(extent={{40,-20},{80,20}})));
  sse_edrive.stimuli stimuli
    annotation (Placement(transformation(rotation=0, extent={{-100,-20},{-60,20}})));
equation
  connect(my_emachine.M, my_mass.M_A) annotation (Line(points={{12,12},{36,12}}, color={0,0,127}));
  connect(my_mass.wA, my_emachine.w) annotation (Line(points={{38,-4},{14,-4}}, color={0,0,127}));
  connect(my_mass.phiA, my_emachine.phi)
    annotation (Line(points={{38,-12},{14,-12}}, color={0,0,127}));
  connect(stimuli.M_load, my_mass.M_B) annotation (Line(points={{-58,-12},{-50,-12},{-50,-40},{94,-40},
          {94,-12},{84,-12}}, color={0,0,127}));
  connect(stimuli.U, my_emachine.U) annotation (Line(points={{-58,12},{-34,12}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(
          preserveAspectRatio=false)));
end test;

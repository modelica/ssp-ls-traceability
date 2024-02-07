within sse_edrive;
model mass_damper "Rotational mass with damper"
  extends mass;
  Modelica.Mechanics.Rotational.Components.Damper damper(d=0.001)
    annotation (Placement(transformation(extent={{-10,-50},{10,-30}})));
  Modelica.Mechanics.Rotational.Components.Fixed fixed
    annotation (Placement(transformation(extent={{20,-50},{40,-30}})));
equation
  connect(fixed.flange, damper.flange_b) annotation (Line(points={{30,-40},{10,-40}}, color={0,0,0}));
  connect(inertia.flange_a, torqueToAngleAdaptor.flange)
    annotation (Line(points={{-10,0},{-48,0}}, color={0,0,0}));
  connect(inertia.flange_a, damper.flange_a)
    annotation (Line(points={{-10,0},{-30,0},{-30,-40},{-10,-40}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(
          preserveAspectRatio=false)));
end mass_damper;

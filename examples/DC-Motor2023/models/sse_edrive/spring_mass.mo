within sse_edrive;
model spring_mass "Rotational mass with damper and spring in series"
  Modelica.Mechanics.Rotational.Components.TorqueToAngleAdaptor torqueToAngleAdaptor1(use_a=false)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={60,0})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J=1)
    annotation (Placement(transformation(extent={{20,-10},{40,10}})));
  Modelica.Blocks.Interfaces.RealInput M_B(unit="N.m") annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=180,
        origin={120,-60})));
  Modelica.Blocks.Interfaces.RealOutput wB(unit="rad/s") annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={110,20})));
  Modelica.Blocks.Interfaces.RealOutput phiB(unit="rad") annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={110,60})));
  Modelica.Mechanics.Rotational.Components.AngleToTorqueAdaptor angleToTorqueAdaptor(use_a=false)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-50,0})));
  Modelica.Blocks.Interfaces.RealInput wA(unit="rad/s") annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=0,
        origin={-120,20})));
  Modelica.Blocks.Interfaces.RealInput phiA(unit="rad") annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=0,
        origin={-120,60})));
  Modelica.Blocks.Interfaces.RealOutput M_A(unit="N.m") annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-110,-60})));
  Modelica.Mechanics.Rotational.Components.SpringDamper springDamper(
    c=1,
    d=1,
    phi_rel0=0) annotation (Placement(transformation(extent={{-20,-10},{0,10}})));
  Modelica.Mechanics.Rotational.Components.Damper damper(d=1)
    annotation (Placement(transformation(extent={{20,-50},{40,-30}})));
  Modelica.Mechanics.Rotational.Components.Fixed fixed
    annotation (Placement(transformation(extent={{50,-50},{70,-30}})));
equation
  connect(inertia.flange_b, torqueToAngleAdaptor1.flange)
    annotation (Line(points={{40,0},{58,0}}, color={0,0,0}));
  connect(torqueToAngleAdaptor1.phi, phiB)
    annotation (Line(points={{63,8},{70,8},{70,60},{110,60}}, color={0,0,127}));
  connect(torqueToAngleAdaptor1.w, wB)
    annotation (Line(points={{63,5},{79.5,5},{79.5,20},{110,20}}, color={0,0,127}));
  connect(torqueToAngleAdaptor1.tau, M_B)
    annotation (Line(points={{63,-8},{78,-8},{78,-60},{120,-60}}, color={0,0,127}));
  connect(angleToTorqueAdaptor.tau, M_A)
    annotation (Line(points={{-53,-8},{-80,-8},{-80,-60},{-110,-60}}, color={0,0,127}));
  connect(phiA, angleToTorqueAdaptor.phi)
    annotation (Line(points={{-120,60},{-60,60},{-60,8},{-53,8}}, color={0,0,127}));
  connect(angleToTorqueAdaptor.w, wA)
    annotation (Line(points={{-53,5},{-80,5},{-80,20},{-120,20}}, color={0,0,127}));
  connect(inertia.flange_a, springDamper.flange_b)
    annotation (Line(points={{20,0},{0,0}}, color={0,0,0}));
  connect(springDamper.flange_a, angleToTorqueAdaptor.flange)
    annotation (Line(points={{-20,0},{-48,0}}, color={0,0,0}));
  connect(damper.flange_a, inertia.flange_a)
    annotation (Line(points={{20,-40},{12,-40},{12,0},{20,0}}, color={0,0,0}));
  connect(fixed.flange, damper.flange_b) annotation (Line(points={{60,-40},{40,-40}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(
          preserveAspectRatio=false)));
end spring_mass;

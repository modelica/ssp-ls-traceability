within sse_edrive;
model mass "Rotational mass (load)"
  Modelica.Mechanics.Rotational.Components.TorqueToAngleAdaptor torqueToAngleAdaptor(use_a=false)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-50,0})));
  Modelica.Mechanics.Rotational.Components.TorqueToAngleAdaptor torqueToAngleAdaptor1(use_a=false)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={50,0})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(
    J=0.002,
    phi(start=0),
    w(start=0),
    a(start=0)) annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Interfaces.RealInput M_A(unit="N.m")
    annotation (Placement(transformation(extent={{-140,40},{-100,80}})));
  Modelica.Blocks.Interfaces.RealOutput wA(unit="rad/s") annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-110,-20})));
  Modelica.Blocks.Interfaces.RealOutput phiA(unit="rad") annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-110,-60})));
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
equation
  connect(inertia.flange_a, torqueToAngleAdaptor.flange)
    annotation (Line(points={{-10,0},{-48,0}}, color={0,0,0}));
  connect(inertia.flange_b, torqueToAngleAdaptor1.flange)
    annotation (Line(points={{10,0},{48,0}}, color={0,0,0}));
  connect(torqueToAngleAdaptor.tau, M_A)
    annotation (Line(points={{-53,8},{-80,8},{-80,60},{-120,60}}, color={0,0,127}));
  connect(torqueToAngleAdaptor.w, wA)
    annotation (Line(points={{-53,-5},{-80.5,-5},{-80.5,-20},{-110,-20}}, color={0,0,127}));
  connect(torqueToAngleAdaptor.phi, phiA)
    annotation (Line(points={{-53,-8},{-70,-8},{-70,-60},{-110,-60}}, color={0,0,127}));
  connect(torqueToAngleAdaptor1.phi, phiB)
    annotation (Line(points={{53,8},{70,8},{70,60},{110,60}}, color={0,0,127}));
  connect(torqueToAngleAdaptor1.w, wB)
    annotation (Line(points={{53,5},{80,5},{80,20},{110,20}}, color={0,0,127}));
  connect(torqueToAngleAdaptor1.tau, M_B)
    annotation (Line(points={{53,-8},{80,-8},{80,-60},{120,-60}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(
          preserveAspectRatio=false)));
end mass;

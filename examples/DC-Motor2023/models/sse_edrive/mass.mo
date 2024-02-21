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
  Modelica.Blocks.Math.Gain M_gain(k=-1) annotation (Placement(transformation(
        extent={{-5,-5},{5,5}},
        rotation=-90,
        origin={-80,25})));
  Modelica.Blocks.Math.Gain M_gain1(k=-1)
                                         annotation (Placement(transformation(
        extent={{5,-5},{-5,5}},
        rotation=-90,
        origin={80,-30})));
equation
  connect(inertia.flange_a, torqueToAngleAdaptor.flange)
    annotation (Line(points={{-10,0},{-48,0}}, color={0,0,0}));
  connect(inertia.flange_b, torqueToAngleAdaptor1.flange)
    annotation (Line(points={{10,0},{48,0}}, color={0,0,0}));
  connect(torqueToAngleAdaptor.w, wA)
    annotation (Line(points={{-53,-5},{-80.5,-5},{-80.5,-20},{-110,-20}}, color={0,0,127}));
  connect(torqueToAngleAdaptor.phi, phiA)
    annotation (Line(points={{-53,-8},{-70,-8},{-70,-60},{-110,-60}}, color={0,0,127}));
  connect(torqueToAngleAdaptor1.phi, phiB)
    annotation (Line(points={{53,8},{70,8},{70,60},{110,60}}, color={0,0,127}));
  connect(torqueToAngleAdaptor1.w, wB)
    annotation (Line(points={{53,5},{80,5},{80,20},{110,20}}, color={0,0,127}));
  connect(torqueToAngleAdaptor.tau, M_gain.y)
    annotation (Line(points={{-53,8},{-80,8},{-80,19.5}},
                                                        color={0,0,127}));
  connect(M_gain.u, M_A) annotation (Line(points={{-80,31},{-80,60},{-120,60}}, color={0,0,127}));
  connect(M_B, M_gain1.u) annotation (Line(points={{120,-60},{80,-60},{80,-36}}, color={0,0,127}));
  connect(M_gain1.y, torqueToAngleAdaptor1.tau)
    annotation (Line(points={{80,-24.5},{80,-8},{53,-8}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(
          preserveAspectRatio=false), graphics={Text(
          extent={{-94,72},{-54,62}},
          textColor={0,0,0},
          textString="Note: interface is defined to use a
positive sign of the torque.",
          horizontalAlignment=TextAlignment.Left), Text(
          extent={{58,-62},{98,-72}},
          textColor={0,0,0},
          textString="Note: interface is defined to use a
positive sign of the torque.",
          horizontalAlignment=TextAlignment.Left)}));
end mass;

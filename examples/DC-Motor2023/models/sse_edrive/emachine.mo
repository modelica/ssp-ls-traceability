within sse_edrive;
model emachine "DC-Motor for a mild hybrid application"
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-20,-60},{0,-40}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor(
    R=1,
    T_ref=300.15,
    alpha=0,
    T=300.15) annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=180,
        origin={-10,60})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L=0.001, i(start=0)) annotation (Placement(
        transformation(
        extent={{10,-10},{-10,10}},
        rotation=90,
        origin={40,40})));
  Modelica.Electrical.Analog.Basic.RotationalEMF emf(k=0.01) annotation (Placement(transformation(
        extent={{10,10},{-10,-10}},
        rotation=180,
        origin={40,0})));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=270,
        origin={-60,2})));
  Modelica.Blocks.Interfaces.RealOutput I(unit="A") annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-110,-60})));
  Modelica.Mechanics.Rotational.Components.AngleToTorqueAdaptor angleToTorqueAdaptor(use_a=false)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={60,0})));
  Modelica.Blocks.Interfaces.RealInput w(unit="rad/s") annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=180,
        origin={120,-20})));
  Modelica.Blocks.Interfaces.RealInput phi(unit="rad") annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=180,
        origin={120,-60})));
  Modelica.Blocks.Interfaces.RealOutput M(unit="N.m") annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=180,
        origin={110,60})));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-60,40})));
  Modelica.Blocks.Interfaces.RealInput U(unit="V") annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=0,
        origin={-120,60})));
equation
  connect(currentSensor.i, I)
    annotation (Line(points={{-71,2},{-88,2},{-88,-60},{-110,-60}}, color={0,0,127}));
  connect(angleToTorqueAdaptor.flange, emf.flange)
    annotation (Line(points={{58,0},{50,0}}, color={0,0,0}));
  connect(angleToTorqueAdaptor.w, w)
    annotation (Line(points={{63,-5},{83,-5},{83,-20},{120,-20}}, color={0,0,127}));
  connect(angleToTorqueAdaptor.tau, M)
    annotation (Line(points={{63,8},{76,8},{76,60},{110,60}}, color={0,0,127}));
  connect(phi, angleToTorqueAdaptor.phi)
    annotation (Line(points={{120,-60},{76,-60},{76,-8},{63,-8}}, color={0,0,127}));
  connect(resistor.n, inductor.p) annotation (Line(points={{0,60},{40,60},{40,50}}, color={0,0,255}));
  connect(emf.p, inductor.n) annotation (Line(points={{40,10},{40,30}}, color={0,0,255}));
  connect(emf.n, ground.p) annotation (Line(points={{40,-10},{40,-40},{-10,-40}}, color={0,0,255}));
  connect(ground.p, currentSensor.p)
    annotation (Line(points={{-10,-40},{-60,-40},{-60,-8}}, color={0,0,255}));
  connect(signalVoltage.n, resistor.p)
    annotation (Line(points={{-60,50},{-60,60},{-20,60}}, color={0,0,255}));
  connect(signalVoltage.p, currentSensor.n)
    annotation (Line(points={{-60,30},{-60,12}}, color={0,0,255}));
  connect(signalVoltage.v, U)
    annotation (Line(points={{-72,40},{-94,40},{-94,60},{-120,60}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(
          preserveAspectRatio=false)));
end emachine;

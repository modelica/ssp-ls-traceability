within sse_edrive;
model emech "Native Modelica model of emachine and load"
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-60,-60},{-40,-40}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor(
    R=1,
    T_ref=300.15,
    alpha=0,
    T=300.15) annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=180,
        origin={-50,60})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L=0.001, i(start=0)) annotation (Placement(
        transformation(
        extent={{10,-10},{-10,10}},
        rotation=90,
        origin={-20,40})));
  Modelica.Electrical.Analog.Basic.RotationalEMF emf(k=0.01) annotation (Placement(transformation(
        extent={{10,10},{-10,-10}},
        rotation=180,
        origin={-20,0})));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=270,
        origin={-70,-10})));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=90,
        origin={-70,30})));
  Modelica.Blocks.Interfaces.RealOutput I(unit="A") annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-110,-60})));
  Modelica.Blocks.Interfaces.RealInput U(unit="V") annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=0,
        origin={-120,60})));
  Modelica.Mechanics.Rotational.Components.TorqueToAngleAdaptor torqueToAngleAdaptor1(use_a=false)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={50,0})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(
    J=0.002,
    phi(start=0),
    w(start=0),
    a(start=0)) annotation (Placement(transformation(extent={{10,-10},{30,10}})));
  Modelica.Mechanics.Rotational.Components.Damper damper(d=0.001)
    annotation (Placement(transformation(extent={{10,-50},{30,-30}})));
  Modelica.Mechanics.Rotational.Components.Fixed fixed
    annotation (Placement(transformation(extent={{40,-50},{60,-30}})));
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
  connect(currentSensor.i,I)
    annotation (Line(points={{-81,-10},{-88,-10},{-88,-60},{-110,-60}},
                                                                    color={0,0,127}));
  connect(resistor.n,inductor. p) annotation (Line(points={{-40,60},{-20,60},{-20,50}},
                                                                                    color={0,0,255}));
  connect(emf.p,inductor. n) annotation (Line(points={{-20,10},{-20,30}},
                                                                        color={0,0,255}));
  connect(emf.n,ground. p) annotation (Line(points={{-20,-10},{-20,-40},{-50,-40}},
                                                                                  color={0,0,255}));
  connect(ground.p,currentSensor. p)
    annotation (Line(points={{-50,-40},{-70,-40},{-70,-20}},color={0,0,255}));
  connect(signalVoltage.v,U)
    annotation (Line(points={{-82,30},{-90,30},{-90,60},{-120,60}}, color={0,0,127}));
  connect(signalVoltage.p,resistor. p)
    annotation (Line(points={{-70,40},{-70,60},{-60,60}}, color={0,0,255}));
  connect(signalVoltage.n,currentSensor. n)
    annotation (Line(points={{-70,20},{-70,0}},  color={0,0,255}));
  connect(inertia.flange_b,torqueToAngleAdaptor1. flange)
    annotation (Line(points={{30,0},{48,0}}, color={0,0,0}));
  connect(torqueToAngleAdaptor1.phi,phiB)
    annotation (Line(points={{53,8},{70,8},{70,60},{110,60}}, color={0,0,127}));
  connect(torqueToAngleAdaptor1.w,wB)
    annotation (Line(points={{53,5},{80,5},{80,20},{110,20}}, color={0,0,127}));
  connect(torqueToAngleAdaptor1.tau,M_B)
    annotation (Line(points={{53,-8},{80,-8},{80,-60},{120,-60}}, color={0,0,127}));
  connect(fixed.flange,damper. flange_b) annotation (Line(points={{50,-40},{30,-40}}, color={0,0,0}));
  connect(inertia.flange_a,damper. flange_a)
    annotation (Line(points={{10,0},{0,0},{0,-40},{10,-40}},       color={0,0,0}));
  connect(emf.flange, inertia.flange_a) annotation (Line(points={{-10,0},{10,0}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(
          preserveAspectRatio=false)));
end emech;

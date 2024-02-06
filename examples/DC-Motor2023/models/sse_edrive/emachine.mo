within sse_edrive;
model emachine
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{4,-44},{24,-24}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor(
    R=1,
    T_ref=300.15,
    alpha=0,
    T=300.15) annotation (Placement(transformation(extent={{10,-10},{-10,10}},
        rotation=180,
        origin={-40,68})));

  Modelica.Electrical.Analog.Basic.Inductor inductor(            L=0.001, i(start=
          0))
    annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=90,
        origin={36,50})));
  Modelica.Electrical.Analog.Basic.RotationalEMF emf(k=0.01) annotation (
      Placement(transformation(
        extent={{10,10},{-10,-10}},
        rotation=180,
        origin={36,10})));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation (
      Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=270,
        origin={-76,18})));
  Modelica.Blocks.Interfaces.RealOutput I(unit="A")
                                          annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-106,-62})));
  Modelica.Mechanics.Rotational.Components.AngleToTorqueAdaptor
    angleToTorqueAdaptor(use_a=false)
                         annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={56,10})));
  Modelica.Blocks.Interfaces.RealInput w(unit="rad/s")
                                         annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=180,
        origin={102,-22})));
  Modelica.Blocks.Interfaces.RealInput phi(unit="rad")
                                           annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}},
        rotation=180,
        origin={102,-62})));
  Modelica.Blocks.Interfaces.RealOutput tau(unit="N.m")
                                            annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={92,60})));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-76,54})));
  Modelica.Blocks.Interfaces.RealInput U(unit="V") annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}},
        rotation=0,
        origin={-112,54})));
equation
  connect(currentSensor.i,I)  annotation (Line(points={{-87,18},{-88,18},{-88,-62},{-106,-62}},
                                                  color={0,0,127}));
  connect(angleToTorqueAdaptor.flange, emf.flange)
    annotation (Line(points={{54,10},{46,10}},               color={0,0,0}));
  connect(angleToTorqueAdaptor.w, w) annotation (Line(points={{59,5},{79,5},{79,-22},{102,-22}},
                                     color={0,0,127}));
  connect(angleToTorqueAdaptor.tau, tau) annotation (Line(points={{59,18},{72,
          18},{72,60},{92,60}},      color={0,0,127}));
  connect(phi, angleToTorqueAdaptor.phi) annotation (Line(points={{102,-62},{72,-62},{72,2},{59,2}},
                                  color={0,0,127}));
  connect(resistor.n, inductor.p)
    annotation (Line(points={{-30,68},{36,68},{36,60}}, color={0,0,255}));
  connect(emf.p, inductor.n)
    annotation (Line(points={{36,20},{36,40}}, color={0,0,255}));
  connect(emf.n, ground.p)
    annotation (Line(points={{36,0},{36,-24},{14,-24}}, color={0,0,255}));
  connect(ground.p, currentSensor.p)
    annotation (Line(points={{14,-24},{-76,-24},{-76,8}}, color={0,0,255}));
  connect(signalVoltage.n, resistor.p) annotation (Line(points={{-76,64},{-64,
          64},{-64,68},{-50,68}}, color={0,0,255}));
  connect(signalVoltage.p, currentSensor.n)
    annotation (Line(points={{-76,44},{-76,28}}, color={0,0,255}));
  connect(signalVoltage.v, U)
    annotation (Line(points={{-88,54},{-112,54}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end emachine;

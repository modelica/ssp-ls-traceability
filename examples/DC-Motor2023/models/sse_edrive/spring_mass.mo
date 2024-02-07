within sse_edrive;
model spring_mass
  Modelica.Mechanics.Rotational.Components.TorqueToAngleAdaptor
    torqueToAngleAdaptor1(use_a=false)
                          annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={74,26})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J=1)
    annotation (Placement(transformation(extent={{30,16},{50,36}})));
  Modelica.Blocks.Interfaces.RealInput M_B(unit="N.m") annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}},
        rotation=180,
        origin={106,-56})));
  Modelica.Blocks.Interfaces.RealOutput wB(unit="rad/s")
                                           annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={106,30})));
  Modelica.Blocks.Interfaces.RealOutput phiB(unit="rad")
                                             annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={106,64})));
  Modelica.Mechanics.Rotational.Components.AngleToTorqueAdaptor
    angleToTorqueAdaptor(use_a=false)
                         annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-32,24})));
  Modelica.Blocks.Interfaces.RealInput wA(unit="rad/s") annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}},
        rotation=0,
        origin={-110,22})));
  Modelica.Blocks.Interfaces.RealInput phiA(unit="rad") annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}},
        rotation=0,
        origin={-110,58})));
  Modelica.Blocks.Interfaces.RealOutput M_A(unit="N.m") annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-106,-60})));
  Modelica.Mechanics.Rotational.Components.SpringDamper springDamper(
    c=1,
    d=1,
    phi_rel0=0)
    annotation (Placement(transformation(extent={{-6,18},{14,38}})));
  Modelica.Mechanics.Rotational.Components.Damper damper(d=1)
    annotation (Placement(transformation(extent={{30,-16},{50,4}})));
  Modelica.Mechanics.Rotational.Components.Fixed fixed
    annotation (Placement(transformation(extent={{58,-18},{78,2}})));
equation
  connect(inertia.flange_b, torqueToAngleAdaptor1.flange)
    annotation (Line(points={{50,26},{72,26}}, color={0,0,0}));
  connect(torqueToAngleAdaptor1.phi, phiB) annotation (Line(points={{77,34},{
          88,34},{88,64},{106,64}}, color={0,0,127}));
  connect(torqueToAngleAdaptor1.w, wB) annotation (Line(points={{77,31},{89.5,
          31},{89.5,30},{106,30}}, color={0,0,127}));
  connect(torqueToAngleAdaptor1.tau, M_B) annotation (Line(points={{77,18},{
          86,18},{86,-56},{106,-56}}, color={0,0,127}));
  connect(angleToTorqueAdaptor.tau, M_A) annotation (Line(points={{-35,16},{-42,
          16},{-42,-60},{-106,-60}}, color={0,0,127}));
  connect(phiA, angleToTorqueAdaptor.phi) annotation (Line(points={{-110,58},
          {-50,58},{-50,32},{-35,32}}, color={0,0,127}));
  connect(angleToTorqueAdaptor.w, wA) annotation (Line(points={{-35,29},{-72,
          29},{-72,22},{-110,22}},   color={0,0,127}));
  connect(inertia.flange_a, springDamper.flange_b) annotation (Line(points={{
          30,26},{22,26},{22,28},{14,28}}, color={0,0,0}));
  connect(springDamper.flange_a, angleToTorqueAdaptor.flange) annotation (
      Line(points={{-6,28},{-18,28},{-18,24},{-30,24}}, color={0,0,0}));
  connect(damper.flange_a, inertia.flange_a)
    annotation (Line(points={{30,-6},{30,26}}, color={0,0,0}));
  connect(fixed.flange, damper.flange_b) annotation (Line(points={{68,-8},{60,
          -8},{60,-6},{50,-6}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end spring_mass;

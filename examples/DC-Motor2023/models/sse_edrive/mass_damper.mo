within sse_edrive;
model mass_damper
  Modelica.Mechanics.Rotational.Components.TorqueToAngleAdaptor
    torqueToAngleAdaptor(use_a=false)
                         annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-60,28})));
  Modelica.Mechanics.Rotational.Components.TorqueToAngleAdaptor
    torqueToAngleAdaptor1(use_a=false)
                          annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={70,28})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(
    J=0.002,
    phi(start=0),
    w(start=0),
    a(start=0))
    annotation (Placement(transformation(extent={{-2,18},{18,38}})));
  Modelica.Blocks.Interfaces.RealInput M_A(unit="N.m")
    annotation (Placement(transformation(extent={{-126,40},{-86,80}})));
  Modelica.Blocks.Interfaces.RealOutput wA(unit="rad/s")
                                           annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-106,-40})));
  Modelica.Blocks.Interfaces.RealOutput phiA(unit="rad")
                                             annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-108,-68})));
  Modelica.Blocks.Interfaces.RealInput M_B(unit="N.m") annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}},
        rotation=180,
        origin={104,-64})));
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
        origin={106,68})));
  Modelica.Mechanics.Rotational.Components.Damper damper(d=0.001)
    annotation (Placement(transformation(extent={{0,-20},{20,0}})));
  Modelica.Mechanics.Rotational.Components.Fixed fixed
    annotation (Placement(transformation(extent={{30,-20},{50,0}})));
equation
  connect(inertia.flange_b, torqueToAngleAdaptor1.flange) annotation (Line(
        points={{18,28},{68,28}},                 color={0,0,0}));
  connect(torqueToAngleAdaptor.tau, M_A) annotation (Line(points={{-63,36},{-86,
          36},{-86,60},{-106,60}}, color={0,0,127}));
  connect(torqueToAngleAdaptor.w, wA) annotation (Line(points={{-63,23},{
          -80.5,23},{-80.5,-40},{-106,-40}}, color={0,0,127}));
  connect(torqueToAngleAdaptor.phi, phiA) annotation (Line(points={{-63,20},{
          -76,20},{-76,-68},{-108,-68}}, color={0,0,127}));
  connect(torqueToAngleAdaptor1.phi, phiB) annotation (Line(points={{73,36},{
          88,36},{88,68},{106,68}}, color={0,0,127}));
  connect(torqueToAngleAdaptor1.w, wB) annotation (Line(points={{73,33},{89.5,
          33},{89.5,30},{106,30}}, color={0,0,127}));
  connect(torqueToAngleAdaptor1.tau, M_B) annotation (Line(points={{73,20},{
          80,20},{80,-64},{104,-64}}, color={0,0,127}));
  connect(fixed.flange,damper. flange_b) annotation (Line(points={{40,-10},{
          20,-10}},             color={0,0,0}));
  connect(torqueToAngleAdaptor.flange, inertia.flange_a)
    annotation (Line(points={{-58,28},{-2,28}}, color={0,0,0}));
  connect(damper.flange_a, inertia.flange_a) annotation (Line(points={{0,-10},
          {-20,-10},{-20,28},{-2,28}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end mass_damper;

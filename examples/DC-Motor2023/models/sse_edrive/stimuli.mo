within sse_edrive;
model stimuli "Stimulus of e-drive example"
  Modelica.Blocks.Sources.Step Voltage_step(
    startTime=0,
    height=12,
    y(unit="V")) annotation (Placement(transformation(extent={{-60,30},{-40,50}})));
  Modelica.Blocks.Sources.Constant MLoad(k=0.05, y(unit="N.m"))
    annotation (Placement(transformation(extent={{-60,-70},{-40,-50}})));
  Modelica.Blocks.Interfaces.RealOutput M_load(unit="N.m")
    annotation (Placement(transformation(rotation=0, extent={{100,-70},{120,-50}})));
  Modelica.Blocks.Interfaces.RealOutput U(unit="V")
    annotation (Placement(transformation(rotation=0, extent={{100,50},{120,70}})));
  Modelica.Blocks.Math.Gain gain(
    k=-1,
    u(unit="N.m"),
    y(unit="N.m"))
                 annotation (Placement(transformation(extent={{0,-70},{20,-50}})));
equation
  connect(M_load, gain.y) annotation (Line(points={{110,-60},{21,-60}}, color={0,0,127}));
  connect(gain.u, MLoad.y) annotation (Line(points={{-2,-60},{-39,-60}}, color={0,0,127}));
  connect(Voltage_step.y, U)
    annotation (Line(points={{-39,40},{32,40},{32,60},{110,60}}, color={0,0,127}));
end stimuli;

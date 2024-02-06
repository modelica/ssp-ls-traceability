within sse_edrive;
model stimuli
  Modelica.Blocks.Sources.Step Voltage_step(startTime=0, height=12)
    annotation (Placement(transformation(extent={{-54,20},{-34,40}})));
  Modelica.Blocks.Sources.Constant MLoad(k=0.05)
    annotation (Placement(transformation(extent={{-50,-34},{-30,-14}})));
  Modelica.Blocks.Interfaces.RealOutput tau_load(unit="N.m") annotation (
      Placement(transformation(rotation=0, extent={{90,-90},{110,-70}})));
  Modelica.Blocks.Interfaces.RealOutput U(unit="V") annotation (Placement(
        transformation(rotation=0, extent={{90,50},{110,70}})));
  Modelica.Blocks.Math.Gain gain(k=-1)
    annotation (Placement(transformation(extent={{-14,20},{6,40}})));
equation
  connect(tau_load, MLoad.y) annotation (Line(points={{100,-80},{46,-80},{46,
          -24},{-29,-24}}, color={0,0,127}));
  connect(U, gain.y) annotation (Line(points={{100,60},{70,60},{70,30},{7,30}},
        color={0,0,127}));
  connect(gain.u, Voltage_step.y)
    annotation (Line(points={{-16,30},{-33,30}}, color={0,0,127}));
end stimuli;

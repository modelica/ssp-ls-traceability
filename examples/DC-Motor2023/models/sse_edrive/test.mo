within sse_edrive;
model test "Test model for DC-Motor e-machine with load"
  emachine my_emachine(emf(k=0.03), resistor(R=0.1))
                       annotation (Placement(transformation(extent={{-30,-20},{10,20}})));
  mass_damper my_mass annotation (Placement(transformation(extent={{40,-20},{80,20}})));
  sse_edrive.stimuli stimuli(MLoad(k=1.0), Voltage_step(height=48.0))
    annotation (Placement(transformation(rotation=0, extent={{-100,-20},{-60,20}})));
equation
  connect(my_emachine.M, my_mass.M_A) annotation (Line(points={{12,12},{36,12}}, color={0,0,127}));
  connect(my_mass.wA, my_emachine.w) annotation (Line(points={{38,-4},{14,-4}}, color={0,0,127}));
  connect(my_mass.phiA, my_emachine.phi)
    annotation (Line(points={{38,-12},{14,-12}}, color={0,0,127}));
  connect(stimuli.M_load, my_mass.M_B) annotation (Line(points={{-58,-12},{-50,-12},{-50,-40},{94,-40},
          {94,-12},{84,-12}}, color={0,0,127}));
  connect(stimuli.U, my_emachine.U) annotation (Line(points={{-58,12},{-34,12}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(
          preserveAspectRatio=false)),
    __Dymola_Commands(executeCall(
        description="Plot significant signals in the model",
        ensureSimulated=true,
        autoRun=true) = {createPlot(
        id=1,
        position={15,15,1135,582},
        y={"stimuli.U"},
        range={0.0,1.0,40.0,55.0},
        grid=true,
        subPlot=101,
        colors={{28,108,200}},
        timeUnit="s",
        displayUnits={"V"}),createPlot(
        id=1,
        position={15,15,1135,582},
        y={"my_emachine.I"},
        range={0.0,1.0,-200.0,600.0},
        grid=true,
        subPlot=203,
        colors={{28,108,200}},
        timeUnit="s",
        displayUnits={"A"}),createPlot(
        id=1,
        position={15,15,1135,582},
        y={"my_mass.phiB"},
        range={0.0,1.0,-500.0,1500.0},
        grid=true,
        subPlot=103,
        colors={{28,108,200}},
        timeUnit="s",
        displayUnits={"rad"}),createPlot(
        id=1,
        position={15,15,1135,582},
        y={"my_mass.M_A"},
        range={0.0,1.0,-15.0,5.0},
        grid=true,
        subPlot=202,
        colors={{28,108,200}},
        timeUnit="s",
        displayUnits={"N.m"}),createPlot(
        id=1,
        position={15,15,1135,582},
        y={"my_mass.wB"},
        range={0.0,1.0,-500.0,2000.0},
        grid=true,
        subPlot=102,
        colors={{28,108,200}},
        timeUnit="s",
        displayUnits={"rad/s"}),createPlot(
        id=1,
        position={15,15,1135,582},
        y={"stimuli.M_load"},
        range={0.0,1.0,-1.2000000000000002,-0.8000000000000002},
        grid=true,
        subPlot=201,
        colors={{28,108,200}},
        timeUnit="s",
        displayUnits={"N.m"})} "Plot KPI", file(description="Export FMUs for SSP") =
        "Export FMUs.mos" "Export FMUs"),
    experiment(StopTime=1, __Dymola_Algorithm="Dassl"));
end test;

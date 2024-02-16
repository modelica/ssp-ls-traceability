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
        origin={-60,0})));
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
        extent={{10,-10},{-10,10}},
        rotation=90,
        origin={-60,40})));
  Modelica.Blocks.Interfaces.RealInput U(unit="V") annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=0,
        origin={-120,60})));
equation
  connect(currentSensor.i, I)
    annotation (Line(points={{-71,0},{-88,0},{-88,-60},{-110,-60}}, color={0,0,127}));
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
    annotation (Line(points={{-10,-40},{-60,-40},{-60,-10}},color={0,0,255}));
  connect(signalVoltage.v, U)
    annotation (Line(points={{-72,40},{-90,40},{-90,60},{-120,60}}, color={0,0,127}));
  connect(signalVoltage.p, resistor.p)
    annotation (Line(points={{-60,50},{-60,60},{-20,60}}, color={0,0,255}));
  connect(signalVoltage.n, currentSensor.n)
    annotation (Line(points={{-60,30},{-60,10}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(
          preserveAspectRatio=false)),
    __Dymola_UserMetaData(MetaData(category="DC-Motor-el Meta-Data (DC-Motor-el.srmd)", value={{
            "Type: de.setlevel.srmd.model-meta-data=",""},{"model.type","physical principle"},{
            "physical-principle.family","ex: Electrical"},{"physical-principle.name","ex: motor"},{
            "physical-principle.technology","ex: DC"},{"physical-principle.technology.variant",
            "ex: el-magn"},{"model.manufacturer","GlueParticle"},{"model.family"," DC-Motor"},{
            "model.name","DC-Motor-el"},{"model.version","GPsim2.03"},{"model.releasedate",
            "2022-02-01"},{"model.releasestatus","In Development"},{"model.guid",
            "For FMU-based models, this should be the GUID of the FMU, e.g. 7ae4-210f-dead-beef-0422"},
            {"model.purpose","Pre-development of systems with DC-motors"},{
            "model.modelling-approach",
            "basic physical equations of the electrical part of a DC motor is causal modeled"},{
            "model.preconditions","-none-"},{"model.validity-range","basic physical equations"},{
            "model.specification","link to specification document"},{"model.verification.status",
            "false"},{"model.verification.report",""},{"model.validation.concept",""},{
            "model.validation.status","false"},{"model.validation.platform",
            "Dymola V112 and PMSF FMIBench 1.9.9.4 on Windows 10 1809"},{"model.validation.report",
            ""},{"model.limitations","This delivery is a pre-release and the model is intended to be used for pre-development
            The model is not validated; thus it is not intended to be used for validation or verification of any actuator.
            
            This delivery is not developed according to process defined in ISO 26262 (Standard for Functional Safety).
        "},{"model.implementation.format","FMI 2.0"},{"model.implementation.preconditions",
            "Model needs Windows 10 1809 or newer or Linux"},{
            "model.implementation.performance-characteristics",
            "Potentially real-time capable, simple differential equation 1 order"},{
            "model.integration.requirements",
            "link to requirements and considerations for operating the model"},{
            "Type: de.setlevel.srmd.ISO-11010-X=",""},{"part",
            "The part of the ISO-11010 relevant for model, for example 1 if ISO-11010-1"},{"plant",
            "The relevant nomencalture convention for the plant part of the model if applicable, for example a Model of the Brake physical system: BRM2.2"},
            {"controller",
            "The relevant nomencalture convention for the controller part of the model if applicable, for example a Model of the Brake controller system: BRC2.1"}})));
end emachine;

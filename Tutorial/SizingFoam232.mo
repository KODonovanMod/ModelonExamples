within Tutorial;
model SizingFoam232
    .VaporCycle.Experiments.HydrogenStorage.TankSizing.Tanks.CryogenicFoam dormantFoam(layer2(redeclare replaceable record ThermalMaterial = .Modelon.Thermal.MaterialProperties.PropertyData.ConstantProperties.PolyurethaneFoamHuete),sf = 2.2,p_max = 404e3,volumeFractionVapor = 0.13,p_filling = 165.5e3,sizingParametrization = VaporCycle.Experiments.HydrogenStorage.TankSizing.Tanks.Utilities.sizingParametrization.MassAndRadius,massHydAvail_prscr = 13620,r_outer_par = 4.67 / (2),insulationSizing = VaporCycle.Experiments.HydrogenStorage.TankSizing.Tanks.Utilities.InsulationSizing.Dormancy) annotation(Placement(transformation(extent = {{-52.0,2.0},{-32.0,22.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(T = 288.15) annotation(Placement(transformation(extent = {{-104,2},{-84,22}},origin = {0,0},rotation = 0)));
equation
    connect(fixedTemperature.port,dormantFoam.port_amb) annotation(Line(points = {{-84,12},{-50,12}},color = {191,0,0}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}),Documentation(info = "<html><p>This is an example model for the <a href=\"https://help.modelon.com/latest/tutorials/hydrogen_storage/tank_sizing/\">tank sizing tutorial</a>, section <a href=\"https://help.modelon.com/latest/tutorials/hydrogen_storage/tank_sizing/#size-the-foam-insulated-tank-foam232\">size the Foam Insulated Tank (Foam232)</a>. See also additional generic help in <a href=\"modelica://VaporCycle.Experiments.HydrogenStorage.TankSizing.Tanks.DormantFoam\">DormantFoam</a>, a corresponding library model.</p></html>"));
end SizingFoam232;

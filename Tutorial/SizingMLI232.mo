within Tutorial;
model SizingMLI232
    .VaporCycle.Experiments.HydrogenStorage.TankSizing.Tanks.CryogenicVacuum mli232(sf = 2.2,p_max = 210000,volumeFractionVapor = 0.13,p_filling = 165.5e3,sizingParametrization = VaporCycle.Experiments.HydrogenStorage.TankSizing.Tanks.Utilities.sizingParametrization.MassAndRadius,massHydAvail_prscr = 10220,r_outer_par = 4.67 / (2),thickness_par = 0.127,layer1(E = 0.7)) annotation(Placement(transformation(extent = {{-38.0,14.0},{-18.0,34.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(T = 288.15) annotation(Placement(transformation(extent = {{-61.740286269128546,44.435170441787285},{-49.9253415698371,56.25011514107873}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(fixedTemperature.port,mli232.port_amb) annotation(Line(points = {{-49.9253415698371,50.34264279143301},{-28.32783147243888,50.34264279143301},{-28.32783147243888,24},{-36,24}},color = {191,0,0}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}),Documentation(info = "<html><p>This is an example model for the <a href=\"https://help.modelon.com/latest/tutorials/hydrogen_storage/tank_sizing/\">tank sizing tutorial</a>, section <a href=\"https://help.modelon.com/latest/tutorials/hydrogen_storage/tank_sizing/#size-the-multi-layered-insulated-vacuum-tank-mli232\">size the Multi-Layered Insulated Vacuum Tank (MLI232)</a>. See also additional generic help in <a href=\"modelica://VaporCycle.Experiments.HydrogenStorage.TankSizing.Tanks.DormantVacuum\">DormantVacuum</a>, a corresponding library model.</p></html>"));
end SizingMLI232;

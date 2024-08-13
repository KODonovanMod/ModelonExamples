within Tutorial.Experiment;

model FlightRangeMLI232
    extends .Tutorial.Experiment.FlightRangeBase(massHydAvail = 10220,p_max = 210000,V_inner = 176,D_outer = 4.67,L_total = 13.6,t_vessel = 0.0033,t_insulation = 0.127,t_protection = 0.0265,k_insulation = 0.0015,altitudeTable(fileName = Modelica.Utilities.Files.loadResource("modelica://Tutorial/Resources/MLI232/Altitude.txt")),liquidFlowRateTable(fileName = Modelica.Utilities.Files.loadResource("modelica://Tutorial/Resources/MLI232/FuelFlow.txt")),timeSignal(y = time),ramp(duration = 0));
    
    annotation(Documentation(info = "<html><p>This is an example model for the <a href=\"https://help.modelon.com/latest/tutorials/hydrogen_storage/fuel_consumption/\">fuel consumption tutorial</a>, section <a href=\"https://help.modelon.com/latest/tutorials/hydrogen_storage/fuel_consumption/#vacuum-test-model\">vacuum test model</a>.</p></html>"));        
end FlightRangeMLI232;

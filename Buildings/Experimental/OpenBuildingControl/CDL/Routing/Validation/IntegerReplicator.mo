within Buildings.Experimental.OpenBuildingControl.CDL.Routing.Validation;
model IntegerReplicator "Validation model for the IntegerReplicator block"
  extends Modelica.Icons.Example;
  Buildings.Experimental.OpenBuildingControl.CDL.Routing.IntegerReplicator intRep(
    nout=3) "Block that outputs the array replicating input value"
    annotation (Placement(transformation(extent={{40,-10},{60,10}})));
  Buildings.Experimental.OpenBuildingControl.CDL.Continuous.Sources.Ramp ram(
    height=5,
    duration=1,
    offset=-2) "Block that outputs ramp signal"
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  Buildings.Experimental.OpenBuildingControl.CDL.Conversions.RealToInteger reaToInt
    "Convert real input to integer output"
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));

equation
  connect(ram.y, reaToInt.u)
    annotation (Line(points={{-39,0},{-12,0}}, color={0,0,127}));
  connect(reaToInt.y, intRep.u)
    annotation (Line(points={{11,0},{38,0}}, color={255,127,0}));
  annotation (
  experiment(StopTime=1.0, Tolerance=1e-06),
  __Dymola_Commands(file="modelica://Buildings/Resources/Scripts/Dymola/Experimental/OpenBuildingControl/CDL/Routing/Validation/IntegerReplicator.mos"
        "Simulate and plot"),
    Documentation(info="<html>
<p>
Validation test for the block
<a href=\"modelica://Buildings.Experimental.OpenBuildingControl.CDL.Routing.IntegerReplicator\">
Buildings.Experimental.OpenBuildingControl.CDL.Routing.IntegerReplicator</a>.
</p>
</html>", revisions="<html>
<ul>
<li>
July 24, 2017, by Jianjun Hu:<br/>
First implementation.
</li>
</ul>
</html>"));
end IntegerReplicator;
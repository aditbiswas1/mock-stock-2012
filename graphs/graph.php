<html>
<head>
<script src="../javascripts/RGraph.common.core.js" ></script>
    <script src="../javascripts/RGraph.common.dynamic.js" ></script>
    <script src="../javascripts/RGraph.common.effects.js" ></script>
    <script src="../javascripts/RGraph.line.js" ></script>
    <script src="../javascripts/jquery.min.js" ></script>
</head>
</body>

<h1>Line chart with Trace effect</h1>

    <div>
        <canvas id="cvs" width="600" height="250">[No canvas support]</canvas>
    </div>
	
	<script>
     window.onload = function (e)
    {
        RGraph.AJAX('http://' + location.host + '/graphs/data.php?id=1', myCallback);
    }
	/**
    * This is the AJAX callback. When the AJAX function receives the data it calls this function.
    * This function then creates the chart.
    */
    function myCallback ()
    {
        var data = this.responseText.split(',');
        
        /**
        * IMPORTANT: Must convert the data (which is a string) to numbers
        */
        for (var i=0; i<data.length; ++i) {
            data[i] = Number(data[i]);
        }
        
        /**
        * Create the chart
        */
        var myChart = new RGraph.Line('cvs', data);
        myChart.Set('chart.ymax', 100);
        myChart.Set('chart.hmargin', 10);
        myChart.Set('chart.linewidth', 2);
        myChart.Set('chart.tickmarks', 'endcircle');
        myChart.Set('chart.labels', ['Hoolio','Richard','Jack','Kenny','Ivan','Pete','Rodrigo','Luis','Fred','John']);
        myChart.Draw();
    }
	</script>
</body>
</html>
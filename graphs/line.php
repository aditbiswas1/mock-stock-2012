<!DOCTYPE html >
<html>
<head>
<script src="../javascripts/RGraph.common.core.js" ></script>
    <script src="../javascripts/RGraph.line.js" ></script>
    <!--[if lt IE 9]><script src="../excanvas/excanvas.js"></script><![endif]-->
    
    <title>Line chart with scrollingeffect</title>
</head>
<body>

    <h1>Line chart with scrolling effect</h1>

    <canvas id="cvs" width="600" height="250">[No canvas support]</canvas>
    
    <script>
        data = RGraph.array_pad([], 500);

        function DrawGraph ()
        {
            RGraph.Clear(document.getElementById("cvs"));
            RGraph.ObjectRegistry.Clear();

            var line = new RGraph.Line('cvs', data);
            line.Set('chart.colors', ['green']);
            line.Set('chart.linewidth', 1);
            line.Set('chart.filled', true);
            line.Set('chart.fillstyle', 'rgba(128,255,128,0.5)');
            line.Set('chart.ymax', 60);
            line.Set('chart.numxticks', 5);
            line.Set('chart.labels', ['Now','25s','50s','75s','100s','125s']);
            line.Draw();

            r    = RGraph.random(45,55);
            data = [r].concat(data);
            data.pop();

            
            setTimeout(DrawGraph, 250);
        }
        
        window.onload = function ()
        {
            DrawGraph();
        }
    </script>

    <p>
        <a href="./">&laquo; Back</a>
    </p>

</body>
</html>
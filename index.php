<?php
<!--conectando ao Banco de Dados-->
$dbhandle = new mysqli('localhost', 'root', '', 'controle_hidroponico');
echo $dbhandle->connect_error; 

<!--buscando planilha-->
$query = "SELECT * FROM dados_horta";
$res = $dbhandle->query($query);

?>

<html>
  <head>
    <!--Carregando AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      google.charts.load('current', {'packages':['corechart']});

      google.charts.setOnLoadCallback(drawChart2);
      
      function drawChart2() {
        
        var data = google.visualization.arrayToDataTable([
          <!--escolhendo dados-->
          ['tempo', 'litros'],
          
          <?php
            <!--inserindo dados no grafico-->
            while ($row=$res->fetch_assoc()){
              
              echo "['".$row['tempo']."', ".$row['litros']."],";

            }
          ?>

        ]);
        
        var options = {
          'title':'Litros por minuto',
          'width':700,
          'height':400,
          'colors': ['#0000FF']
        };

        var chart = new google.visualization.LineChart(document.getElementById('litros_min'));
        chart.draw(data, options);

      }
      
    </script>
  </head>

  <body>
  <!--colocando grafico dentro da div-->
    <div id="litros_min"></div>
  </body>
</html>

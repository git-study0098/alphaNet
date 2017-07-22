/**
 * 
 */
	google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Year', '기술사', '기능장','기사' ,'산업기사','전문사무','기능사'],
          ['2012',  53.4,  27.9 , 41.7, 48.5,38,48],
          ['2013',  56,30.3,40.4,45.4,34,47.9],
          ['2014',  53.6,23.4,37.1,49,34.5,47.4],
          ['2015',  55.6,24.5,42.5,46.8,36.9,48.3],
          ['2016',  56.9,36.8,43.9,49.5,41.2,48.9]
        ]);

        var options = {
          title: '연도별 등급별 실기응시자 추이(%)',
          format:'#%'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }

      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart2);
      function drawChart2() {
        var data = google.visualization.arrayToDataTable([
          ['Year', '필기응시', '실기응시','필기합격' ,'실기합격'],
          ['2012',  1359979,  845519 , 493968, 392961 ],
          ['2013',  1507143,969735,557850,445563],
          ['2014',  1525875,950087,572198,429422],
          ['2015',  1516646,1042868,590695,485331],
          ['2016',  1555921,1082471,632502,516253]
        ]);

        var options = {
          title: '시험응시/합격자정보'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div2'));
        chart.draw(data, options);
      }

      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart3);
      function drawChart3() {
        var data = google.visualization.arrayToDataTable([
          ['Year', '남자', '여자'],
          ['2012',  272118, 140156],
          ['2013',  303750,161686],
          ['2014',  303368,146793],
          ['2015',  334483,172326],
          ['2016',  363862,174257]
        ]);

        var options = {
          title: '자격취득자 연도별 성별 추이'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div3'));
        chart.draw(data, options);
      }
      
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart4);
      function drawChart4() {
        var data = google.visualization.arrayToDataTable([
          ['Year', '19세이하', '20대','30대' ,'40대','50대이상','미상'],
          ['2012',  108072, 141190, 75197, 58116,29690,9],
          ['2013',  118791,156605,81628,68771,39632,9],
          ['2014',  123742,153021,72753,62658,37986,1],
          ['2015',  125560,180969,86156,70442,43682,0],
          ['2016',  130116,193031,90719,75279,48974,0]
        ]);

        var options = {
          title: '자격취득자 연도별 등급별 추이'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div4'));
        chart.draw(data, options);
      }
      
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['age','age'],
          ['19세이하',     2],
          ['20~24',      6.10],
          ['25~29', 9.60],
          ['30~34', 13.90],
          ['35~40',    16.50],
          ['40~44',    15.20],
          ['45세이상',    36.60],
          ['미상',    0.1]
        ]);

        var options = {
          title: '[자격취득자 연령별 추이(2006년 현재 연령기준)]',
          is3D: true,
          legend: 'none'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }

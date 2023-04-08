<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  ServletContext context = getServletConfig().getServletContext();
  String appAccent =context.getInitParameter("appAccent");
  String appAccentHover=context.getInitParameter("appAccentHover");
%>
<html>
<head>
  <title>Homepage</title>
  <script src="/app/js/utility.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
  <jsp:include page="/WEB-INF/jsp/component/adminNavBar.jsp"></jsp:include>
  <div class="main-wrapper">
    <header class="bg-surface-primary border-bottom pt-6 pb-6">
      <div class="container-fluid">
        <div class="mb-npx">
          <div class="row align-items-center">
            <div class="col-sm-6 col-12 mb-4 mb-sm-0">
              <h1 class="h3 mb-0 ls-tight">Dashboard</h1>
            </div>
          </div>
        </div>
      </div>
    </header>
    <div class="container-fluid">
      <div class="d-flex flex-row mt-7 align-items-center chart-title-container">
        <i class="bi bi-flag-fill"></i>
        <h3 class="text-dark">Report</h3>
      </div>
      <div class="row g-6 mb-6 mt-2">
        <div class="col-xl-3 col-sm-6 col-12">
          <div class="card shadow border-0">
            <div class="card-body">
              <div class="row">
                <div class="col">
                  <span class="h6 font-semibold text-muted text-sm d-block mb-2">Total users</span>
                  <span class="h3 font-bold mb-0">2,312</span>
                </div>
                <div class="col-auto">
                  <div class="icon icon-shape bg-tertiary text-white text-lg rounded-circle">
                    <i class="bi bi-person-circle"></i>
                  </div>
                </div>
              </div>
              <div class="mt-2 mb-0 text-sm">
                                    <span class="badge badge-pill bg-soft-success text-success me-2">
                                        <i class="bi bi-arrow-up me-1"></i>13%
                                    </span>
                <span class="text-nowrap text-xs text-muted">Since last month</span>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 col-12">
          <div class="card shadow border-0">
            <div class="card-body">
              <div class="row">
                <div class="col">
                  <span class="h6 font-semibold text-muted text-sm d-block mb-2">Total products</span>
                  <span class="h3 font-bold mb-0">215</span>
                </div>
                <div class="col-auto">
                  <div class="icon icon-shape bg-primary text-white text-lg rounded-circle">
                    <i class="bi bi-archive-fill"></i>
                  </div>
                </div>
              </div>
              <div class="mt-2 mb-0 text-sm">
                                    <span class="badge badge-pill bg-soft-success text-success me-2">
                                        <i class="bi bi-arrow-up me-1"></i>30%
                                    </span>
                <span class="text-nowrap text-xs text-muted">Since last month</span>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 col-12">
          <div class="card shadow border-0">
            <div class="card-body">
              <div class="row">
                <div class="col">
                  <span class="h6 font-semibold text-muted text-sm d-block mb-2">Total seller</span>
                  <span class="h3 font-bold mb-0">1,400</span>
                </div>
                <div class="col-auto">
                  <div class="icon icon-shape bg-info text-white text-lg rounded-circle">
                    <i class="bi bi-person-bounding-box"></i>
                  </div>
                </div>
              </div>
              <div class="mt-2 mb-0 text-sm">
                                    <span class="badge badge-pill bg-soft-danger text-danger me-2">
                                        <i class="bi bi-arrow-down me-1"></i>-5%
                                    </span>
                <span class="text-nowrap text-xs text-muted">Since last month</span>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 col-12">
          <div class="card shadow border-0">
            <div class="card-body">
              <div class="row">
                <div class="col">
                  <span class="h6 font-semibold text-muted text-sm d-block mb-2">Average product rating</span>
                  <span class="h3 font-bold mb-0">3.5</span>
                </div>
                <div class="col-auto">
                  <div class="icon icon-shape bg-warning text-white text-lg rounded-circle">
                    <i class="bi bi-star-fill"></i>
                  </div>
                </div>
              </div>
              <div class="mt-2 mb-0 text-sm">
                                    <span class="badge badge-pill bg-soft-success text-success me-2">
                                        <i class="bi bi-arrow-up me-1"></i>10%
                                    </span>
                <span class="text-nowrap text-xs text-muted">Since last month</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="d-flex flex-row mt-10 align-items-center chart-title-container">
        <i class="bi bi-bar-chart-fill"></i>
        <h3 class="text-dark">Statistic</h3>
      </div>
      <div class="statistic-container-sellvana">
        <canvas id="barChart"></canvas>
        <canvas id="pieChart"></canvas>
      </div>
    </div>
  </div>
</body>
<script>
  Chart.defaults.font.family = "Inter";
  Chart.defaults.font.size = 14;

  // Get the canvas element
  const barChartCtx = document.getElementById('barChart').getContext('2d');

  const productCategory = ['Clothing & Apparel', 'Shoe & Footwear', 'Electronic & Gadget', 'Toy & Game', 'Pet', 'Stationary'];
  const productAmounts = [100, 80, 120, 70, 90, 65];


  // Create the bar chart
  const barChart = new Chart(barChartCtx, {
    type: 'bar',
    data: {
      labels: productCategory,
      datasets: [{
        label: 'Total Amount of Products by Category',
        data: productAmounts,
        backgroundColor: [
          '#F5569A',
          '#6062F9',
          '#49D5FF',
          '#FFCD56',
          '#56F579',
          '#F5EF56'
        ],
      }]
    },
    options: {
      scales: {
        x:{
          grid: {
            display:false
          },
        },
        y: {
          beginAtZero: false,
          grid:{
            display:false
          }
        },
      },
    }
  });
</script>
<script>
  // Get the canvas element
  const pieChartCtx = document.getElementById('pieChart').getContext('2d');

  // Data for categories and user proportions
  const userCategory = ['Customer', 'Seller', 'Admin'];
  const userProportions = [3000, 500, 100];

  // Custom styling for the pie chart
  const backgroundColors = [
    'rgba(75, 192, 192, 1)',
    'rgba(255, 99, 132, 1)',
    'rgba(255, 205, 86, 1)',
  ];

  // Create the pie chart
  const pieChart = new Chart(pieChartCtx, {
    type: 'pie',
    data: {
      labels: userCategory,
      datasets: [{
        data: userProportions,
        backgroundColor: backgroundColors,
      }]
    },
    options: {
      plugins: {
        legend: {
          position: 'bottom',
        },
        title:{
          display:true,
          text:'User Proportions by Category',
          font: {
            size: 14,
            weight:400
          },
          padding: {
            top: 20,
            bottom: 20,
          },
        }
      },
    },
  });
</script>
<style>
  .chart-title-container i{
    color:<%=appAccent%>;
  }

  .chart-title-container h3{
    font-weight: 500;
    font-size: 19px;
  }

  .d-flex.flex-row{
    gap: 10px;
  }

  .statistic-container-sellvana{
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    align-items: center;
    margin-top: 30px;
    padding: 30px;
    background-color: white;
    box-shadow: 0px 3px 3px -1px rgba(10,22,70,.1), 0px 0px 1px 0px rgba(10,22,70,.06) !important;
    border-radius: 1rem;
    width: 1300px;
  }

  #pieChart{
    max-width: 500px;
    max-height: 350px;
  }

  #barChart{
    max-width: 650px;
    max-height: 450px;
  }

  .main-wrapper{
    width: auto;
    margin-left: 269px;
    padding-bottom:30px;
    background-color: transparent;
  }

</style>
</html>

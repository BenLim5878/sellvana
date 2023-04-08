<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  ServletContext context = getServletConfig().getServletContext();
  String appAccent =context.getInitParameter("appAccent");
  String appAccentHover=context.getInitParameter("appAccentHover");
%>
<html>
<head>
  <title>Feedback</title>
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
              <h1 class="h3 mb-0 ls-tight">Feedback Analytics</h1>
            </div>
          </div>
        </div>
      </div>
    </header>
    <div class="container-fluid">
      <div class="d-flex flex-row mt-7 align-items-center chart-title-container">
        <i class="bi bi-book-fill"></i>
        <h3 class="text-dark">Summary</h3>
      </div>
      <div class="row g-6 mb-6 mt-2">
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
                  <span class="h6 font-semibold text-muted text-sm d-block mb-2">Total Orders</span>
                  <span class="h3 font-bold mb-0">23,560</span>
                </div>
                <div class="col-auto">
                  <div class="icon icon-shape bg-danger text-white text-lg rounded-circle">
                    <i class="bi bi-bag-check-fill"></i>
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
        <canvas id="lineChart"></canvas>
        <canvas id="rating-chart"></canvas>
      </div>
    </div>
  </div>
</body>
<script>
  Chart.defaults.font.family = "Inter";
  Chart.defaults.font.size = 14;

  const ctx = document.getElementById('lineChart').getContext('2d');

  // Example data for past 30 days
  const data = {
    labels: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5', 'Day 6', 'Day 7', 'Day 8', 'Day 9', 'Day 10', 'Day 11', 'Day 12', 'Day 13', 'Day 14', 'Day 15', 'Day 16', 'Day 17', 'Day 18', 'Day 19', 'Day 20', 'Day 21', 'Day 22', 'Day 23', 'Day 24', 'Day 25', 'Day 26', 'Day 27', 'Day 28', 'Day 29', 'Day 30'],
    datasets: [
      {
        label: 'Total Amount of Orders',
        data: [12, 19, 3, 5, 2, 3, 7, 9, 15, 12, 10, 8, 14, 17, 6, 3, 10, 12, 20, 18, 9, 11, 8, 14, 15, 12, 19, 8, 10, 5],
        backgroundColor: 'rgba(75, 192, 192, 0.2)',
        borderColor: 'rgba(75, 192, 192, 1)',
        borderWidth: 1,
        fill:true,
        tension: 0.4,
      },
    ],
  };

  // Chart configuration
  const config = {
    type: 'line',
    data: data,
    options: {
      scales: {
        x:{
          grid: {
            display:false
          },
        },
        y: {
          beginAtZero: true,
          grid: {
            display:false
          },
        },
      },
    },
  };

  // Create the line chart
  const ordersLineGraph = new Chart(ctx, config);

</script>
<script>
  // Get the canvas element
  const barChartCtx = document.getElementById('rating-chart').getContext('2d');

  const productCategory = ['Clothing & Apparel', 'Shoe & Footwear', 'Electronic & Gadget', 'Toy & Game', 'Pet', 'Stationary'];
  const ratingData = [3.5, 4.2, 3.9, 4.5, 4.1,3.5];


  // Create the bar chart
  const barChart = new Chart(barChartCtx, {
    type: 'bar',
    data: {
      labels: productCategory,
      datasets: [{
        label: 'Total Amount of Products by Category',
        data: ratingData,
        backgroundColor: [
          'rgba(245,86,154,0.5)',
          'rgba(96,98,249,0.5)',
          'rgba(73,213,255,0.5)',
          'rgba(255,205,86,0.5)',
          'rgba(86,245,121,0.5)',
          'rgba(245,239,86,0.5)'
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
          grid:{
            display:false
          }
        },
      },
    }
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
    flex-direction: column;
    align-items: center;
    gap: 70px;
    margin-top: 30px;
    padding: 30px;
    background-color: white;
    box-shadow: 0px 3px 3px -1px rgba(10,22,70,.1), 0px 0px 1px 0px rgba(10,22,70,.06) !important;
    border-radius: 1rem;
    width: 1300px;
  }

  #lineChart{
    max-height: 350px;
  }

  #rating-chart{
    max-height: 400px;
  }

  .main-wrapper{
    width: auto;
    margin-left: 269px;
    padding-bottom:40px;
    background-color: transparent;
  }
</style>
</html>

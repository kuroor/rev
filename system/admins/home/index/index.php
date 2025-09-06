<?php 
include("../../header.php");
//include("modals.php");
?>

<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->  
  <section class="content-header">
    <div class="callout callout-info">
      <h4>Welcome
        <i><?php echo $_SESSION['firstname']." ". $_SESSION['lastname'] ?> !</i>
      </h4>
    </div>

    <!-- Subject Reviewer Boxes -->
    <div class="container-fluid mt-4">
      <div class="row">
        <!-- English -->
        <div class="col-md-4">
          <div class="card shadow-lg p-4 mb-4 rounded text-center" style="min-height:180px;">
            <h3 class="card-title mb-3">English</h3>
            <button class="btn btn-primary btn-lg btn-block" onclick="openPDF('english.pdf')">Open Reviewer</button>
          </div>
        </div>

        <!-- Math -->
        <div class="col-md-4">
          <div class="card shadow-lg p-4 mb-4 rounded text-center" style="min-height:180px;">
            <h3 class="card-title mb-3">Math</h3>
            <button class="btn btn-success btn-lg btn-block" onclick="openPDF('math.pdf')">Open Reviewer</button>
          </div>
        </div>

        <!-- Science -->
        <div class="col-md-4">
          <div class="card shadow-lg p-4 mb-4 rounded text-center" style="min-height:180px;">
            <h3 class="card-title mb-3">Science</h3>
            <button class="btn btn-warning btn-lg btn-block" onclick="openPDF('science.pdf')">Open Reviewer</button>
          </div>
        </div>

        <!-- Filipino -->
        <div class="col-md-4">
          <div class="card shadow-lg p-4 mb-4 rounded text-center" style="min-height:180px;">
            <h3 class="card-title mb-3">Filipino</h3>
            <button class="btn btn-danger btn-lg btn-block" onclick="openPDF('filipino.pdf')">Open Reviewer</button>
          </div>
        </div>

        <!-- Religion -->
        <div class="col-md-4">
          <div class="card shadow-lg p-4 mb-4 rounded text-center" style="min-height:180px;">
            <h3 class="card-title mb-3">Religion</h3>
            <button class="btn btn-info btn-lg btn-block" onclick="openPDF('religion.pdf')">Open Reviewer</button>
          </div>
        </div>

        <!-- SQL -->
        <div class="col-md-4">
          <div class="card shadow-lg p-4 mb-4 rounded text-center" style="min-height:180px;">
            <h3 class="card-title mb-3">SQL</h3>
            <button class="btn btn-dark btn-lg btn-block" onclick="openPDF('sql.pdf')">Open Reviewer</button>
          </div>
        </div>
      </div>
    </div>

    <script>
  function openPDF(file) {
    window.open('/reviewer/pdf/' + file, '_blank');
  }
</script>

  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php include("../../footer.php"); ?>
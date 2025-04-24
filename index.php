<?php include('header.php') ?>
<body class="bg-light">
    <div class="container">
        <div class="text-end mt-5">
            <a href="login.php" class="btn btn-primary">Login</a>
        </div>
        <?php
        if(isset($_SESSION['error'])){
        ?>
        <div class="alert alert-dismissible alert-danger">
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            <?php 
            echo $_SESSION['error'];
            ?>
        </div>
        <?php
            }else{
            echo "";
            }
        ?>
        <div class="center">
            <div class="wrap">
                <h2  class="text-center display-6 text-uppercase">Dept of CSE, IU</h2>
                <p class="lead text-center mb-0 ">Search Student</p>
                <div class="row justify-content-center text-center">
                    <div class="col-12 col-sm-12 col-md-10 col-lg-8">
                        <form action="query_information.php" method="POST">
                            <div class="mt-2">
                                <select name="department" class="form-control form-control-lg" required>
                                    <option value="">Select Department</option>
                            
                                    <option value="Computer">Computer Science And Enginnering</option>
                                    <option value="Chemistry">Applied Chemistry</option>
                                    <option value="IT">Information Technology</option>
                                    <option value="Biology">Biotechnology and Genetics</option>
                                </select>
                            </div>
                            <div class="mt-2">
                                <input type="number" name="roll" class="form-control form-control-lg" placeholder="Ente Your Roll" required>
                            </div>
                            <div class="mt-2">
                                <input type="submit" name="submit" class="form-control btn btn-success btn-lg" value="SUBMIT">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <p class="text-center mb-0">2024-<?= date('Y')?> Dept of CSE, IU</p>
    </div>
    <?php include('footer.php') ?>
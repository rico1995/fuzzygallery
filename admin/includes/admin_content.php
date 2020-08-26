<div class="container-fluid">

    <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                Admin
                <small>Dashboard</small>
            </h1>

            <?php

            // $user = new User(); with instantiating everytime

            // list all user's name
            // $result_set = User::find_all_users(); //less code, more optimal
            // echo "All username: <br>";
            // while($row = mysqli_fetch_array($result_set)){

            //     echo $row['username']. "<br>";

            // }

            #even more optimal OOP with our built methods
            ######### FIND ALL ###########
            // $users = User::find_all();

            // foreach ($users as $user) {

            //     echo $user->username . "<br>";

            // }

            #########instantiating photos find all ########
            // $photos = Photo::find_all();

            // foreach ($photos as $photo) {

            //     echo $photo->title . "<br>";

            // }

            ################## find by ID #######
            // $photo = Photo::find_by_id(5);
            // echo $photo->filename;


            #even less code
            // $found_user = User::find_user_by_id(2);

            // echo $found_user->username;

            // $pictures = new Picture(); #test

            // list of 1 user's name by id 
            // $found_user = User::find_user_by_id(2);

            // $user = User::instantiation($found_user);

            // echo "User id & name:<br>";
            // echo $user->id."  ". $user->username;




            // próbálkozás
            // $result_byid = User::find_user_byid();

            // while($row = mysqli_fetch_array($result_byid)){

            //     echo $row['username']. "<br>";
            // }


            // $sql = "SELECT * FROM users WHERE id=1";
            // $result = $database->query($sql);

            // $user_found = mysqli_fetch_array($result);

            // echo $user_found['username'];

            ####### CREATE METHOD #########
            // $user = new User();

            // $user->username = "student";
            // $user->password = "somethingweird";
            // $user->first_name = "Sol";
            // $user->last_name = "Gryn";

            // $user->create();

            ########## CREATE PHOTO  instance #######
            // $photo = new Photo();

            // $photo->title = "Just some test title";
            // $photo->size = "20";


            // $photo->create();

            ########### UPDATE IN DATABASE by id ########
            // $user = User::find_user_by_id(9);

            // $user->username = "teddy321";
            // $user->password = "Pasta332";
            // $user->first_name = "Teodor";
            // $user->last_name = "Rosevelt";

            // $user->update();

            ########### DELETE FROM DATABASE ########
            // $user = User::find_user_by_id(7);
            // $user->delete();

            ########### MODIFY DATABASE ########
            // $user = User::find_user_by_id(7);

            // $user->password = "just_password";
            // $user->save();

            ########### INSERT INTO ########
            // $user = new User();

            // $user->username = "NEW USER";
            // $user->save();


            ##########path dump
            // echo DS;
            // echo SITE_ROOT;
            // echo INCLUDES_PATH;

            ?>


            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-users fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $session->count; ?></div>
                                    <div>New Views</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-photo fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo Photo::count_all(); ?></div>
                                    <div>Photos</div>
                                </div>
                            </div>
                        </div>
                        <a href="photos.php">
                            <div class="panel-footer">
                                <span class="pull-left">Total Photos in Gallery</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>


                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-user fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo User::count_all(); ?>

                                    </div>

                                    <div>Users</div>
                                </div>
                            </div>
                        </div>
                        <a href="users.php">
                            <div class="panel-footer">
                                <span class="pull-left">Total Users</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-support fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo Comment::count_all(); ?></div>
                                    <div>Comments</div>
                                </div>
                            </div>
                        </div>
                        <a href="comments.php">
                            <div class="panel-footer">
                                <span class="pull-left">Total Comments</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>


            </div>
            <!--First Row-->

            <div class="row">

                <div id="piechart" style="width: 900px; height: 500px;"></div>

            </div>


        </div>
    </div>
    <!-- /.row -->

</div>
<!-- /.container-fluid -->
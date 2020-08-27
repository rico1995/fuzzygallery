<?php include("includes/init.php"); ?>

<?php if(!$session->is_signed_in()) {redirect("login.php");} ?>

<?php

if(empty($_GET['id'])){

    redirect("comments.php");

}

$comment = Comment::find_by_id($_GET['id']);

if($comment){

    $comment->delete();
    $session->message("The comment with the id : {$comment->id} was deleted successfully!");
    redirect("comments.php");

}else{

    redirect("comments.php");

}







?>
<?php

function getPosts($connect) {
 $posts = mysqli_query($connect, "SELECT * FROM `products`");
  if (mysqli_num_rows($posts) === 0) {
    http_response_code(404);
    $res = [
      "status" => false,
      "messages" => "Posts not Found"
    ];
    echo json_encode($res);
  } else {

  $postsList = [];

  while ($post = mysqli_fetch_assoc($posts)) {
    $postsList[] = $post;
  }
  echo(json_encode($postsList));
  }
}

function getPost($connect, $id) {
  $post = mysqli_query($connect, "SELECT * FROM `products` WHERE `id` = '$id'");

  if(mysqli_num_rows($post) === 0) {
    http_response_code(404);
    $res = [
      "status" => false,
      "messages" => "Post not Found"
    ];
    echo json_encode($res);
  } else {
    $post = mysqli_fetch_assoc($post);
    echo json_encode($post);
  }

}

function addPost($connect, $data, $image) {

  $name = $data['name'];
  $description = $data['description'];
  $price = $data['price'];
  $img = $image['image'];


  if ($img['type'] !== 'image/png' && $img['type'] !== 'image/jpg' && $img['type'] !== 'image/jpeg' && $img['type'] !== 'image/svg') {
    $res = [
      "status" => false,
      "this is not an image"
    ];
    echo json_encode($res);

  } else {

    $fileName = time() . $img['name'];


    $fileUrl = "http://" . $_SERVER['SERVER_ADDR'] . "/uploads/" . $fileName;

    move_uploaded_file($img["tmp_name"], "./uploads/" . $fileName);

    mysqli_query($connect, "INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`) VALUES (NULL, '$name', '$description', '$fileUrl', '$price')");

    http_response_code(201);

     $res = [
      "status" => true,
      "post_id" => mysqli_insert_id($connect)
     ];

     echo json_encode($res);

   }

}
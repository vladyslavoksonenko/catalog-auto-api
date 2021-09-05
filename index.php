<?php

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

require 'connect.php';
require 'functions.php';

$method = $_SERVER['REQUEST_METHOD'];

$route = $_GET['q'];

$params = explode('/', $route);

$type = $params[0];

if (count($params) > 1) {
  $id = $params[1];
}



if ($type !== 'posts') {
  http_response_code(403);
}



if ($method === 'GET') {
  if ($type === 'posts') {
    if (isset($id)) {
       getPost($connect, $id);
    } else {
      getPosts($connect);
    }
  }
}

if ($method === 'POST') {
  if ($type === 'posts') {
    addPost($connect, $_POST, $_FILES);
  }
}








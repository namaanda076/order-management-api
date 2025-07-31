<?php
require_once 'utils/Response.php';
require_once 'controllers/AuthController.php';
require_once 'controllers/ProductController.php';
require_once 'controllers/OrderController.php';

$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$uri = str_replace('/order-management-api', '', $uri);
$method = $_SERVER['REQUEST_METHOD'];
$input = json_decode(file_get_contents('php://input'), true);

switch ("$method $uri") {
    case 'GET /':
        responseJSON(['message' => 'Order Management API Siap!']);
        break;
    case 'POST /login':
        (new AuthController)->login($input);
        break;
    case 'POST /logout':
        (new AuthController)->logout();
        break;
    case 'GET /products':
        (new ProductController)->index();
        break;
    case 'POST /products':
        (new ProductController)->store($input);
        break;
    case 'PUT /products':
        parse_str($_SERVER['QUERY_STRING'], $params);
        (new ProductController)->update($params['id'], $input);
        break;
    case 'DELETE /products':
        parse_str($_SERVER['QUERY_STRING'], $params);
        (new ProductController)->delete($params['id']);
        break;
    case 'POST /orders':
        (new OrderController)->createOrder($input);
        break;
    case 'GET /orders/history':
        (new OrderController)->orderHistory();
        break;
    default:
        responseJSON(['error' => 'Route not found'], 404);
}

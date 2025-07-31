<?php
require_once 'models/Order.php';
require_once 'middleware/AuthMiddleware.php';

class OrderController {
    public function createOrder($data) {
        $user = checkAuth();
        $result = Order::create($user['id'], $data);
        if ($result['success']) {
            responseJSON(['message' => 'Pesanan dibuat']);
        } else {
            responseJSON(['error' => $result['error']], 400);
        }
    }

    public function orderHistory() {
        $user = checkAuth();
        responseJSON(Order::history($user['id']));
    }
}

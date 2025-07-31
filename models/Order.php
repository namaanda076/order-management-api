<?php
require_once 'config/database.php';
require_once 'models/Product.php';

class Order {
    public static function create($userId, $items) {
        global $pdo;
        try {
            $pdo->beginTransaction();
            $stmt = $pdo->prepare("INSERT INTO orders (user_id) VALUES (?)");
            $stmt->execute([$userId]);
            $orderId = $pdo->lastInsertId();

            foreach ($items as $item) {
                $product = Product::find($item['product_id']);
                if (!$product || $product['stock'] < $item['quantity']) {
                    $pdo->rollBack();
                    return ['success' => false, 'error' => 'Product not found or insufficient stock'];
                }
                $stmt = $pdo->prepare("INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (?, ?, ?, ?)");
                $stmt->execute([$orderId, $item['product_id'], $item['quantity'], $product['price']]);

                $stmt = $pdo->prepare("UPDATE products SET stock = stock - ? WHERE id = ?");
                $stmt->execute([$item['quantity'], $item['product_id']]);
            }

            $pdo->commit();
            return ['success' => true];
        } catch (Exception $e) {
            $pdo->rollBack();
            return ['success' => false, 'error' => $e->getMessage()];
        }
    }

    public static function history($userId) {
        global $pdo;
        $stmt = $pdo->prepare("SELECT * FROM orders WHERE user_id = ?");
        $stmt->execute([$userId]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}

<?php
require_once 'models/Product.php';
require_once 'middleware/AuthMiddleware.php';

class ProductController {
    public function index() {
        responseJSON(Product::all());
    }
    
    public function store($data) {
        $user = checkAuth();
        if ($user['role'] !== 'admin') responseJSON(['error' => 'Forbidden'], 403);
        
        if (empty($data['name']) || !is_numeric($data['price']) || !is_numeric($data['stock'])) {
            responseJSON(['error' => 'Invalid input'], 422);
        }
        Product::create($data);
        responseJSON(['message' => 'Produk dibuat']);
    }
    
    public function update($id, $data) {
        $user = checkAuth();
        if ($user['role'] !== 'admin') responseJSON(['error' => 'Forbidden'], 403);
        
        if (empty($data['name']) || !is_numeric($data['price']) || !is_numeric($data['stock'])) {
            responseJSON(['error' => 'Invalid input'], 422);
        }
        Product::update($id, $data);
        responseJSON(['message' => 'Produk diperbarui']);
    }

    public function delete($id) {
        $user = checkAuth();
        if ($user['role'] !== 'admin') responseJSON(['error' => 'Forbidden'], 403);
        Product::delete($id);
        responseJSON(['message' => 'Produk dihapus']);
    }
}

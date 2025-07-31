<?php
require_once 'models/User.php';

class AuthController {
    public function login($data) {
        $user = User::findByUsername($data['username']);
        if (!$user || !password_verify($data['password'], $user['password'])) {
            responseJSON(['error' => 'Invalid credentials'], 401);
        }
        session_start();
        $_SESSION['user'] = ['id' => $user['id'], 'role' => $user['role']];
        responseJSON(['message' => 'Login berhasil']);
    }

    public function logout() {
        session_start();
        session_destroy();
        responseJSON(['message' => 'Logout berhasil']);
    }
}

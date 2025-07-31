<?php
function checkAuth() {
    session_start();
    if (!isset($_SESSION['user'])) {
        responseJSON(['error' => 'Unauthorized'], 401);
    }
    return $_SESSION['user'];
}
function isAdmin() {
    $user = checkAuth();
    if ($user['role'] !== 'admin') {
        responseJSON(['error' => 'Forbidden'], 403);
    }
    return $user;
}

<?php
// Simple router to serve static files and route API requests to index.php
$uri = urldecode(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));
$file = __DIR__ . $uri;

if ($uri !== '/' && file_exists($file)) {
    return false; // serve the requested resource as-is
}

// For all other requests, route to index.php in the root if exists
$index = __DIR__ . '/index.php';
if (file_exists($index)) {
    require $index;
} else {
    http_response_code(404);
    echo "Not Found";
}

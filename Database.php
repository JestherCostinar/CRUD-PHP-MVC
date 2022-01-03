<?php

namespace app;

use PDO;
use app\models\Product;

class Database
{
    public PDO $pdo;
    public static Database $db;

    public function __construct()
    {
        $this->pdo = new PDO('mysql:host=localhost;dbname=products_crud', 'root', '');
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        self::$db = $this;
    }

    public function getProducts($search = '')
    {
        if ($search) {
            $statement = $this->pdo->prepare("SELECT * FROM products WHERE title like :title ORDER BY create_date");
            $statement->bindValue(":title", "%$search%");
        } else {
            $statement = $this->pdo->prepare("SELECT * FROM products ORDER BY create_date");
        }
        $statement->execute();
        return $statement->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getProductById($id)
    {
        $fetchProduct = $this->pdo->prepare('SELECT * FROM products WHERE id = :id');
        $fetchProduct->bindValue(':id', $id);
        $fetchProduct->execute();
        return $fetchProduct->fetch(PDO::FETCH_ASSOC);
    }

    public function createProduct(Product $product)
    {
        $statement = $this->pdo->prepare("INSERT INTO products(image, title, description, price, create_date)
        VALUES (:image, :title, :description, :price, :date)");
        $statement->bindValue(':image', $product->imagePath);
        $statement->bindValue(':title', $product->title);
        $statement->bindValue(':description', $product->description);
        $statement->bindValue(':price', $product->price);
        $statement->bindValue(':date', date('Y-m-d h:i:s'));
        $statement->execute();
    }

    public function deleteProduct($id)
    {
        $statement = $this->pdo->prepare("DELETE FROM products WHERE id = :id");
        $statement->bindValue('id', $id);
        $statement->execute();
    }

    public function updateProduct(Product $product) {
        $updateProduct = $this->pdo->prepare("UPDATE products SET title = :title, image = :image, 
        description = :description, price = :price WHERE id = :id");
        $updateProduct->bindValue(':title', $product->title);
        $updateProduct->bindValue(':image', $product->imagePath);
        $updateProduct->bindValue(':description', $product->description);
        $updateProduct->bindValue(':price', $product->price);
        $updateProduct->bindValue(':id', $product->id);
        $updateProduct->execute();
    }
}

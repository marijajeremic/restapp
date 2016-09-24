<?php

namespace Core;

/**
 * Created by PhpStorm.
 * User: Marija
 * Date: 18.9.2016.
 * Time: 16.42
 */
abstract class Model
{
    protected $database;

    protected $tableName;

    protected $primaryKey = 'id';

    public function __construct()
    {
        $this->database = Connect::getConnection();
    }

    public function deleteById($id)
    {
        if (empty($this->tableName) || empty($this->primaryKey)) {
            throw new \Exception('Missing table name or primary key');
        }

        $statement = $this->database->prepare("DELETE FROM `{$this->tableName}` WHERE `{$this->primaryKey}` = ?");

        $statement->execute([$id]);

        return (bool) $statement->rowCount();
    }

    public function getBy(array $data)
    {
        if (empty($this->tableName) || empty($this->primaryKey)) {
            throw new \Exception('Missing table name or primary key');
        }

        $query = "SELECT * FROM `{$this->tableName}` WHERE ";

        $criteria = [];

        foreach ($data as $field => $value) {
            $criteria[] = "`{$field}` = ?";
        }

        $query .= implode(' AND ', $criteria);

        $statement = $this->database->prepare($query);

        if (false === $statement) {
            throw new \PDOException('Cannot prepare query.');
        }

        if (false === $statement->execute(array_values($data))) {
            throw new \PDOException('Invalid query. ' . $query);
        }

        return $statement->fetch(\PDO::FETCH_ASSOC);
    }

    public function getById($id)
    {
        if (empty($this->tableName) || empty($this->primaryKey)) {
            throw new \Exception('Missing table name or primary key');
        }

        $query = "SELECT * FROM `{$this->tableName}` WHERE `{$this->primaryKey}` = ? LIMIT 1;";

        $statement = $this->database->prepare($query);

        if (false === $statement) {
            throw new \PDOException('Cannot prepare query.');
        }

        if (false === $statement->execute([$id])) {
            throw new \PDOException('Invalid query. ' . $query);
        }

        return $statement->fetch(\PDO::FETCH_ASSOC);
    }

    public function getAll(array $data)
    {
        if (empty($this->tableName) || empty($this->primaryKey)) {
            throw new \Exception('Missing table name or primary key');
        }

        $query = "SELECT * FROM `{$this->tableName}` WHERE ";

        $criteria = [];

        foreach ($data as $field => $value) {
            $criteria[] = "`{$field}` = ?";
        }

        $query .= implode(' OR ', $criteria);

        $statement = $this->database->prepare($query);

        if (false === $statement) {
            throw new \PDOException('Cannot prepare query.');
        }

        if (false === $statement->execute(array_values($data))) {
            throw new \PDOException('Invalid query. ' . $query);
        }

        return $statement->fetchAll(\PDO::FETCH_ASSOC);
    }

   

    public function insert(array $data)
    {
        if (empty($this->tableName) || empty($this->primaryKey)) {
            throw new \Exception('Missing table name or primary key');
        }

        $query = "INSERT INTO `{$this->tableName}` (`" . implode('`, `', array_keys($data)) . "`) VALUES";

        $placeholders = [];

        for ($count = 0; $count < count($data); $count++) {
            $placeholders[] = '?';
        }

        $query .= '(' . implode(', ', $placeholders) . ')';

        $statement = $this->database->prepare($query);

        if (false === $statement) {
            throw new \PDOException('Cannot prepare query.');
        }

        if (false === $statement->execute(array_values($data))) {
            throw new \PDOException('Invalid query. ' . $query);
        }

        return $statement->rowCount();
    }

    public function update(array $data, $id)
    {
        if (empty($this->tableName) || empty($this->primaryKey)) {
            throw new \Exception('Missing table name or primary key');
        }

        $query = "UPDATE `{$this->tableName}` SET ";
        $criteria = [];

        foreach ($data as $field => $value) {
            $criteria[] = "`{$field}` = ?";
        }
        $query .= implode(', ', $criteria) ." WHERE `{$this->primaryKey}` = ?" ;



        $statement = $this->database->prepare($query);
        if (false === $statement) {
            throw new \PDOException('Cannot prepare query.');
        }

        $data = array_values($data);

        $data[] = $id;

        if (false === $statement->execute($data)) {
            throw new \PDOException('Invalid query. ' . $query);
        }

        return $statement->rowCount();

    }

    public function deleteBy(array $data)
    {
        $query = "DELETE FROM `{$this->tableName}` WHERE";

        $criteria = [];

        foreach ($data as $field => $value) {
            $criteria[] = "`{$field}` = ?";
        }

        $query .= implode(' AND ', $criteria);

        $statement = $this->database->prepare($query);

        if (false === $statement) {
            throw new \PDOException('Cannot prepare query.');
        }

        if (false === $statement->execute(array_values($data))) {
            throw new \PDOException('Invalid query. ' . $query);
        }

        return $statement->rowCount();
    }
}
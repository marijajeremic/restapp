<?php

namespace Models;

use Core\Model;

/**
 * Created by PhpStorm.
 * User: Marija
 * Date: 18.9.2016.
 * Time: 15.49
 */
class Article extends Model
{
    const DEFAULT_RESULTS_PER_PAGE = 10;

    protected $tableName = 'articles';

    public function getPaginationData($resultsPerPage, $userId = null)
    {
        if (0 >= $resultsPerPage) {
            $resultsPerPage = Article::DEFAULT_RESULTS_PER_PAGE;
        }

        $query = 'SELECT COUNT(`id`) as total_articles FROM `articles`';

        if ($userId) {
            $query .= ' WHERE `user_id` = ?;';
        }

        $statement = $this->database->prepare($query);

        if (false === $statement) {
            throw new \PDOException('Cannot prepare query.');
        }

        if (false === $statement->execute([$userId])) {
            throw new \PDOException('Invalid query. ' . $query);
        }

        $data = $statement->fetch(\PDO::FETCH_ASSOC);

        return [
            'total_pages' => ceil($data['total_articles'] / $resultsPerPage),
            'total_articles' => (int) $data['total_articles']
        ];
    }

    public function getPaginatedArticles($page, $resultsPerPage = Article::DEFAULT_RESULTS_PER_PAGE, $userId = null)
    {
        if (null === $resultsPerPage) {
            $resultsPerPage = Article::DEFAULT_RESULTS_PER_PAGE;
        }

        $query = 'SELECT * FROM `articles`';

        if ($userId) {
            $query .= ' WHERE `user_id` = ?';
        }

        $startIndex = ($page - 1) * $resultsPerPage;

        $query .= " ORDER BY `id` DESC LIMIT {$startIndex}, $resultsPerPage";

        $statement = $this->database->prepare($query);

        if (false === $statement) {
            throw new \PDOException('Cannot prepare query.');
        }

        if (false === $statement->execute([$userId])) {
            throw new \PDOException('Invalid query. ' . $query);
        }

        return $statement->fetchAll(\PDO::FETCH_ASSOC);
    }

   public function getArticles()
   {
       $query = $this->database->prepare('SELECT * FROM articles  ORDER BY `id` DESC LIMIT 5');
       
       if($query && $query->execute([])){
           return $query->fetchAll(\PDO::FETCH_ASSOC);
       }
       return null;
   }    

}
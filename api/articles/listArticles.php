<?php
/**
 * Created by PhpStorm.
 * User: Marija
 * Date: 18.9.2016.
 * Time: 18.34
 */

$userId = filter_input(INPUT_GET, 'user_id');

$page = filter_input(INPUT_GET, 'page');

$resultsPerPage = filter_input(INPUT_GET, 'resultsPerPage');

if($page <= 1){
    $page = 1;
}

$article = new \Models\Article();

$articles = $article->getPaginatedArticles($page, $resultsPerPage, $userId);

$paginationData = $article->getPaginationData($resultsPerPage, $userId);

$data = [
    'articles' => $articles,
    'pagination' => $paginationData,
    'page' => $page,
    'results_per_page' => $resultsPerPage ? $resultsPerPage : \Models\Article::DEFAULT_RESULTS_PER_PAGE
];

echo json_encode($data);

return http_response_code(200);
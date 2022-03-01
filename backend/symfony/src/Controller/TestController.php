<?php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class LuckyController
{
    /**
     * @Route("/teste", name="test")
     */
    public function rotanaointeressa(): Response {

        return new JsonResponse(array('username' => 'jane.doe'));
    }
}
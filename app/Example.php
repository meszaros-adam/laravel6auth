<?php
namespace App;

Class Example {

    protected $apiKey;

    public function __construct($apiKey)
    {
    $this->apiKey = $apiKey;
    }


    public static function handle()
    {
        die('it works!');
    }

}

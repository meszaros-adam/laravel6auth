<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Example;
use App\Collaborator;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
{

    /*$this->app->bind('example', function () {
        return new Example();
    });*/

    $this->app->bind(Example::class, function () {
        return new Example('api-key');
    });
            
            
            
    
}


    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}

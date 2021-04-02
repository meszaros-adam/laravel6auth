<?php

namespace App\Providers;

use App\User;
use App\Example;
use App\Collaborator;
use App\Conversation;
use Illuminate\Support\Facades\Gate;
use Illuminate\Database\Schema\Builder;
use Illuminate\Support\ServiceProvider;

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
        /*Gate::define('update-conversation', function(User $user, Conversation $conversation) {
            return $conversation->user->is($user);
            });*/
            Builder::defaultStringLength(191);
    }
}

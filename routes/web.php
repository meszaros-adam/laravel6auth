<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*app()->bind('example', function () {
    //return new \App\Example();
    $foo = config('services.foo');
    return new \App\Example($foo);
    });*/
    
    

/*Route::get('/', function () {
    $container = new \App\Container();
    $container->bind('example', function (){
    return new \App\Example();
    });
    $example = $container->resolve('example');
 
    $example->go();
    });*/

/*Route::get('/', function(App\Example $example){
    //$example = resolve('example');
    
    //$example = resolve(App\Example::class);
    ddd($example);
});*/

/*app()->bind('App\Example', function () {
    $collaborator = new \App\Collaborator();
    $foo = 'foobar';
    return new \App\Example($collaborator, $foo);
    });*/
    

Route::get('/', 'PagesController@home');
    


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

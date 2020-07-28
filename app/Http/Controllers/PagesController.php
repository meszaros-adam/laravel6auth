<?php
 
namespace App\Http\Controllers;
 
use App\Example;
//use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Filesystem\Filesystem;
 
class PagesController extends Controller
{
    public function home(Filesystem $file)
    {
        //ddd(resolve('App\Example'), resolve('App\Example'));
        //return view('welcome');
        //return View::make('welcome');
        //return request('name');
        //return Request::input('name');
        //return File::get(public_path('index.php'));
        //return \File::get(public_path('index.php'));
        return $file->get(public_path('index.php'));
    }
}

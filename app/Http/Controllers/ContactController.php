<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Mail;
use App\Mail\ContactMe;
use App\Mail\Contact;

class ContactController extends Controller
{
    public function show()
    {
        return view('contact');
    }
    public function store()
    {
        request()->validate(['email' => 'required|email']);
        
        /*$email = request('email');
        dd($email);*/

        /*Mail::raw('It works!', function ($message) {
            $message->to(request('email'))
                           ->subject('Hello there!');
            });*/

            //Mail::to(request('email'))->send(new ContactMe('shirts'));
            Mail::to(request('email'))->send(new Contact());

            return redirect('/contact')
                ->with('message', 'Email sent!');
                
    }
}

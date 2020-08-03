<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Notification;
use App\Notifications\PaymentReceived;
use Illuminate\Http\Request;
use App\Events\ProductPurchased;

class PaymentsController extends Controller
{
    public function create()
    {
    return view('payments.create');
    }

    public function store()
    {
    //Notification::send(request()->user(), new PaymentReceived());
    //request()->user()->notify(new PaymentReceived(900));
    ProductPurchased::dispatch('toy');
    }


}

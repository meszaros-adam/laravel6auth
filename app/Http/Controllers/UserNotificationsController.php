<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserNotificationsController extends Controller
{
    public function show()
    {
    //return view('notifications.show');

    $notifications = auth()->user()->unreadNotifications;

    /*foreach ($notifications as $notification) {
        $notification->markAsRead();
        }*/
    
    //$notifications->markAsRead();
        

    //return view('notifications.show')->with(compact('notifications'));

    $notifications = tap(auth()->user()->unreadNotifications)->markAsRead();
    return view('notifications.show', [
    'notifications' => $notifications
    ]);

        
    }

}

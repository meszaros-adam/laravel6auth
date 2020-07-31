<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
    * Route notifications for the Slack channel.
    *
    * @param  \Illuminate\Notifications\Notification  $notification
    * @return string
    */
    public function routeNotificationForSlack($notification)
    {
    return 'https://hooks.slack.com/services/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';
    }

}

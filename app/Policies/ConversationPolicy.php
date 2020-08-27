<?php

namespace App\Policies;

use App\Conversation;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class ConversationPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view the conversation.
     *
     * @param  \App\User  $user
     * @param  \App\Conversation  $conversation
     * @return mixed
     */
    
    public function update(User $user, Conversation $conversation)
    {
        //ddd('hello');
        return $conversation->user->is($user);

    }
    /*public function before(User $user)
    {
    if($user->id == 1) // admin
    return true;    
    }*/
   
}

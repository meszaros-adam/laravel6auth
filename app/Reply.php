<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reply extends Model
{
    public function user()
{
return $this->belongsTo(User::class, 'user_id');
}
 
public function conversation()
{
return $this->belongsTo(Conversation::class, 'conversation_id');
}

public function isBest()
{
return $this->id == $this->conversation->best_reply_id;
}


}

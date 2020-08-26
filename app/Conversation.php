<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Conversation extends Model
{
    public function user()
{
return $this->belongsTo(User::class, 'user_id');
}
 
public function replies()
{
return $this->hasMany(Reply::class);
}

public function best_reply()
{
return $this->belongsTo(Reply::class, 'best_reply_id');
}

public function setBestReply(Reply $reply)
{
$this->best_reply_id = $reply->id;
$this->save();
}


}

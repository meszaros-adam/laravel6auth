<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Reply;
use Illuminate\Support\Facades\Gate;

class ConversationBestReplyController extends Controller
{
    public function Store(Reply $reply){
        $this->authorize('update', $reply->conversation);                    
        //$reply->conversation->best_reply_id = $reply->id;
        //$reply->conversation->save();
        $reply->conversation->setBestReply($reply);
        return back();
    }
}

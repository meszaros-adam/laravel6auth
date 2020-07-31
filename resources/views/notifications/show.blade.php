@extends('layouts.app')
 
@section('content')
<div class="container">
show all notifications for the user
@forelse($notifications as $notification)
@if($notification->data != null)
<li>We have received a payment of ${{ $notification->data['amount'] / 100 }} from you.</li>
@endif
@empty
<li>You have no unread notifications at this time.</li>
@endforelse
</ul>
</div>
@endsection

<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use Illuminate\Notifications\Messages\SlackMessage;

class PaymentReceived extends Notification
{
    protected $amount;

    use Queueable;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($amount)
    {
    $this->amount = $amount;
    }


    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail', 'database', 'slack'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        /*return (new MailMessage)
                    ->line('The introduction to the notification.')
                    ->action('Notification Action', url('/'))
                    ->line('Thank you for using our application!');*/
        return (new MailMessage)
            ->subject('Your GAIN BI Payment was received')
            ->greeting("What's up?")
            ->line('The introduction to the notification.')
            ->line('Lorem ipsum dolor sit amet, ...')
            ->action('Sign Up', url('/'))
            ->line('Thanks!');
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            
            'amount' => $this->amount            
                
        ];
    }
    /**
    * Get the Slack representation of the notification.
    *
    * @param  mixed  $notifiable
    * @return SlackMessage
    */
    public function toSlack($notifiable)
    {
    return (new SlackMessage)
    ->from('GAIN BI website')
    ->image('https://laravel.com/img/favicon/favicon.ico')
    ->content('One of your invoices has been paid!');
    }


    
}

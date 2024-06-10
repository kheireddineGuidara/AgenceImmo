<?php

namespace App\Listeners;

use App\Events\ContactRequestEvent;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailer;
use Illuminate\Queue\InteractsWithQueue;
use App\Mail\PropertyContactMail;

class ContactListener
{
    public function __construct(private Mailer $mailer)
    {
    }

    public function handle(ContactRequestEvent $event): void
    {
        $this->mailer->send(new PropertyContactMail($event->property, $event->data));
    }
}

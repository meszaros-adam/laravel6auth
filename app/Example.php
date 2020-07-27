<?php
namespace App;
Class Example {

    protected $foo;
 
    /*public function __construct($foo)
    {
    $this->foo = $foo;
    }*/

    protected $collaborator;
 
    public function __construct(Collaborator $collaborator, $foo)
    {
    $this->collaborator = $collaborator;
    $this->foo = $foo;
    }

    public function go()
    {
    dump('it works!');
    }

}

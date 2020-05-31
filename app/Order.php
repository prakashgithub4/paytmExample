<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    //
    protected $fillable = ['order_id', 'status', 'transaction_id', 'price'];
    public $timestamp;
}

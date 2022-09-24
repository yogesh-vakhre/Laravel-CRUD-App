<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    use HasFactory;
    
    /**
     * The attributes that are mass assignable.
     * @author yogesh 
     * @var array<int, string>
     */
    protected $fillable = [
        'address',
        'city',
        'state',
        'pincode',
    ];

}

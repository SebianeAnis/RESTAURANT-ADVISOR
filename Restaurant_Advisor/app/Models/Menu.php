<?php

namespace App\Models;

use App\Models\Restaurant;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
        'price',
        'updated_at', 
        'created_at',
        
    ];    

    public function restaurant(){

        return $this->belongsTo(Restaurant::class);
    }

}

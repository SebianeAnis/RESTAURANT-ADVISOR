<?php

namespace App\Models;

use App\Models\Menu;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Restaurant extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'name',
        'description',
        'grade',
        'localization',
        'phone_number',
        'website',
        'hours',
        'updated_at',
        'created_at',
    ];

    public function menus(){

        return $this->hasMany(Menu::class);
    }
}

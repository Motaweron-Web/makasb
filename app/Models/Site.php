<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Site extends Model
{
    use HasFactory;
    protected $guarded = [];



    ### Relations ###
    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }

    public function type(){
        return $this->belongsTo(SiteType::class,'site_type');
    }

    public function views(){
        return $this->hasMany(SiteInfo::class,'site_id');
    }


    ### Scopes ###
    public function scopeAvailableRows($query)
    {
        return $query->where('user_id', '<>', Auth::id())
            ->orWhere('needed_clicks', 0)
            ->orWhere('status',0);
    }

}

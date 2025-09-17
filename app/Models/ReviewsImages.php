<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ReviewsImages extends Model
{
    use HasFactory;

    protected $fillable = ["review_id", "image"];

    public function image()
    {
        if ($this->image) {
            return asset("storage/" . config('constants.reviews_path') . "/" . $this->image);
        }
        return false;
    }


}

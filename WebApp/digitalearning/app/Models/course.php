<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

/**
 * Class Course
 * @package App\Models
 * @version February 15, 2022, 6:23 pm UTC
 *
 * @property integer $category_id
 * @property string $title
 * @property string $sub_title
 * @property string $description
 * @property string $about_instructor
 * @property string $url
 * @property integer $view_count
 */
class Course extends Model
{
    use SoftDeletes;

    use HasFactory;

    public $table = 'courses';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];



    public $fillable = [
        'category_id',
        'title',
        'sub_title',
        'description',
        'about_instructor',
        'url',
        'view_count'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'category_id' => 'integer',
        'title' => 'string',
        'sub_title' => 'string',
        'description' => 'string',
        'about_instructor' => 'string',
        'url' => 'string',
        'view_count' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'category_id' => 'nullable|integer',
        'title' => 'required|string|max:191',
        'sub_title' => 'nullable|string|max:191',
        'description' => 'required|string',
        'about_instructor' => 'nullable|string',
        'url' => 'required|string|max:191',
        'view_count' => 'required|integer',
        'deleted_at' => 'nullable',
        'created_at' => 'nullable',
        'updated_at' => 'nullable'
    ];

    public function category(){
        return $this->belongsTo('App\Models\Category');
    }

    public function user(){
        return $this->belongsTo('App\Models\User');
    }
    
}

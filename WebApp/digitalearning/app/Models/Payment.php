<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

/**
 * Class Payment
 * @package App\Models
 * @version February 2, 2022, 4:03 pm UTC
 *
 * @property integer $user_id
 * @property integer $category_id
 * @property integer $course_id
 * @property number $amount
 * @property string $status
 * @property string $mode of payment
 * @property string $payment_processor
 */
class Payment extends Model
{
    use SoftDeletes;

    use HasFactory;

    public $table = 'payments';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];



    public $fillable = [
        'user_id',
        'category_id',
        'course_id',
        'amount',
        'status',
        'mode of payment',
        'payment_processor'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'user_id' => 'integer',
        'category_id' => 'integer',
        'course_id' => 'integer',
        'amount' => 'float',
        'status' => 'string',
        'mode of payment' => 'string',
        'payment_processor' => 'string'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'user_id' => 'required|integer',
        'category_id' => 'nullable|integer',
        'course_id' => 'nullable|integer',
        'amount' => 'required|numeric',
        'status' => 'required|string|max:191',
        'mode of payment' => 'nullable|string|max:191',
        'payment_processor' => 'nullable|string|max:191',
        'deleted_at' => 'nullable',
        'created_at' => 'nullable',
        'updated_at' => 'nullable'
    ];

    
}

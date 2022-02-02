<?php

namespace App\Repositories;

use App\Models\course;
use App\Repositories\BaseRepository;

/**
 * Class courseRepository
 * @package App\Repositories
 * @version February 2, 2022, 4:01 pm UTC
*/

class courseRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'user_id',
        'category_id',
        'title',
        'description',
        'about_instructor',
        'discount_price',
        'actual_price',
        'playlist_url',
        'view_count',
        'subscriber_count',
        'status',
        'photo'
    ];

    /**
     * Return searchable fields
     *
     * @return array
     */
    public function getFieldsSearchable()
    {
        return $this->fieldSearchable;
    }

    /**
     * Configure the Model
     **/
    public function model()
    {
        return course::class;
    }
}

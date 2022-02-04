<?php

namespace App\Repositories;

use App\Models\View;
use App\Repositories\BaseRepository;

/**
 * Class ViewRepository
 * @package App\Repositories
 * @version February 4, 2022, 2:14 pm UTC
*/

class ViewRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'user_id',
        'user_account_id',
        'category_id',
        'course_id',
        'item_id'
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
        return View::class;
    }
}

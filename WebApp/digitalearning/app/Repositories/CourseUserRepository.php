<?php

namespace App\Repositories;

use App\Models\CourseUser;
use App\Repositories\BaseRepository;

/**
 * Class CourseUserRepository
 * @package App\Repositories
 * @version February 15, 2022, 6:25 pm UTC
*/

class CourseUserRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'user_id',
        'course_id',
        'user_account_id',
        'status'
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
        return CourseUser::class;
    }
}

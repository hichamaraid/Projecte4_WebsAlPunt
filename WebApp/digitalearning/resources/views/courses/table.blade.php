<div class="table-responsive">
    <table class="table" id="courses-table">
        <thead>
        <tr>
            <th>Category Id</th>
        <th>Title</th>
        <th>Sub Title</th>
        <th>Description</th>
        <th>About Instructor</th>
        <th>Url</th>
        <th>View Count</th>
            <th colspan="3">Action</th>
        </tr>
        </thead>
        <tbody>
        @foreach($courses as $course)
            <tr>
                <td>{{ $course->category_id }}</td>
            <td>{{ $course->title }}</td>
            <td>{{ $course->sub_title }}</td>
            <td>{{ $course->description }}</td>
            <td>{{ $course->about_instructor }}</td>
            <td>{{ $course->url }}</td>
            <td>{{ $course->view_count }}</td>
                <td width="120">
                    {!! Form::open(['route' => ['courses.destroy', $course->id], 'method' => 'delete']) !!}
                    <div class='btn-group'>
                        <a href="{{ route('courses.show', [$course->id]) }}"
                           class='btn btn-default btn-xs'>
                            <i class="far fa-eye"></i>
                        </a>
                        <a href="{{ route('courses.edit', [$course->id]) }}"
                           class='btn btn-default btn-xs'>
                            <i class="far fa-edit"></i>
                        </a>
                        {!! Form::button('<i class="far fa-trash-alt"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                    </div>
                    {!! Form::close() !!}
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>

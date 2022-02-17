<div class="table-responsive">
    <table class="table" id="courses-table">
        <thead>
        <tr>

            
        <th>Titol</th>
        <th>Descripció</th>
        <th>Url
        @if(Auth::user()->role_id == 1)   
        </th>

      
            <th colspan="3">Action</th>
        </tr>

        @endif
        @if(Auth::user()->role_id == 2)   
        </th>
            <th colspan="3">Action</th>
        </tr>

        @endif
        </thead>
        <tbody>
        @foreach($courses as $course)
            <tr>
                

                <a href="{!! route('courses.show', [$course->id]) !!}"></a>
            <td>{{ $course->title }}</td>
            <td>{{ $course->description }}</td>
            <td>{{ $course->url }}</td>
            @if(Auth::user()->role_id == 1)   

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
                @endif

                @if(Auth::user()->role_id == 2)   

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
@endif
    
            </tr>
        @endforeach
        </tbody>
    </table>
</div>

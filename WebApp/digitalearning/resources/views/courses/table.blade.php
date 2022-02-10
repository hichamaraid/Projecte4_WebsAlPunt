<div class="table-responsive">
    <table class="table" id="courses-table">
        <thead>
        <tr>
        <th>Category Id</th>
        <th>Description</th>
    
        <th>Discount Price</th>
        <th>Actual Price</th>
        @if(Auth::user()->role_id == 1 )
            <th colspan="3">Action</th>
        @endif 
        @if(Auth::user()->role_id == 3 )
            <th colspan="3"></th>
        @endif
        </tr>
        </thead>
        <tbody>
        @foreach($courses as $course)
            <tr>
               <td>{{ $course->photo }}</td>
            <td>
                <h2> <a href="{!! route('courses.show',[$course->id])!!}">{{ $course->title }}</a> </h2> <br>
            
             <div class="text">Author: {{$course->user['name']}} </div>   
                <br>
                {!! $course->sub_title !!}
            </td>
            

            <td > {{ $course->discount_price }} €</td>
            <td><del>{{ $course->actual_price }} €</del></td>
               
            
            <td width="120">
                @if(Auth::user()->role_id == 1 || $course->user_id == Auth::user()->id)
                    {!! Form::open(['route' => ['courses.destroy', $course->id], 'method' => 'delete']) !!}
                    <div class='btn-group'>
                       
                        <a href="{{ route('courses.edit', [$course->id]) }}"
                           class='btn btn-default btn-xs'>
                            <i class="far fa-edit"></i>
                        </a>
                        {!! Form::button('<i class="far fa-trash-alt"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                    </div>
                    {!! Form::close() !!}
                @endif    
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>

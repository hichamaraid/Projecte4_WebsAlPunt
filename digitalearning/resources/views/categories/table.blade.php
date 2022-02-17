<div class="card-columns">

        @foreach($categories as $category)



        
        <div class="card">  
  <img src="https://digitallearning.eletsonline.com/wp-content/uploads/2018/12/digital-learning.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">{{ $category->name }}</h5>
    <p class="card-text">
<?php
echo \Illuminate\Support\Str::limit($category->description ?? '',150,' ...');
?>

    </p>
  
  </div>
  
  <div class="card-footer">
  
 
    {!! Form::open(['route' => ['categories.destroy', $category->id], 'method' => 'delete']) !!}
                    <div class='btn-group'>
                    <a href="{!! route('categories.show',[$category->id]) !!}" class="btn btn-primary mr-5">View Category</a>

                    @if (Auth::user()->role_id == 1)

                    <a href="{{ route('categories.edit', [$category->id]) }}"
                           class='btn btn-default   mr-3'>
                            <i class="far fa-edit"></i>
                        </a>
                        {!! Form::button('<i class="far fa-trash-alt"></i>', ['type' => 'submit', 'class' => 'btn btn-danger', 'onclick' => "return confirm('Are you sure?')"]) !!}
                    
                    {!! Form::close() !!}

                    @endif
                      
                    @if (Auth::user()->role_id == 2)
                        <a href="{{ route('categories.edit', [$category->id]) }}"
                           class='btn btn-default   mr-3'>
                            <i class="far fa-edit"></i>
                        </a>
                        {!! Form::button('<i class="far fa-trash-alt"></i>', ['type' => 'submit', 'class' => 'btn btn-danger', 'onclick' => "return confirm('Are you sure?')"]) !!}
                  
                    {!! Form::close() !!}

                    @endif
</div>
  </div>
  </div>
@endforeach
</div>
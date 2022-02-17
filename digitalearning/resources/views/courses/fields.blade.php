<!-- User Id Field

<div class="form-group col-sm-6" >
    {!! Form::label('category_id', 'Category Id:') !!}
    {!! Form::number('category_id', null, ['class' => 'form-control']) !!}
</div>
-->

<div class="form-group col-sm-6" style="display:none;">
    {!! Form::label('user_id', 'Id Usuari:') !!}
    {!! Form::number('user_id', null, ['class' => 'form-control']) !!}
</div>


<div class="form-group  col-md-12">
  <label for="category_id">Category:</label>
  <select class="form-control" name="category_id" id="category_id">
    
    @if(isset($course))
        <option value="{{ $course->category['id'] }}" > {{ $course->category['name'] }} </option>
    @endif
   @foreach($categories as $category)
          <option value="{{ $category->id }}" > {{ $category->name }} </option>
    @endforeach
  </select>
</div>





<!-- Title Field -->
<div class="form-group col-sm-6">
    {!! Form::label('title', 'Title:') !!}
    {!! Form::text('title', null, ['class' => 'form-control','maxlength' => 191,'maxlength' => 191]) !!}
</div>

<!-- Sub Title Field -->
<div class="form-group col-sm-6">
    {!! Form::label('sub_title', 'SubTitle:') !!}
    {!! Form::text('sub_title', null, ['class' => 'form-control','maxlength' => 191,'maxlength' => 191]) !!}
</div>

<!-- Description Field -->
<div class="form-group col-sm-12 col-lg-8">
    {!! Form::label('description', 'Description:') !!}
    {!! Form::textarea('description', null, ['class' => 'form-control']) !!}
</div>

<!-- About Instructor Field -->
<div class="form-group col-sm-12 col-lg-12">
    {!! Form::label('about_instructor', 'About Instructor:') !!}
    {!! Form::textarea('about_instructor', null, ['class' => 'form-control']) !!}
</div>

<!-- Url Field -->
<div class="form-group col-sm-6">
    {!! Form::label('url', 'Url:') !!}
    {!! Form::text('url', null, ['class' => 'form-control','maxlength' => 191,'maxlength' => 191]) !!}
</div>

<!-- View Count Field -->
<div class="form-group col-sm-6" style="display:none;">
    {!! Form::label('view_count', 'View Count:') !!}
    {!! Form::number('view_count', 0, ['class' => 'form-control']) !!}
</div>
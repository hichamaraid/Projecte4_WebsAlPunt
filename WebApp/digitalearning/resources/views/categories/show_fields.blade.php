<!-- Name Field -->
<div class="col-sm-12">
    {!! Form::label('name', 'Name:') !!}
    <p>{{ $category->name }}</p>
</div>

<!-- Description Field -->
<div class="col-sm-12">
    {!! Form::label('description', 'Description:') !!}
    <p>{{ $category->description }}</p>
</div>

<!-- Views Count Field -->
<div class="col-sm-12">
    {!! Form::label('views_count', 'Views Count:') !!}
    <p>{{ $category->views_count }}</p>
</div>


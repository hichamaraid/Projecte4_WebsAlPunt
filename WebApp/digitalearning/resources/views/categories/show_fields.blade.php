<!-- Name Field -->
<div class="col-sm-12">
    {!! Form::label('name', 'Nom:') !!}
    <p>{{ $category->name }}</p>
</div>

<!-- Description Field -->
<div class="col-sm-12">
    {!! Form::label('description', 'Descripció:') !!}
    <p>{{ $category->description }}</p>
</div>


<!-- Views Count Field -->
<div class="col-sm-12" style="display:none;">
    {!! Form::label('views_count', 'Vegades Vist:') !!}
    <p>{{ $category->views_count }}</p>
</div>



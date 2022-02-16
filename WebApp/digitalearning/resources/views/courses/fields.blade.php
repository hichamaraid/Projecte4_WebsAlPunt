<!-- Category Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('category_id', 'Category Id:') !!}
    {!! Form::number('category_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Title Field -->
<div class="form-group col-sm-6">
    {!! Form::label('title', 'Title:') !!}
    {!! Form::text('title', null, ['class' => 'form-control','maxlength' => 191,'maxlength' => 191]) !!}
</div>

<!-- Sub Title Field -->
<div class="form-group col-sm-6">
    {!! Form::label('sub_title', 'Sub Title:') !!}
    {!! Form::text('sub_title', null, ['class' => 'form-control','maxlength' => 191,'maxlength' => 191]) !!}
</div>

<!-- Description Field -->
<div class="form-group col-sm-12 col-lg-12">
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
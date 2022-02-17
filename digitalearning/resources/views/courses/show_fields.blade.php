<!-- Category Id Field -->
<div class="col-sm-12">
    {!! Form::label('category_id', 'Category Id:') !!}
  <a href="/categories/{!! $course->category['id']!!}"><p>{{ $course->category_id }}</p></a>
</div>

<!-- Title Field -->
<div class="col-sm-12">
    {!! Form::label('title', 'Title:') !!}
    <p>{{ $course->title }}</p>
</div>

<!-- Sub Title Field -->
<div class="col-sm-12">
    {!! Form::label('sub_title', 'Sub Title:') !!}
    <p>{{ $course->sub_title }}</p>
</div>

<!-- Description Field -->
<div class="col-sm-12">
    {!! Form::label('description', 'Description:') !!}
    <p>{{ $course->description }}</p>
</div>

<!-- About Instructor Field -->
<div class="col-sm-12">
    {!! Form::label('about_instructor', 'About Instructor:') !!}
    <p>{{ $course->about_instructor }}</p>
</div>

<!-- Url Field -->
<div class="col-sm-12">
    {!! Form::label('url', 'Url:') !!}
    <p>{{ $course->url }}</p>
</div>

<!-- View Count Field -->
<div class="col-sm-12" style="display:none;">
    {!! Form::label('view_count', 'View Count:') !!}
    <p>{{ $course->view_count }}</p>
</div>


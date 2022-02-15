<!-- User Id Field -->
<div class="col-sm-12">
    {!! Form::label('user_id', 'User Id:') !!}
    <p>{{ $courseUser->user_id }}</p>
</div>

<!-- Course Id Field -->
<div class="col-sm-12">
    {!! Form::label('course_id', 'Course Id:') !!}
    <p>{{ $courseUser->course_id }}</p>
</div>

<!-- User Account Id Field -->
<div class="col-sm-12">
    {!! Form::label('user_account_id', 'User Account Id:') !!}
    <p>{{ $courseUser->user_account_id }}</p>
</div>

<!-- Status Field -->
<div class="col-sm-12">
    {!! Form::label('status', 'Status:') !!}
    <p>{{ $courseUser->status }}</p>
</div>


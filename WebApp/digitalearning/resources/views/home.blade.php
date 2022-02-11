@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
    @if(Auth::user()->role_id == 1)
        <h1 style="text-align: center; border-radius: 5px; ">Panell Administrador</h1>
        <img style="border-radius: 5px;"  src="https://getscreen.me/for/i/admin/overview.svg" alt="">
    @endif

    @if(Auth::user()->role_id==2)
        <h1 style="text-align: center; ">Compte Professor</h1>
        <img style="border-radius: 10px; margin-bottom: 10px;"  src="https://cdn.pixabay.com/photo/2021/03/18/17/09/teacher-6105336_960_720.png" alt="">
    @endif

    @if(Auth::user()->role_id==3)
    <h1 style="text-align: center; ">Compte Alumne</h1>
    <img style="border-radius: 10px; margin-bottom: 10px;"  src="https://cdn.pixabay.com/photo/2021/11/29/18/39/reading-6833367_960_720.png" alt="">

    @endif

    </div>
</div>
@endsection

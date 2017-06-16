@extends('layout.website')

@section('content')
<div class="container">
<div class="about"></div>
        <h4 class="bt13 title ">Giới Thiệu</h4>

        <h5 class="comment">{{ App\Texts::printText(7) }}</h5>
        <h5 class="comment">{{ App\Texts::printText(8) }}</h5>
</div>
@stop

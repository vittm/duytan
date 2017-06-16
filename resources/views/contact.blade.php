@extends('layout.website')

@section('content')
<div class="container">
<div class="contact"></div>
        <h4 class="bt13 title ">Liên Hệ</h4>

        <h4 class="top30">{{ App\Texts::printText(16) }}</h4>

        <div class="col-md-12 top15 padding--lr0">
            <div class="col-md-6 padding--lr0">
                {{ App\Texts::printText(17) }}<br>
                {{ App\Texts::printText(18) }}<br>
                Email: <a style="color:#000000" href="tell:{{ App\Texts::printText(19) }}">{{ App\Texts::printText(19) }}</a><br>
                Tel: <a style="color:#000000" href="tell:{{ App\Texts::printText(20) }}">{{ App\Texts::printText(20) }}</a><br>
                {{ App\Texts::printText(21) }}<br>
            </div>
            <div class="col-md-6 pl0">
               <form autocomplete="on" action="{{ url('contact-submit') }}" enctype="multipart/form-data"  method="POST" onsubmit="" name="form_addproduct">
                 <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <input type="text" name="name" class="input-contact" placeholder="Name">
                <input type="text" name="mail" class="input-contact" placeholder="Email">
                <input type="text" name="subject" class="input-contact" placeholder="Subject">
                <textarea class="content-contact" placeholder="Content" name="content"></textarea>
                <button class="sent-contact">Sent</button>
                </form>
            </div>
            <div class="col-md-6">

            </div>
        </div>
</div>
@stop

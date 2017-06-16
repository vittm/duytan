@extends('layout.admin')

@section('content')
<div style="margin-top:40px;display:block;clear:both;"></div>
<form action="{{ url('/admin/logoing')}}" enctype="multipart/form-data"  method="POST" >
<h3>Logo</h3>
<div id="text-yui_3_17_2_1_1444669085154_85764" class="form-item field text required add-img">
                               <br>
                               <input type="hidden" name="_token" value="{{ csrf_token() }}">
                               <input type="file" name="images_slide" accept="image/*"  onchange="showMyImage(this)" id="file-2" class="inputfile inputfile-2 hidden" data-multiple-caption="{count} files selected">

                               <img id="thumbnil" class="edit_img_profile img-reg" src="{{ URL::to('img') }}/{{ $logo['0']->logo }}" height="100" alt="image" />
                               <label class="label-img" for="file-2"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17"><path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path></svg> <span class="clear">Chọn ảnh logo</span></label>
                               <input type="hidden" name="images_slide_hidden" value="{{ $logo['0']->logo }}">                           </div>
                           <button type="submit" class="btn btn-info btn-fill pull-right">update</button>
</form>
@stop

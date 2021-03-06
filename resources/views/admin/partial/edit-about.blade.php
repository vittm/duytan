@extends('layout.admin')

@section('content')

    <main class="Main Main--page">
                <section class="Main-content" data-content-field="main-content">
                <div class="sqs-block form-block sqs-block-form" data-block-type="9" id="block-yui_3_17_2_16_1444669085154_5862">
	        <div class="sqs-block-content">

	            <div class="form-wrapper">
	                <div class="form-inner-wrapper">
@foreach($abouts as $value)
	                    <form autocomplete="on" action="{{ url('/admin/editing-about') }}" enctype="multipart/form-data"  method="POST" onsubmit="" name="form_addproduct">

	                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
	                        <input type="hidden" name="id_hidden" value="{{ $value->id }}">

	                        <div class="field-list clear">

	                            <fieldset id="name-yui_3_17_2_1_1444669085154_84997" class="form-item fields name required">

	                                <div class="col-md-6 pd0">
	                                    <label class="caption">
	                                        Tên 
	                                    </label>
	                                    <input id="post_title" type="text" class="form-control" name="name_about" placeholder="Tên" value="{{ $value->name }}">
	                                </div>
	                                
	                            </fieldset>
	                            <br>
	                        </div>
	                        <div id="textarea-yui_3_17_2_1_1444669085154_86192" class="form-item field textarea required">
                                <label class="title" for="textarea-yui_3_17_2_1_1444669085154_86192-field">Url <span class="required">*</span>
                                </label>

                                <input type="text" class="form-control" name="post_cont" value="{!! $value->content !!}"><br>
                            </div>
		                        <div id="text-yui_3_17_2_1_1444669085154_85764" class="form-item field text required add-img">
	                            <label class="title" for="text-yui_3_17_2_1_1444669085154_85764-field">Hình Ảnh <span class="required">*</span>
	                            </label>
	                            <br>
	                            <input type="file" name="images_about" accept="image/*"  onchange="showMyImage(this)" id="file-2" class="inputfile inputfile-2 hidden" data-multiple-caption="{count} files selected">
	                
	                            <img id="thumbnil" class="edit_img_profile img-reg" src="{{ URL::to('laravel/public/img/about')}}/{{ $value->img }}" height="100" alt="image" />
	                            <label class="label-img" for="file-2"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17"><path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path></svg> <span class="clear">Chọn ảnh đại diện</span></label>
	                            <input type="hidden" name="images_about_hidden" value="{{ $value->img }}">
	                        </div>
	                        <div class="form-button-wrapper form-button-wrapper--align-left">
	                            <button type="submit" class="btn btn-info btn-fill pull-right">Cập nhập</button>
	                        </div>

	                        <div class="hidden form-submission-text">Thank you!</div>

	                        <div class="hidden form-submission-html" data-submission-html=""></div>
	                    </form>
@endforeach
	                </div>
	            </div>
	            </div>
	            </div>
	        </section>
         </main>
@stop



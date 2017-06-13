@extends('layout.admin')

@section('content')

    <main class="Main Main--page">
                <section class="Main-content" data-content-field="main-content">
                <div class="sqs-block form-block sqs-block-form" data-block-type="9" id="block-yui_3_17_2_16_1444669085154_5862">
	        <div class="sqs-block-content">

	            <div class="form-wrapper">
	                <div class="form-inner-wrapper">

	                    <form autocomplete="on" action="{{ url('/admin/addmenu') }}" enctype="multipart/form-data"  method="POST" onsubmit="" name="form_addproduct">

	                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
	                        <input type="hidden" name="postby" value="admin">

	                        <div class="field-list clear">

	                            <fieldset id="name-yui_3_17_2_1_1444669085154_84997" class="form-item fields name required">

	                                <div class="col-md-6 pd0">
	                                    <label class="caption">
	                                        Menu
	                                    </label>
	                                    <input id="post_title" type="text" class="form-control" name="post_title" placeholder="Tên bài viết" onkeyup= "locdau('post_title','post_symbol') ">
	                                </div>

                                  <div class="col-md-6">
                                    <label class="caption">
                                       Menu con của:
                                   </label>
                                   <select name="sub_menu" class="form-control">
                                      @foreach($menu as $value)
                                        <option value="{{ $value->slug }}">{{$value->name}}</option>
                                      @endforeach
                                   </select>
                                  </div>
	                                 <div class="col-md-6 ">
	                                    <label class="caption">
	                                        Url Menu
	                                    </label>
	                                   <input id="post_symbol" type="text" class="form-control" name="post_symbol" value="">

	                                   <i>ex: Url of mywebsite + url posts : exp.com/url-posts</i>

	                                </div>

	                            </fieldset>
	                            <br>
	                        </div>

	                        <div class="form-button-wrapper form-button-wrapper--align-left">
	                            <button type="submit" class="btn btn-info btn-fill pull-right">Thểm menu</button>
	                        </div>

	                        <div class="hidden form-submission-text">Thank you!</div>

	                        <div class="hidden form-submission-html" data-submission-html=""></div>
	                    </form>

	                </div>
	            </div>
	            </div>
	            </div>
	        </section>
         </main>
@stop

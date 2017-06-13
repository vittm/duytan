@extends('layout.admin')

@section('content')

    <main class="Main Main--page">
                <section class="Main-content" data-content-field="main-content">
                <div class="sqs-block form-block sqs-block-form" data-block-type="9" id="block-yui_3_17_2_16_1444669085154_5862">
	        <div class="sqs-block-content">

	            <div class="form-wrapper">
	                <div class="form-inner-wrapper">

	                    <form autocomplete="on" action="{{ url('/admin/editingmenu') }}" enctype="multipart/form-data"  method="POST" onsubmit="" name="form_addproduct">

	                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
	                        <input type="hidden" name="id-hidden" value="{{ $menu[0] -> id }}">

	                        <div class="field-list clear">

	                            <fieldset id="name-yui_3_17_2_1_1444669085154_84997" class="form-item fields name required">
	                            	<div class="col-md-6 ">
	                                    <label class="caption">
	                                        Id
	                                    </label>
	                                    <input type="text" class="form-control"
	                                    value=" {{ $menu[0]->id }}">
	                                </div>
	                                <div class="col-md-6 pd0">
	                                    <label class="caption">
	                                        Menu
	                                    </label>
	                                    <input id="post_title" type="text" class="form-control" name="post_title" placeholder="Tên bài viết" onkeyup= "locdau('post_title','post_symbol')"
	                                    value=" {{ $menu[0]->name }}">
	                                </div>
                                  <div class="col-md-6">
                                    <select name="sub_menu" class="form-control">
                                       @foreach($sub_menu as $value)
                                         <option value="null">Không có</option>
                                         <option  @if( $menu[0]->sub_menu == $value->slug)
                                                         {{ 'selected="selected" ' }}
                                                 @endif
                                                 value="{{ $value->slug }}">{{$value->name}}</option>
                                       @endforeach
                                    </select>
                                  </div>
	                                 <div class="col-md-6 ">
	                                    <label class="caption">
	                                        Url Menu
	                                    </label>
	                                   <input id="post_symbol" type="text" class="form-control" name="post_symbol" value="{{ $menu[0]->url }}">

	                                   <i>ex: Đối với catelogy là danh sách sản phẩm: tên + id: ví dụ như store.com/name-4 </i>

	                                </div>

	                            </fieldset>
	                            <br>
	                        </div>

	                        <div class="form-button-wrapper form-button-wrapper--align-left">
	                            <button type="submit" class="btn btn-info btn-fill pull-right">Cập nhập</button>
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

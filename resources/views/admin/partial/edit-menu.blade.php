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
                                    <label class="caption">
                                        Menu con của
                                    </label>
                                    <select name="sub_menu" class="form-control">
                                      <option value="0">Không có</option>
                                       @foreach($sub_menu as $value)
                                         <option  @if( $menu[0]->sub_menu == $value->slug)
                                                         {{ 'selected="selected" ' }}
                                                 @endif
                                                 value="{{ $value->slug }}">{{$value->name}}</option>
                                       @endforeach
                                    </select>
                                  </div>
	                                 <div class="col-md-6 mt10">
	                                    <label class="caption">
	                                        Url Menu
	                                    </label>
	                                   <input id="post_symbol" type="text" class="form-control" name="post_symbol" value="{{ $menu[0]->url }}">

	                                   <i>ex: Đối với catelogy là danh sách sản phẩm: tên + id: ví dụ như store.com/name-4 </i>

	                                </div>
                                  <div id="text-yui_3_17_2_1_1444669085154_85764" class="col-md-12 form-item field text required add-img">
                                    <br>
      	                            <label class="title" for="text-yui_3_17_2_1_1444669085154_85764-field">Hình Ảnh <span class="required">*</span>
      	                            </label>
      	                            <br>
      	                            <input type="file" name="images_slide" accept="image/*"  onchange="showMyImage(this)" id="file-2" class="inputfile inputfile-2 hidden" data-multiple-caption="{count} files selected">

      	                            <img id="thumbnil" class="edit_img_profile img-reg" src="{{ URL::to('img')}}/{{ $menu[0]->img }}" height="100" alt="image" />
                                    <input type="hidden" name="images_slide_hidden" value="{{ $menu[0]->img }}">
                                    <label class="label-img" for="file-2"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17"><path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path></svg> <span class="clear">Chọn ảnh slide</span></label>
      	                        </div>
                                <div class="col-md-6 top10 ">
                                  <br>
                                   <label class="caption">
                                       Mô tả ngắn
                                   </label>
                                  <textarea type="text" class="form-control" name="content"> {{ $menu[0]->content }}</textarea>


                               </div>
                               <div class="col-md-6 top10">
                                 <label class="caption">
                                     Menu con của
                                 </label>
                                 <br>
                                  <input value="0" name="hide" type="radio" @if($menu[0]->action == '0') checked @endif> Hiện trên menu <br>
                                  <input value="1" name="hide" checked type="radio" @if($menu[0]->action == '1') checked @endif> không hiện<br>
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

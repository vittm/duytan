@extends('layout.admin')

@section('content')

    <main class="Main Main--page">
                <section class="Main-content" data-content-field="main-content">
                <div class="sqs-block form-block sqs-block-form" data-block-type="9" id="block-yui_3_17_2_16_1444669085154_5862">
                                    <div class="sqs-block-content">

                                        <div class="form-wrapper">
                                            <div class="form-inner-wrapper">

                                                <form autocomplete="on" action="{{ url('editProducts') }}" enctype="multipart/form-data"  method="POST" onsubmit="" name="form_addproduct">

                                                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                                    <input type="hidden" name="id_hidden" value="{{ $products[0]->id }}">
                                                     <input id="post_symbol" type="hidden" class="form-control" name="post_symbol" value="{{ $products[0]->slug }}">                                                   <div class="field-list clear">

                                                        <fieldset id="name-yui_3_17_2_1_1444669085154_84997" class="form-item fields name required">

                                                            <div class="col-md-6 ">
                                                                <label class="caption">
                                                                    Tên sản phẩm
                                                                </label>
                                                                <input id="post_title" type="text" class="form-control" name="post_title" placeholder="Tên bài viết" onkeyup= "locdau('post_title','post_symbol') " value="{{ $products[0]->name }}">
                                                            </div>
                                                             <div class="col-md-6 top15">
                                                                <label class="caption">
                                                                    Mô tả ngắn
                                                                </label>
                                                                <textarea class="form-control" name="summary">
                                                                    {{ $products[0]->summary}}
                                                                </textarea>

                                                            </div>
                                                             <div class="col-md-6 top15">
                                                                <label class="caption">
                                                                Thể loại
                                                                </label>
                                                                <select class="form-control m-bot1 " name="category">
                                                                     @foreach($cate as $key => $value)
                                                                    <option @if( $products[0]->catelogy == $value->slug)
                                                                                    {{ 'selected="selected" ' }}
                                                                            @endif
                                                                                value="{{ $value->slug }}">{{ $value->name }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                        </fieldset>

                                                        <br>
                                                        <div id="textarea-yui_3_17_2_1_1444669085154_86192" class="form-item field textarea required">
                                                            <label class="title" for="textarea-yui_3_17_2_1_1444669085154_86192-field">Content <span class="required">*</span>
                                                            </label>

                                                            <textarea rows="20" cols="70" class="ckeditor" id="editor1" name="post_cont">{{ $products[0]->content}}</textarea> <br>
                                                        </div>


                                                        <div id="text-yui_3_17_2_1_1444669085154_85764" class="form-item field text required add-img">
                                                            <label class="title" for="text-yui_3_17_2_1_1444669085154_85764-field">Picture <span class="required">*</span>
                                                            </label>
                                                            <br>
                                                            @if($list[0][0] == null)
                                                                {{ " " }}
                                                            @else
                                                                @foreach($list[0] as $key => $value)
                                                                <div class="group-img" >
                                                                    <img src="{{ URL::to('img')}}/{{$value}}" height="150">
                                                                    <a href="#" class="delete-img" id="{{ $key }}"><i class="fa fa-times" aria-hidden="true"> Delete picture</i></a>
                                                                    <br>
                                                                    <br>
                                                                    <input type="hidden" value="{{ $value }}" name="hidden-img[]" class="hidden-img">
                                                                </div>
                                                                @endforeach
                                                            @endif

                                                        </div>
                                                        <br>
                                                        <p><i >Có thế select nhiều ảnh cùng lúc ctrl+ image </i></p>
                                                         <a class="addpicture btn btn-primary">Thêm nhiều ảnh</a>

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

@extends('layout.admin')

@section('content')

    <main class="Main Main--page">
                <section class="Main-content" data-content-field="main-content">
                <div class="sqs-block form-block sqs-block-form" data-block-type="9" id="block-yui_3_17_2_16_1444669085154_5862">
                                    <div class="sqs-block-content">

                                        <div class="form-wrapper">
                                            <div class="form-inner-wrapper">

                                                <form autocomplete="on" action="{{ url('ActionProducts') }}" enctype="multipart/form-data"  method="POST" onsubmit="" name="form_addproduct">

                                                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                                    <input type="hidden" name="postby" value="admin">

                                                    <div class="field-list clear">

                                                        <fieldset id="name-yui_3_17_2_1_1444669085154_84997" class="form-item fields name required">

                                                            <div class="col-md-6">
                                                                <label class="caption">
                                                                    Tên Sản Phẩm
                                                                </label>
                                                                <input id="post_title" type="text" class="form-control" name="post_title" placeholder="Tên bài viết" onkeyup= "locdau('post_title','post_symbol') ">
                                                            </div>
                                                            <div class="col-md-6 pd0">
                                                                <label class="caption">
                                                                Giá
                                                                </label>
                                                                <input id="" type="text" class="form-control" name="price" >
                                                            </div>
                                                             <div class="col-md-6 top15">
                                                                <label class="caption">
                                                                        Địa chỉ
                                                                </label>
                                                                <input id="" type="text" class="form-control" name="address" >
                                                            </div>
                                                            <div class="col-md-6 pd0 top15">
                                                                <label class="caption">
                                                                Phong tắm
                                                                </label>
                                                                <input id="" type="text" class="form-control" name="shower" >
                                                            </div>
                                                            <div class="col-md-6 top15">
                                                                <label class="caption">
                                                                Phòng ngủ
                                                                </label>
                                                                <input id="" type="text" class="form-control" name="room" >
                                                            </div>
                                                            <div class="col-md-6 pd0 top15">
                                                                <label class="caption">
                                                                Nội thất
                                                                </label>
                                                                <input id="" type="text" class="form-control" name="furniture" >
                                                            </div>
                                                            <div class="col-md-6 top15">
                                                                <label class="caption">
                                                                Loại địa ốc
                                                                </label>
                                                                <input id="" type="text" class="form-control" name="type" >
                                                            </div>
                                                            <div class="col-md-6 top15">
                                                                <label class="caption">
                                                                Diện tích
                                                                </label>
                                                                <input id="" type="text" class="form-control" name="area" >
                                                            </div>
                                                            <div class="col-md-6 top15">
                                                                <label class="caption">
                                                                Mã sản phẩm
                                                                </label>
                                                                <input id="" type="text" class="form-control" name="idroom" >
                                                            </div>

                                                             <div class="col-md-6 top15">
                                                                <label class="caption">
                                                                Mô tả ngắn
                                                                </label>
                                                                <textarea class="form-control" name="summary">
                                                                    
                                                                </textarea>
                                                               <input id="post_symbol" type="hidden" class="form-control" name="post_symbol" value="">


                                                            </div>
                                                             <div class="col-md-6 ">
                                                             <label class="caption">
                                                                    Thể loại
                                                                </label>
                                                        <select class="form-control m-bot1 " name="catelogy">
                                                            @foreach($cate as $key => $value)
                                                                        <option value="{{ $value->slug }}">{{ $value->name }}</option>
                                                            @endforeach
                                                        </select>
                                                        </div>
                                                        </fieldset>
                                                        <br>
                                                        <div id="textarea-yui_3_17_2_1_1444669085154_86192" class="form-item field textarea required">
                                                            <label class="title" for="textarea-yui_3_17_2_1_1444669085154_86192-field">Nội Dung <span class="required">*</span>
                                                            </label>

                                                            <textarea rows="20" cols="70" class="ckeditor" id="editor1" name="post_cont"></textarea> <br>
                                                        </div>


                                                        <div id="text-yui_3_17_2_1_1444669085154_85764" class="form-item field text required add-img">
                                                            <label class="title" for="text-yui_3_17_2_1_1444669085154_85764-field">Hình Ảnh <span class="required">*</span>
                                                            </label>

                                                            <input type="file" class="form-control" name="images[]" multiple="true">
                                                        </div>
                                                        <br>
                                                        <p><i >Có thế select nhiều ảnh cùng lúc ctrl+ image </i></p>
                                                         <a class="addpicture btn btn-primary">Thêm nhiều ảnh</a>

                                                    </div>




                                                    <div class="form-button-wrapper form-button-wrapper--align-left">
                                                        <button type="submit" class="btn btn-info btn-fill pull-right">Thểm sản phẩm</button>
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


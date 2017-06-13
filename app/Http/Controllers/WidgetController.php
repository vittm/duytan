<?php
	namespace App\Http\Controllers;
	/**
	*
	*/
	use DB;
	use App\Products;
	use App\Menues;
	use App\Contacts;
	use App\Abouts;
	use App\Slides;
	use App\Http\Requests;
	use App\Http\Controllers\Controller;
	use App\Modules\Admin\Http\Middleware;
	use Illuminate\Http\Request;

	class widgetController extends Controller
	{
		public function menu(){
			$menu = DB::table('menues')->get();
			return view('admin.partial.menu',['menu'=> $menu]);
		}
		public function detail_mess($id){
			$mess = DB::table('contacts')->where('id',$id)->get();
			return view('admin.partial.detail-contact',['mess'=> $mess]);
		}
		public function listings_mess(){
			$mess = DB::table('contacts')->get();
			return view('admin.partial.contact',['contact'=> $mess]);
		}
		public function editmenu($id){
			$menu = DB::table('menues')->where('id','=',$id)->get();
			$sub_menu = DB::table('menues')->get();
			return view('admin.partial.edit-menu',['menu'=> $menu,'sub_menu' => $sub_menu]);
		}
		public function showmenu(){
			$menu = DB::table('menues')->get();
			return view('admin.partial.add-menu',['menu'=> $menu]);
		}
		public function addmenu(Request $request){
			$input = $request->all();
			$add = new Menues;
			$add->sub_menu = $input['sub_menu'];
			$add->slug = $input['post_symbol'];
			$add->name = $input['post_title'];
			$add->url= $input['post_symbol'];

			$add->save();
			return redirect('/admin/menu');
		}
		public function contact(Request $request){
			$input = $request->all();
			$add = new Contacts;

			$add->name = $input['name'];
			$add->email = $input['mail'];
			$add->subject = $input['subject'];
			$add->mess = $input['content'];

			$add->save();
			return redirect('/noti');
		}
		public function editingmenu(Request $request){
			$input = $request->all();
			$id = $input['id-hidden'] ;
			$array= ([
	        	'name' => $input['post_title'],
						'sub_menu' => $input['sub_menu'],
	            'slug'=> $input['post_symbol'],
	            'url'=> $input['post_symbol']
	        ]);
            DB::table('menues')->where('id', $id)->update(
 				$array
 			);
			return redirect('/admin/menu');
		}
		public function destroymenu($id){
			$menu= Menues::find($id);
			$menu->delete();
			return redirect('/admin/menu');
		}

		public function listingProject($name){
			$project = DB::table('products')->where('catelogy','=',$name)->get();
			$nameCategory = $name;
			$category = DB::table('menues')->get();
			return view('listingProjects')->with(['project'=> $project,'category'=> $category,'nameCategory' => $nameCategory]);
		}

		public function about(){
			$about = DB::table('abouts')->paginate(12);
			return view('about',['abouts'=> $about]);
		}

		public function slide(){
			$slides = DB::table('slides')->paginate(12);
			return view('admin.partial.slide',['slides'=> $slides]);
		}

		public function admin_about(){
			$about = DB::table('abouts')->paginate(12);
			return view('admin.partial.about',['abouts'=> $about]);
		}
		public function add_about(){
			return view('admin.partial.add-about');
		}

		public function add_slide(){
			return view('admin.partial.add-slide');
		}
		public function adding_about(Request $request){
			$input = $request->all();
			$add= new Abouts;
				if($request->hasFile('images_about')){
            $file = $input['images_about'];
            $filename = $file->getClientOriginalName();
            $file->move(public_path().'/img/about', $filename);
        }else{
            $filename=" ";
        }
			$add->name = $input['name_about'];
			$add->content = $input['post_cont'];
			$add->img = $filename;
			$add->save();

			return redirect('admin/about');
		}
		public function adding_slide(Request $request){
			$value = $request->all();
			$add= new Slides;
				if($request->hasFile('images_slide')){
            $file = $value['images_slide'];
            $filename = $file->getClientOriginalName();
            $file->move(public_path().'/img/slide', $filename);
        }else{
            $filename=" ";
        }
        	$add->title_big = $value['title_big'];
        	$add->title_small = $value['title_small'];
			$add->img = $filename;
			$add->save();

			return redirect('admin/slide');
		}
		public function edit_about($id){
			$about = DB::table('abouts')->where('id','=',$id)->get();
			return view('admin.partial.edit-about',['abouts'=> $about]);
		}
		public function edit_slide($id){
			$slides = DB::table('slides')->where('id','=',$id)->get();
			return view('admin.partial.edit-slide',['slides'=> $slides]);
		}
		public function editing_about(Request $request){
			$input = $request->all();
			$id= $input['id_hidden'];
			$add= new Abouts;
				if($request->hasFile('images_about')){
		            $file = $input['images_about'];
		            $filename = $file->getClientOriginalName();
		            $file->move(public_path().'/img/about', $filename);
		        }else{
		            $filename=$input['images_about_hidden'];
		        }
			$arr = ([
				'name' => $input['name_about'],
				'content' =>$input['post_cont'],
				'img' =>$filename
			]);
		    DB::table('abouts')->where('id','=',$id)->update($arr);
			return redirect('admin/about');
		}
		public function editing_slide(Request $request){
			$input = $request->all();
			$id= $input['id_hidden'];
			$add= new Abouts;
				if($request->hasFile('images_slide')){
		            $file = $input['images_slide'];
		            $filename = $file->getClientOriginalName();
		            $file->move(public_path().'/img/slide', $filename);
		        }else{
		            $filename=$input['images_slide_hidden'];
		        }
			$arr = ([
				'title_big' => $input['title_big'],
            	'title_small' => $input['title_small'],
				'img' =>$filename
			]);
		    DB::table('slides')->where('id','=',$id)->update($arr);
			return redirect('admin/slide');
		}
		public function delete_about($id){
			DB::table('abouts')->where('id', $id)->delete();
			return redirect('/admin/adbout');
		}
		public function destroy_slide($id){
			DB::table('slides')->where('id', $id)->delete();
			return redirect('/admin/slide');
		}
		public function update_text(Request $request){
	        $list= $request->all();
	        $id= $request->get('id_edit');
	        $text= $request->get('text_value');
	        foreach ( $id as $key =>$value)
	        {
	            DB::table('texts')->where('id', $id[ $key ])->update([
	                        'text' => $text[$key]
	                    ]);
	        }
	        return redirect('/admin/text');
	    }

	    public function delete_text($id){
	         DB::table('texts')->where('id', $id)->delete();
	        return redirect('/admin/text');
	    }

	    public function logo(Request $request){
			$input = $request->all();
			$add= new Abouts;
				if($request->hasFile('images_slide')){
		            $file = $input['images_slide'];
		            $filename = $file->getClientOriginalName();
		            $file->move(public_path().'/img/slide', $filename);
		        }else{
		            $filename=$input['images_slide_hidden'];
		        }
			$arr = ([
				'logo' =>$filename
			]);
		    DB::table('logos')->where('id','=','1')->update($arr);
		    $about = DB::table('logos')->where('id','=','1')->get();
			return view('admin.partial.logo',['logo'=> $about]);

		}
		public function indexlogo(Request $request){

		    $about = DB::table('logos')->where('id','=','1')->get();
			return view('admin.partial.logo',['logo'=> $about]);

		}
		public function item(Request $request){
		    $item = DB::table('items')->get();
			return view('admin.partial.item',['item'=> $item]);
		}
		public function editItem($id){
		    $item = DB::table('items')->where('id',$id)->get();
			return view('admin.partial.edit-item',['item'=> $item]);
		}
		public function updateItem(Request $request, $id){
			$input = $request->all();
			$add= new Abouts;
				if($request->hasFile('images_slide')){
		            $file = $input['images_slide'];
		            $filename = $file->getClientOriginalName();
		            $file->move(public_path().'/img/', $filename);
		        }else{
		            $filename=$input['images_slide_hidden'];
		        }
			$arr = ([
				'img' =>$filename
			]);
		    DB::table('items')->where('id','=',$id)->update($arr);
			return redirect('admin/item');
		}
}

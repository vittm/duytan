<?php
	namespace App\Http\Controllers;
	/**
	* 
	*/
	use DB;
	use App\Products;
	use App\Http\Requests;
	use App\Http\Controllers\Controller;
	use App\Modules\Admin\Http\Middleware;
	use Illuminate\Http\Request;

	class productsController extends Controller
	{
		public function products(){
			$cate = DB::table('menues')->get();
			return View('admin.addProduct',['cate'=> $cate]);
		}
		public function ActionProducts(Request $request){
			$input = $request->all();
			$add= new Products;
				if ($request->hasFile('images')) {
						$names = [];
					    $files = $request->file('images');
					    foreach($files as $file){
					       	$names[] = $file->getClientOriginalName();
					       	$name = $file->getClientOriginalName();
					    	$file->move(public_path().'/img/', $name);
					    }
					}else{
						$names= " ";
					}
			$add->price= $input['price'];
			$add->address = $input['address'];
			$add->shower = $input['shower'];
			$add->room = $input['room'];
			$add->furniture = $input['furniture'];
			$add->type = $input['type'];
			$add->area = $input['area'];
			$add->idroom = $input['idroom'];

			$add->slug = $input['post_symbol'];
			$add->summary = $input['summary'];
			$add->catelogy = $input['catelogy'];
			$add->name = $input['post_title'];
			$add->content = $input['post_cont'];
			$add->images = json_encode($names);
			$add->save();
			return redirect('admin/listings');
		}
		public function Edit($id){
			$products = DB::table('products')->where('id','=',$id)->get();
			$cate = DB::table('menues')->get();
			$array= array(json_decode($products[0]->images,JSON_BIGINT_AS_STRING));
			return View('admin.editProduct',["products"=>$products,'list'=>$array,'cate'=> $cate]);
		}
		public function editing(Request $request){
			$input = $request->all();
			$id=$input['id_hidden'];
			$names = [];
			if ($request->hasFile('images')) {
						
					    $files = $request->file('images');
					    foreach($files as $file){
					       	$names[] = $file->getClientOriginalName();
					       	$name = $file->getClientOriginalName();
					    	$file->move(public_path().'/img/', $name);
					    }
					}else{
						
							$names= $input['hidden-img'];
						
					}
			 			$array= ([
				        	'name' => $input['post_title'],
				            'slug'=> $input['post_symbol'],
				            'summary'=> $input['summary'],
				            'content'=> $input['post_cont'],
				           	'images' => json_encode($names),
				           	'catelogy' => $input['category'],
				           	'price'=> $input['price'],
							'address' => $input['address'],
							'shower' => $input['shower'],
							'room' => $input['room'],
							'furniture' => $input['furniture'],
							'type' => $input['type'],
							'area' => $input['area'],
							'idroom' => $input['idroom'],
				        ]);
			            DB::table('products')->where('id', $id)->update(
	         				$array
	         			);           
			return redirect('/admin/listings');
		}
		public function adminlistings(){
			$products = DB::table('products')->paginate(12);
			return View('admin.listproducts')->with(
				"products",$products
			);
		}
		public function destroy($id){
			DB::table('products')->where('id', $id)->delete();
			return redirect('/admin/listings');
		}
		public function detail($slug){
			$detail= DB::table('products')->where('slug', $slug)->get();
			return View('detail')->with([
				"detail" => $detail
				]
			);
		}
	}
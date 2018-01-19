<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use \App\Brand;
use \App\Phone;
class BrandsController extends Controller
{
  public function index()
    {
        return view('brands.index')->with('brands', brand::all());
    }
  public function create()
    {
        return view('brands.create');
    }
  public function store(Request $request)
    {
        
      $this->validate($request, [
            'brand' => 'required'
            ]);
        

       
        $brand_new = new brand;
        $brand_new->brand = $request->input('brand');   
        $brand_new->save();
        
        return redirect('brands');
    }
   public function upshow()
    {
        
        return view('brands.upshow')->with('brands', Brand::all());
            
    }
	public function showb($id)
    {
        $b = Brand::findOrFail($id);
        return view('brands.show')
            ->with('brand',$b);
    } 	  
      
	public function show($id)
    {
        $b = Brand::findOrFail($id);


        return view('phones.inquiry')
            ->with('phones', $b->phones);
    }
  public function edit($id)
    {
        return view('brands.edit')->with('brand', Brand::findOrFail($id));
    } 
    
	public function update(Request $request)
    {
        $Brand = Brand::find($request->input('id'));
        $Brand->update($request->all());

     return redirect('brands');
    }
	public function destroy($id)
    {
        $b = Brand::findOrFail($id);
        $b->delete();

        return redirect('brands/upshow');
    }
   	public function delete($id)
    {       

           $b = Brand::onlyTrashed()->findOrFail($id);
           $b->forceDelete();
        return redirect('brands/quit')->with('brands',
            Brand::onlyTrashed()->get());;
    } 
   public function quit()
    {
        return view('brands.quit')->with('brands',
            Brand::onlyTrashed()->get());
    }  
	public function restore($id)
    {
        $b = Brand::onlyTrashed()->where('id', '=', $id);
        $b->restore();

        return redirect('brands/quit');
        
    }					  
}

<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

use \App\Phone;
use \App\Brand;
class PhonesController extends Controller
{
  public function index()
    {    
        return view('phones.index')
            ->with('phones', Phone::paginate(10));
//            ->with('phones', Phone::all());
        //return view('phones.index')->with('phones', Phone:: simplePaginate(10));
        //return view('phones.index')->with('phones', Phone::all()->paginate(20));
        //return view('phones.index')->with(['phones'=> Phone::all(),'brands'=>Brand::all()]);
    }
  
  public function upshow()
    {
        
        return view('phones.upshow')->with('phones', Phone::paginate(10));
            
    }
	public function show($id)
    {
        $p = Phone::findOrFail($id);
        return view('phones.show')
            ->with('phone',$p);
    } 	  
    
  public function create()
    {
        return view('phones.create')
				->with('brands', Brand::latest('brand')->first()->get());
    }
    
	public function store(Request $request)
    {
       $this->validate($request, [
             'brand_id'=> 'required',
             'Phone_name'=> 'required',
             'Colour'=> 'required',
             'Screen_size'=> 'required',
             'Screen_resolution'=> 'required',
             'operating_system'=> 'required',
             'CPU'=> 'required',
             'RAM'=> 'required',
             'ROM'=> 'required',
             'SIM'=> 'required',
             'MicroSD'=> 'required',
             'Front_camera'=> 'required',
             'Main_camera'=> 'required',
             'Communication_agreement'=> 'required',
             'Link_web'=> 'required',
             'specification'=> 'required',
             'Phone_weight'=> 'required',
             'battery'=> 'required',
            ]);
        $phone_new = new phone;  
        $phone_new->brand_id = $request->input('brand_id');
        $phone_new->Phone_name = $request->input('Phone_name');
        $phone_new->Colour = $request->input('Colour');
        $phone_new->Screen_size = $request->input('Screen_size');
        $phone_new->Screen_resolution = $request->input('Screen_resolution');
        $phone_new->operating_system = $request->input('operating_system');
        $phone_new->CPU = $request->input('CPU');
        $phone_new->RAM = $request->input('RAM');
        $phone_new->ROM = $request->input('ROM');
        $phone_new->SIM = $request->input('SIM');
        $phone_new->MicroSD = $request->input('MicroSD');
        $phone_new->Front_camera = $request->input('Front_camera');
        $phone_new->Main_camera = $request->input('Main_camera');
        $phone_new->Communication_agreement = $request->input('Communication_agreement');
        $phone_new->Link_web = $request->input('Link_web');
        $phone_new->specification = $request->input('specification');
        $phone_new->Phone_weight = $request->input('Phone_weight');
        $phone_new->battery = $request->input('battery');
        $phone_new->save();

        return redirect('phones');
    }
  public function edit($id)
    {
        return view('phones.edit')->with(['phone'=> Phone::findOrFail($id),'brands'=>Brand::latest('brand')->first()->get()]);
    } 
	public function update(Request $request)
    {
        $P =Phone::find($request->input('id'));
        $P->update($request->all());

     return redirect('phones');
    }
	public function destroy($id)
    {
        $p = Phone::findOrFail($id);
        $p->delete();

         return redirect('phones/upshow');
    }
   public function delete($id)
    {
        $p = Phone::onlyTrashed()->findOrFail($id);
        $p->forceDelete();
        return redirect('phones/quit')->with('phones',
            Phone::onlyTrashed()->get());
    }  
 public function quit()
    {
        return view('phones.quit')->with('phones',
            Phone::onlyTrashed()->get());
    }  
	public function restore($id)
    {
        $p = Phone::onlyTrashed()->where('id', '=', $id);
        $p->restore();

        return redirect('phones/quit');
        
    }					  				 
}

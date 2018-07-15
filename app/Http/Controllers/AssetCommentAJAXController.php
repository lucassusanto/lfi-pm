<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AssetCommentAJAXController extends Controller
{
    private function template() {
        //check if its our form
        if ( Session::token() !== Input::get( '_token' ) ) {
            return Response::json( array(
                'msg' => 'Unauthorized attempt to create setting'
            ) );
        }
 
        $setting_name = Input::get( 'setting_name' );
        $setting_value = Input::get( 'setting_value' );
 
        //.....
        //validate data
        //and then store it in DB
        //.....
 
        $response = array(
            'status' => 'success',
            'msg' => 'Setting created successfully',
        );
 
        return Response::json( $response );
    }

    public function create(Request $request) {
        return "Hello dear!";
    }
}

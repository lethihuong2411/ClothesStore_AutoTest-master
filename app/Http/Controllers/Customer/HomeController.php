<?php

namespace App\Http\Controllers\Customer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Customer;
use App\Product;
use App\Newsletter;
use Validator;
use Session;

use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    // product detail
    public function productDetail($slug)
    {
        $product_key = 'product' . $slug;

        $current_time = time();
        if (Session::has($product_key)) {
            if ($current_time - Session::get($product_key) > 1800) {
                Product::where('slug', $slug)->firstOrFail()->increment('view_count');
                Session::put(
                    [
                        $product_key => $current_time,
                    ]
                );
            }
        } else {
            Product::where('slug', $slug)->firstOrFail()->increment('view_count');
            Session::put(
                [
                    $product_key => $current_time,
                ]
            );
        }
        $product = DB::table('products')
            ->select(
                'products.*',
                'brands.name as brand_name'
            )
            ->join('brands', 'brands.id', '=', 'products.brand_id')
            ->where('products.slug', $slug)
            ->where('products.status', 1)
            ->first();
        if (isset($product)) {
            $related_products = Product::where('brand_id', $product->brand_id)
                ->where('id', '!=', $product->id)->where('status', 1)
                ->take(12)->get();

            if ($product->product_category_id == 1) {
                $suggest_products = Product::where('product_category_id', 1)
                    ->where('id', '!=', $product->id)->where('status', 1)->get();
            } elseif ($product->product_category_id == 2) {
                $suggest_products = Product::where('product_category_id', 2)
                    ->where('id', '!=', $product->id)->where('status', 1)->get();
            } elseif ($product->product_category_id == 3) {
                $suggest_products = Product::where('product_category_id', 3)
                    ->where('id', '!=', $product->id)->where('status', 1)->get();
            } elseif ($product->product_category_id == 4) {
                $suggest_products = Product::where('product_category_id', 4)
                    ->where('id', '!=', $product->id)->where('status', 1)->get();
            }

            return view('product_detail', compact('product', 'related_products', 'suggest_products'));
        }
    }

    // email subcribe
    public function subscribe(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'email' => 'required|email',
            ],

            [
                'email.required' => 'Bạn cần nhập email',
                'email.email' => 'Email không đúng định dạng',
            ]
        );

        if ($validator->fails()) {
            return response()->json(['is' => 'failed', 'error' => $validator->errors()->all()]);
        }
        $data['email'] = $request->email;
        $check_email = Newsletter::where('email', $data['email'])->first();
        if ($check_email) {
            return response()->json(['is' => 'unsuccess', 'uncomplete' => 'Email đã đăng kí nhận tin']);
        }
        $flag = Newsletter::create($data);
        if ($flag) {
            return response()->json(['is' => 'success', 'complete' => 'Đăng kí nhận tin thành công']);
        }
        return response()->json(['is' => 'unsuccess', 'uncomplete' => 'Hệ thống gặp sự cố từ chối nhận thêm email']);
    }
}

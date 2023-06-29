<?php

namespace App\Http\Controllers\Customer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Product;
use App\Brand;

class KidProductController extends Controller
{
    public function index()
    {
        $products = Product::where('product_category_id', 3)->where('status', 1)->orderBy('price_sale')->paginate(20);
        return view('category_products', ['products' => $products, 'title' => 'Trẻ em']);
    }

    public function fiberProduct(Request $request)
    {
        $sortby = $request->sortby;
        $min_price = ((int) $request->min_price) / 1000;
        $max_price = ((int) $request->max_price) / 1000;
        if ($min_price && $max_price) {
            if ($sortby == 'price-desc')
                $products = Product::select('id', 'name', 'slug', 'image', 'price_sale', 'price', 'quantity')
                    ->where('product_category_id', 3)
                    ->where('status', 1)
                    ->where('price_sale', '>=', $min_price)
                    ->where('price_sale', '<=', $max_price)
                    ->orderBy('price_sale', 'desc');
            else if ($sortby == 'name')
                $products = Product::select('id', 'name', 'slug', 'image', 'price_sale', 'price', 'quantity')
                    ->where('product_category_id', 3)
                    ->where('status', 1)
                    ->where('price_sale', '>=', $min_price)
                    ->where('price_sale', '<=', $max_price)
                    ->orderBy('name');
            else if ($sortby == 'date')
                $products = Product::select('id', 'name', 'slug', 'image', 'price_sale', 'price', 'quantity')
                    ->where('product_category_id', 3)
                    ->where('status', 1)
                    ->where('price_sale', '>=', $min_price)
                    ->where('price_sale', '<=', $max_price)
                    ->orderBy('created_at', 'desc');
            else
                $products = Product::select('id', 'name', 'slug', 'image', 'price_sale', 'price', 'quantity')
                    ->where('product_category_id', 3)
                    ->where('status', 1)
                    ->where('price_sale', '>=', $min_price)
                    ->where('price_sale', '<=', $max_price)
                    ->orderBy('price_sale', 'asc');
        } else {
            if ($sortby == 'price-desc')
                $products = Product::select('id', 'name', 'slug', 'image', 'price_sale', 'price', 'quantity')->where('product_category_id', 3)->where('status', 1)->orderBy('price_sale', 'desc');
            else if ($sortby == 'name')
                $products = Product::select('id', 'name', 'slug', 'image', 'price_sale', 'price', 'quantity')->where('product_category_id', 3)->where('status', 1)->orderBy('name');
            else if ($sortby == 'date')
                $products = Product::select('id', 'name', 'slug', 'image', 'price_sale', 'price', 'quantity')->where('product_category_id', 3)->where('status', 1)->orderBy('created_at', 'desc');
            else
                $products = Product::select('id', 'name', 'slug', 'image', 'price_sale', 'price', 'quantity')->where('product_category_id', 3)->where('status', 1)->orderBy('price_sale', 'asc');
        }

        // brand
        if ($request->brand) {
            $brands = explode(',', $request->brand);
        }
        if (isset($brands)) {
            $brands = [];
            $check_brands = [];
            for ($i = 0; $i < count($brands); $i++) {
                $brand = Brand::select('id')->where('slug', $brands[$i])->first();
                if ($brand) {
                    array_push($brands, $brand->id);
                }
            }

            for ($i = 0; $i < count($brands); $i++) {
                $check_brands[$brands[$i]] = true;
            }

            $products = $products->whereIn('brand_id', $brands);
        }

        $products = $products->paginate(12);
        $title = "Trẻ em";
        if ($sortby != null) {
            return view('category_products', compact('title', 'sortby', 'products', 'check_brands', 'min_price', 'max_price'));
        }
        return view('category_products', compact('title', 'products', 'check_brands', 'min_price', 'max_price'));
    }
}

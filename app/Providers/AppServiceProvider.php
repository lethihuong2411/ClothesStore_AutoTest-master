<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\PostCategory;
use App\Post;
use App\Tag;
use App\Product;
use App\ProductCategory;
use App\Brand;
use App\Unit;
use View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        if (!\App::runningInConsole()) {
            // nhom san pham
            View::share('product_categories', ProductCategory::orderBy('name', 'asc')->get());

            // thuong hieu
            View::share('brands', Brand::orderBy('name', 'asc')->get());

            // women product order by created at desc
            View::share('new_women_products', Product::where('product_category_id', 1)->where('status', 1)->orderBy('created_at', 'desc')->take(6)->get());
            // menu women product order by price sale desc
            View::share('menu_women_products', Product::where('product_category_id', 1)->where('status', 1)->orderBy('price_sale', 'desc')->take(15)->get());
            // menu women product order by price sale asc
            View::share('menu_women_products_asc', Product::where('product_category_id', 1)->where('status', 1)->orderBy('price_sale', 'asc')->take(15)->get());
            // women product co gia ban nho nhat
            View::share('price_sale_min_women_product', Product::where('product_category_id', 1)->where('status', 1)->min('price_sale'));
            // women product co gia ban lon nhat
            View::share('price_sale_max_women_product', Product::where('product_category_id', 1)->where('status', 1)->max('price_sale'));

            // men product order by created at desc
            View::share('new_men_products', Product::where('product_category_id', 2)->where('status', 1)->orderBy('created_at', 'desc')->take(6)->get());
            // menu men product order by price sale desc
            View::share('menu_men_products', Product::where('product_category_id', 2)->where('status', 1)->orderBy('price_sale', 'desc')->take(15)->get());
            // menu men product order by price sale asc
            View::share('menu_men_products_asc', Product::where('product_category_id', 2)->where('status', 1)->orderBy('price_sale', 'asc')->take(15)->get());
            // women product co gia ban nho nhat
            View::share('price_sale_min_men_product', Product::where('product_category_id', 2)->where('status', 1)->min('price_sale'));
            // women product co gia ban lon nhat
            View::share('price_sale_max_men_product', Product::where('product_category_id', 2)->where('status', 1)->max('price_sale'));

            // kid product order by created at desc
            View::share('new_kid_products', Product::where('product_category_id', 3)->where('status', 1)->orderBy('created_at', 'desc')->take(6)->get());
            // menu kid product order by price sale desc
            View::share('menu_kid_products', Product::where('product_category_id', 3)->where('status', 1)->orderBy('price_sale', 'desc')->take(15)->get());
            // menu kid product order by price sale asc
            View::share('menu_kid_products_asc', Product::where('product_category_id', 3)->where('status', 1)->orderBy('price_sale', 'asc')->take(15)->get());
            // women product co gia ban nho nhat
            View::share('price_sale_min_kid_product', Product::where('product_category_id', 3)->where('status', 1)->min('price_sale'));
            // women product co gia ban lon nhat
            View::share('price_sale_max_kid_product', Product::where('product_category_id', 3)->where('status', 1)->max('price_sale'));

            // other product order by created at desc
            View::share('new_other_products', Product::where('product_category_id', 4)->where('status', 1)->orderBy('created_at', 'desc')->take(6)->get());
            // menu other product order by price sale desc
            View::share('menu_other_products', Product::where('product_category_id', 4)->where('status', 1)->orderBy('price_sale', 'desc')->take(15)->get());
            // menu other product order by price sale asc
            View::share('menu_other_products_asc', Product::where('product_category_id', 4)->where('status', 1)->orderBy('price_sale', 'asc')->take(15)->get());
            // women product co gia ban nho nhat
            View::share('price_sale_min_other_product', Product::where('product_category_id', 4)->where('status', 1)->min('price_sale'));
            // women product co gia ban lon nhat
            View::share('price_sale_max_other_product', Product::where('product_category_id', 4)->where('status', 1)->max('price_sale'));

            // san pham duoc quan tam nhieu nhat
            View::share('most_interesting_products', Product::where('status', 1)->orderBy('view_count', 'desc')->take(12)->get());

            // san pham ban nhieu nhat
            View::share('most_sold_products', Product::where('status', 1)->orderBy('bought', 'desc')->take(12)->get());
        }
    }
}

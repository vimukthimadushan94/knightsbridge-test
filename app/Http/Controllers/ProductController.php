<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Http\Resources\ProductResource;
use App\Http\Resources\SellerResource;
use App\Seller;
use App\Http\Requests\GetProductById;
use App\Http\Requests\GetProductBySellerId;
use App\Http\Requests\GetSellerByProduct;

class ProductController extends Controller
{
    
    public function getProductById(GetProductById $request){
        $validated = $request->validated();
        $product = Product::find($validated['id']);
        return new ProductResource($product);
    }
    
    public function getProductsBySellerId(GetProductBySellerId $request){
        $validated = $request->validated();
        $products = Seller::find($validated['id'])->products;
        return ProductResource::collection($products);
        
    }

    public function getSellerByProductId(GetSellerByProduct $request){
        $validated = $request->validated();
        $seller = Product::find($validated['id'])->seller()->get();
        return SellerResource::collection($seller);
    }
}

<?php

use App\Http\Controllers\Cms\ProductsFeaturesController;
use Illuminate\Support\Facades\Route;

Route::get("products-features/{id}/create", [ProductsFeaturesController::class, 'create'])->name("productsFeatures.create");
Route::post("products-features/{id}/store", [ProductsFeaturesController::class, 'store'])->name("productsFeatures.store");
Route::get("products-features/{id}/packaging/create",[ProductsFeaturesController::class, 'packaging'])->name("productsFeatures.packaging");
Route::post("products-features/{id}/packaging/create",[ProductsFeaturesController::class, 'packagingStore'])->name("productsFeatures.packaging.store");
Route::delete("products-features/{id}/packaging/destroy",[ProductsFeaturesController::class, 'packagingDestroy'])->name("productsFeatures.packaging.destroy");


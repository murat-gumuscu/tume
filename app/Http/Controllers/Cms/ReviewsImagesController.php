<?php

namespace App\Http\Controllers\Cms;

use App\Http\Controllers\Controller;
use App\Models\ReviewsImages;
use App\Services\LogService;
use Illuminate\Http\Request;

class ReviewsImagesController extends Controller
{


    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $status = "success";
        $message = "Yorum Resmi Silindi";
        try {
            $image = ReviewsImages::find($id);
            if ($image) {

                $delete = $image->delete();
                if ($delete) {
                    return response()->json(["status" => $status, "message" => $message]);
                } else {
                    $status = "error";
                    $message = "Yorum Resmi Silinemedi";
                    return response()->json(["status" => $status, "message" => $message]);
                }
            } else {
                $status = "error";
                $message = "Yorum Resmi Bulunamadı";
                return response()->json(["status" => $status, "message" => $message]);
            }

        } catch (\Throwable $exception) {
            $status = "error";
            $message = "Yorum Resmi Silinemedi";
            LogService::add("ReviewsImagesController Destroy", $status, $message . " => " . $exception->getMessage());
            return response()->json(["status" => $status, "message" => $message]);
        }
    }
}

<?php

namespace App\Http\Controllers\Cms;

use App\Http\Controllers\Controller;
use App\Models\GuestReviews;
use App\Services\GuestReviewsService;
use App\Services\LogService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class GuestReviewsController extends Controller
{

    protected GuestReviewsService $guestReviewsService;

    public function __construct(GuestReviewsService $guestReviewsService)
    {
        $this->guestReviewsService = $guestReviewsService;
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $reviews = Cache::remember("reviews", now()->addDay(), function () {
            return GuestReviews::all();
        });
        return view("cms.reviews.index", compact("reviews"));
    }


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $status = "success";
        $message = "Kullanıcı Yorumu Bulundu";
        try {
            $review = GuestReviews::findOrFail($id);
            if ($review) {
                return view("cms.reviews.show", compact("review"));
            } else {
                $status = "error";
                $message = "Görüntülemek İstediğiniz Yorum Bulunamadı";
                LogService::add("GuestReviewsController Show", $status, $message);
                return redirect()->route("cms.reviews.index")->with(["status" => $status, "message" => $message]);
            }
        } catch (\Throwable $exception) {
            $status = "error";
            $message = "Bir Sorunla Karşılaşıldı";
            LogService::add("GuestReviewsController Show", $status, $message . $exception->getMessage());
            return redirect()->route("cms.reviews.index")->with(["status" => $status, "message" => $message]);
        }
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function changeStatus(Request $request, $id)
    {
        $result = $this->guestReviewsService->changeStatus($request, $id);
        return response()->json(["status" => $result["status"], "message" => $result["message"]]);

    }
}

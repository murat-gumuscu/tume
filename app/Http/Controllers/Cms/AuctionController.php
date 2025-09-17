<?php

namespace App\Http\Controllers\Cms;

use App\Http\Controllers\Controller;
use App\Http\Requests\AuctionStoreRequest;
use App\Models\AuctionCounter;
use App\Services\AuctionCounterService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class AuctionController extends Controller
{

    protected AuctionCounterService $auctionCounterService;

    public function __construct(AuctionCounterService $auctionCounterService)
    {
        $this->auctionCounterService = $auctionCounterService;
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $auctions = Cache::remember('auctions', now()->addDay(), function () {
            return AuctionCounter::all();
        });
        return view('cms.auctions.index', compact('auctions'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('cms.auctions.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(AuctionStoreRequest $request)
    {
        $result = $this->auctionCounterService->store($request);
        return redirect()->route('cms.auctions.index')->with(["status" => $result["status"], "message" => $result["message"]]);
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
        $result = $this->auctionCounterService->destroy($id);
        return response()->json(["status" => $result["status"], "message" => $result["message"]]);
    }

    public function publish(string $id)
    {
        $result = $this->auctionCounterService->publish($id);
        return response()->json(["status" => $result["status"], "message" => $result["message"]]);
    }

    public function form(string $id)
    {
        $result = $this->auctionCounterService->form($id);
        return response()->json(["status" => $result["status"], "message" => $result["message"]]);
    }
}

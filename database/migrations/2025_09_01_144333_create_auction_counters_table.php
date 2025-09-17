<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('auction_counters', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('location');
            $table->dateTime('start_date');
            $table->dateTime('end_date');
            $table->boolean('form')->nullable()->default(false);
            $table->boolean('active')->nullable()->default(false);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('auction_counters');
    }
};

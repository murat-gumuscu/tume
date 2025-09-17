@extends("user.partial.layout")
@section("extraCss")
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/notyf@3/notyf.min.css">
@endsection
@section("content")
    <div class="main-text full-width">
        <h1 class="title">Her Karış Toprağa Vizyon Ekeriz Biz</h1>
        <p>Tarım Teknolojileri Kümelenmesi, Teknofest İstanbul ile yeni bir ekosistemin temellerini
            atıyor.</p>
    </div>
    <div class="swiper mainSwiper max-width">
        <div class="swiper-wrapper">
            @foreach($slider as $slide)

                <div class="swiper-slide animate__animated animate__bounceInRight ">
                    <div class="text">
                        <h2>{{$slide->title}}</h2>
                        <h3>{{$slide->description}} Sistemleri</h3>
                    </div>
                    <img class="swiper-lazy tilt-item " data-tilt src="{{ $slide->image() }}"
                         alt="{{ $slide->name }} | {{$setting->site_name}}" loading="lazy">
                </div>
            @endforeach
        </div>

    </div>


    <div class="emptyArea max-width">
        <div class="buttons">
            <a href="tumenin-parcasi-ol" class=" animate__animated animate__backInLeft">TÜME’nin Parçası Ol</a>
            <a href="https://kariyer.tumevakfi.org" class=" animate__animated animate__backInRight">Özgeçmiş Bırak</a>
        </div>
    </div>

    <div class="swiper brandSwiper">
        <div class="swiper-wrapper">
            @foreach($markalarimiz as $marka)
                @if($marka->image())
                    <img class="swiper-slide" src="{{$marka->image()}}" alt="{{$marka->name}} | TÜME " title="{{$marka->name}} | TÜME "/>
                @endif
            @endforeach
        </div>
    </div>

@endsection

@section("extraJs")


@endsection

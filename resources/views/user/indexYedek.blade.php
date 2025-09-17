<!doctype html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<a href="{{route("cms.dashboard")}}"> Admin Panel </a>
<br><br><br><br>

<ul>
    @foreach($categories as $menu)
        <li>
            {{$menu->name}}
            @if($menu->children && $menu->children->count() > 0)
                <ul>
                    @foreach($menu->children as $submenu)
                        <li>{{ $submenu->name }} =>
                            @foreach($submenu->breadcrumbs() as $breadcrumb)
                                {{$breadcrumb->name}} >
                            @endforeach
                        </li>
                    @endforeach
                </ul>
            @elseif($menu->pages && $menu->pages->count() > 0)
                <ul>
{{--                    menu list--}}
                    @foreach($menu->allPages as $page)
                        {{$page->title}} =>
{{--                        breadcrumb list--}}
                        @foreach($page->breadcrumbs() as $breadcrumb)
                            @if($breadcrumb->title!=null)
                                {{$breadcrumb->title}} >
                            @else
                                {{$breadcrumb->name}} >
                            @endif
                        @endforeach
                            <br>
                        {{--                        {{$page->parentCategory->name}}--}}
                    @endforeach
                </ul>
            @endif
        </li>
    @endforeach
</ul>

</body>
</html>

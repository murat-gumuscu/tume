@extends("user.partial.layout")
@section("extraCss")
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/notyf@3/notyf.min.css">
    <script src="https://www.google.com/recaptcha/api.js?render={{ $apiKeys->recaptcha_site_key }}"></script>
@endsection

@section("content")
    <div class="content max-width">
        <form method="post" action="{{route("iletisimFormu")}}" id="contact-form">
            <h1>{{$page->title}}</h1>
            {!! $page->content !!}
            @csrf
            <div class="form-elements">
                <input type="hidden" name="recaptcha_token" id="recaptcha_token">

                <input type="text" name="name" placeholder="Adınız Soyadınız" required>

                <input type="text" name="companyName" placeholder="Şirketinizin Adı" required>

                <input type="text" name="roleCompany" placeholder="Şirketteki Göreviniz">

                <input type="text" name="companyActivity" placeholder="Şirket Faaliyet Alanı" required>

                <input type="email" name="email" placeholder="E-mail Adresiniz">

                <input type="text" name="phone" placeholder="Telefon Numaranız">

                <div class="radio-group">
                    <input type="radio" name="forWhat" id="forAccept" required
                           value="Şirketimizin Tarım Teknolojileri Kümelenmesinde yer almasını istiyorum.">
                    <label for="forAccept">Şirketimizin Tarım Teknolojileri Kümelenmesinde yer almasını
                        istiyorum.</label>
                </div>
                <div class="radio-group">
                    <input type="radio" name="forWhat" id="forInfo" required
                           value="Tarım Teknolojileri Kümelenmesi hakkında bilgi almak istiyorum.">
                    <label for="forInfo">Tarım Teknolojileri Kümelenmesi hakkında bilgi almak istiyorum.</label>
                </div>

                <textarea name="message" placeholder="Mesajınız (Min:20 karakter)"></textarea>

                <input type="submit" value="Gönder">

                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

            </div>

    </div>
    </form>
    </div>

@endsection
@section("extraJs")

    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute('{{ $apiKeys->recaptcha_site_key }}', {action: 'contact'}).then(function (token) {
                document.getElementById('recaptcha_token').value = token;
            });
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/notyf@3/notyf.min.js"></script>
    <script>

        const notyf = new Notyf({
            duration: 3000,
            ripple: true,
            dismissible: true,
            position: {
                x: 'right',
                y: 'top',
            },
            types: [
                {
                    type: 'warning',
                    background: 'orange',
                    icon: {
                        className: 'fas fa-exclamation-triangle',
                        tagName: 'i',
                    }
                },
                {
                    type: 'info',
                    background: '#3f87f5',
                    icon: {
                        className: 'fas fa-info-circle',
                        tagName: 'i',
                    }
                }
            ]
        });

        @if(session('status')==="success")
        notyf.success("{{ session('message') }}");
        @endif

        @if(session('status')==="error")
        notyf.error("{{ session('message') }}");
        @endif
    </script>
@endsection

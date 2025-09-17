<?php

namespace App\Providers;

use App\Models\ApiKeys;
use App\Models\AuctionCounter;
use App\Models\Blade;
use App\Models\Brands;
use App\Models\Category;
use App\Models\Certificate;
use App\Models\ContactForm;
use App\Models\Contacts;
use App\Models\Faq;
use App\Models\GuestReviews;
use App\Models\HomePageManagement;
use App\Models\Language;
use App\Models\MediaUpload;
use App\Models\Page;
use App\Models\Seo;
use App\Models\SiteSettings;
use App\Observers\ApiKeyObserver;
use App\Observers\AuctionsCounterObserver;
use App\Observers\BladeObserver;
use App\Observers\BrandsObserver;
use App\Observers\CategoryObserver;
use App\Observers\CertificateObserver;
use App\Observers\ContactFormObserver;
use App\Observers\ContactsObserver;
use App\Observers\FaqObserver;
use App\Observers\GuestReviewsObserver;
use App\Observers\HomePageManagementObserver;
use App\Observers\LanguageObserver;
use App\Observers\MediaUploadsObserver;
use App\Observers\PageObserver;
use App\Observers\SeoObserve;
use App\Observers\SiteSettingsObserver;
use Carbon\Carbon;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Blade as BladeFacade;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {

        Carbon::setLocale('tr');

        /**
         * Tüm user view dosyalarına iletişim bilgilerini göndermek.
         */
        View::composer('user.*', function ($view) {
            $contactInfo = Contacts::first(); // Veritabanından veri çekiliyor
            $view->with('contactInfo', $contactInfo);
        });

        /**
         * Site Ayarlarını head'a gönderir
         */
        View::composer(['user.partial.head', 'user.partial.header', 'user.partial.footer', 'user.blades.*', 'user.index'], function ($view) {
            $setting = Cache::remember("siteSettings", now()->addDay(), function () {
                return SiteSettings::first();
            });

            $view->with('setting', $setting);
        });

        /**
         * View Composer özelliğini kullanarak blade dosyasına (görünüme) her yüklendiğinde otomatik olarak veri gönderilir.
         */
        View::composer('user.partial.header', function ($view) {
            $navbarMenus = Cache::remember("navbarMenus", now()->addDay(), function () {
                return Category::whereNull('parent_category')->where("show_menu", 1)->orderBy("hit", "asc")->get();
            });
            $view->with('navbarMenus', $navbarMenus);
        });

        /**
         * Footer dosyasına hızlı menu linklerini gönderir
         */
        View::composer('user.blades.iletisim', function ($view) {
            $apiKeys = Cache::remember("apiKeys", now()->addDay(), function () {
                return ApiKeys::first();
            });
            $view->with('apiKeys', $apiKeys);
        });

        /**
         * Footer dosyasına hızlı menu linklerini gönderir
         */
        View::composer('user.partial.footer', function ($view) {
            $fastMenus = Cache::remember("fastMenus", now()->addDay(), function () {
                return Category::where("show_footer", 1)->orderBy("id", "asc")->get();
            });
            $view->with('fastMenus', $fastMenus);
        });

        /**
         * Markalarımız blade sayfasına markaların tamamını gonderiyoruz
         */
        View::composer(['user.index'], function ($view) {
            $markalarimiz = Cache::remember("brands", now()->addDay(), function () {
                return Brands::all();
            });
            $view->with('markalarimiz', $markalarimiz);
        });

        /**
         * Side mmenülerini Panel sidebar - header'ına gönderir
         */
        View::composer('cms.partial.header', function ($view) {
            $specialMenus = Category::where("show_panel", true)->orderBy("name")->get();
            $view->with('specialMenus', $specialMenus);
        });

        /**
         * Okunmamış Maillerin sayısını side menuye gonderir
         */
        View::composer('cms.partial.header', function ($view) {
            $contactFormUnreadMessage = ContactForm::where("is_read", 0)->count();
            $view->with('contactFormUnreadMessage', $contactFormUnreadMessage);
        });

        /**
         * Permission directive ile yetkisi olmayan kullanıcıya gizlenmek istenen linkler gizlenir.
         */
        BladeFacade::directive('permission', function ($permission) {
            return "<?php if(auth()->check() && auth()->user()->hasPermission({$permission})): ?>";
        });

        BladeFacade::directive('endpermission', function () {
            return "<?php endif; ?>";
        });

        /**
         * Laravel’in view (görünüm) arama yollarına özel bir klasör ekledik bu sayede controller kısmında view adını vermek yeterli olacaktır.
         * View::prependLocation() kullanılarak öncelikle aracak dosya olarak belirlenebilir.
         */
        View::addLocation(storage_path('app/public/views'));

        /**
         * Modellerin observer dosyaları burada tanımlanarak aktif edilir.
         */
        ApiKeys::observe(ApiKeyObserver::class);
        Blade::observe(BladeObserver::class);
        Brands::observe(BrandsObserver::class);
        Language::observe(LanguageObserver::class);
        Category::observe(CategoryObserver::class);
        Page::observe(PageObserver::class);
        SiteSettings::observe(SiteSettingsObserver::class);
        Seo::observe(SeoObserve::class);
        Certificate::observe(CertificateObserver::class);
        Contacts::observe(ContactsObserver::class);
        Seo::observe(SeoObserve::class);
        MediaUpload::observe(MediaUploadsObserver::class);
        ContactForm::observe(ContactFormObserver::class);
        Faq::observe(FaqObserver::class);
        AuctionCounter::observe(AuctionsCounterObserver::class);
        HomePageManagement::observe(HomePageManagementObserver::class);
        GuestReviews::observe(GuestReviewsObserver::class);

    }
}

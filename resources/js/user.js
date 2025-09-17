import Swiper from 'swiper';
import {Navigation, Pagination, Autoplay, EffectFade} from 'swiper/modules';

import 'swiper/css';
import 'swiper/css/navigation';
import 'swiper/css/pagination';
import 'swiper/css/effect-fade';
import VanillaTilt from "vanilla-tilt";
import 'animate.css';




document.addEventListener('DOMContentLoaded', () => {
    new Swiper('.mainSwiper', {
        modules: [Navigation, Pagination, Autoplay, EffectFade], // Lazy yok burada
        direction: 'horizontal',
        loop: true,
        preloadImages: false,
        effect: 'slide',
        fadeEffect: {
            crossFade: true, // geçişte eski slayt kaybolup yenisi görünür
        },
        autoplay: {
            delay: 5000,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.mainSwiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        scrollbar: {
            el: '.swiper-scrollbar',
        },
        on: {
            slideChangeTransitionStart: function () {
                // Tüm slide img'lerinden animate ve tilt sınıflarını kaldır
                document.querySelectorAll(".swiper-slide img").forEach((el) => {
                    el.classList.remove("animate__animated", "animate__bounceInRight", "animate__bounceInLeft", "tilt-item");
                    el.removeAttribute("data-tilt");
                    void el.offsetWidth; // reflow tetikleme
                });

                // Aktif slide img
                const activeSlide = this.slides[this.activeIndex];
                const img = activeSlide.querySelector("img");
                if (img) {
                    // Animate.css sınıfını ekle
                    const animationClass = img.classList.contains("animate__bounceInLeft") ? "animate__bounceInLeft" : "animate__bounceInRight";
                    img.classList.add("animate__animated", animationClass);

                }
            },
        },
    });
    new Swiper(".brandSwiper", {
        modules: [Navigation, Pagination, Autoplay],
        slidesPerView: 6,
        spaceBetween: 10,
        margin: 25,
        loop: true,
        pagination: {
            el: ".brandSwiper-pagination",
            clickable: true,
        },
        autoplay: {
            delay: 1000,
            centeredSlides: true,
            disableOnInteraction: false,
        },
        breakpoints: {
            0: {
                slidesPerView: 3,
                spaceBetween: 20,
            },
            640: {
                slidesPerView: 3,
                spaceBetween: 20,
            },
            768: {
                slidesPerView: 4,
                spaceBetween: 40,
            },
            1024: {
                slidesPerView: 7,
                spaceBetween: 50,
            },
            1440: {
                slidesPerView: 10,
                spaceBetween: 50,
            },
        },
    });
});





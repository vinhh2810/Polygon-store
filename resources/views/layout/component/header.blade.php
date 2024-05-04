<!DOCTYPE html>
<html lang="vi" xml:lang="vi">
<head>
    <!--CSS-->
    <title>{{ $title_page ?? 'POLYGON' }}</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="{{ asset('view/css/display.min.css') }}" rel="stylesheet"/>
    <link href="{{ asset('view/css/chat.css') }}" rel="stylesheet"/>
    <link href="{{ asset('view/css/animate.min.css') }}" rel="stylesheet"/>
    <link href="{{ asset('view/js/owl.carousel.min.css') }}" rel="stylesheet"/>
    <link href="{{ asset('view/js/Lightbox/lightbox.min.css') }}" rel="stylesheet"/>
    <link href="{{ asset('view/js/slick/slick.css') }}" rel="stylesheet"/>
    <link href="{{ asset('view/css/Common.css') }}" rel="stylesheet"/>
    <!--CSS Responsive-->
    <link href="{{ asset('view/css/css_rwd_common.css') }}" rel="stylesheet"/>
    <link href="{{ asset('view/css/css_rwd.min.css') }}" rel="stylesheet"/>
    <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
    <link href="{{ asset('view/css/dqw.css') }}" rel="stylesheet"/>
    <link href="{{ asset('view/css/news_css_rwd.css') }}" rel="stylesheet"/>
    <!-- toastr -->
    <link rel="stylesheet" href="{{ asset('toastr/toastr.min.css') }}">
    <!-- jquery -->
    <script src="{{ asset('view/js/jquery-1.9.1.min.js') }}"></script>

    <script src="{{ asset('view/js/stv_new.js') }}"></script>
    <link rel="shortcut icon" href="https://dl.dropboxusercontent.com/scl/fi/xgibu7vrwhnd9xi5s41ak/Untitled.png?rlkey=2pjrhhziu1xl7qw3a0d7wluvu&st=3fsd2gpd&dl=0" type="image/x-icon"/>
    @if(session('toastr'))
        <script>
            var TYPE_MESSAGE = "{{session('toastr.type') }}";
            var MESSAGE = "{{session('toastr.message') }}";

        </script>
    @endif
    <script>
        $(function () {
            $(".js-login").on('click', function (event) {
                event.preventDefault();
                toastr.warning('Bạn cần đăng nhập');
            })
            $(window).bind("load", function () {
                jQuery("#status").fadeOut();
                jQuery("#loader").fadeOut();
            });
        })
    </script>
</head>

<body>
<!-- Messenger Chat plugin Code -->
<div id="fb-root"></div>
<script>
    window.fbAsyncInit = function () {
        FB.init({
            xfbml: true,
            version: 'v10.0'
        });
    };

    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s);
        js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>

<!-- Your Chat plugin code -->
<div class="fb-customerchat"
     attribution="page_inbox"
     page_id="103980634638551">
</div>
@include('layout.component.chat')
<div id='status'></div>
<div id='loader'></div>
<div id="commonHead">
    <div class="wrp">
        <h1 class="textLeft dnTablet-l">Tổ ấm của người tinh tế</h1>
        <form action="{{ route('get.product.index') }}" class="frmSearch" method="get">
            <div class="flex">
                <input type="text" name="keyword" id="keyword" value="{{ Request('keyword') }}"
                       placeholder="Nhập từ khóa tìm kiếm..."/>
                <button class="btnSearch"><i class="fa fa-search"></i></button>
            </div>
        </form>
        <ul class="menuRight dnTablet-l">
            @if (Auth::check())
                <li><a href="{{ route('get.user.orders', ['status' => 0]) }}" title="Home">Đơn hàng</a></li>
                <li><a href="{{ route('get.user.index')}}">{{Auth::user()->name}}</a></li>
                <li><a href="{{ route('get.logout') }}">Đăng xuất</a></li>
            @else
                <li><a href="{{ route('get.login') }}">Đăng nhập</a></li>
                <li><a href="{{ route('get.register') }}">Đăng ký</a></li>
            @endif
        </ul>
    </div>
</div>
<div id="header">
    <div class="wrp">
        <a href="/" title="Home" class="logo">
            <img src="{{ asset('view/img/logo.png') }}" alt="Logo" class="logo"/>
        </a>
        <div id="menuMain">
            <ul>
                <li class="hasChild">
                    <a href="javascript:" title="Nội thất">Phòng Khách</a>
                    <ul>
                        <li>
                            <div class="subMenu" style="width: 250px;">
                                <div class="group">
                                    <div class="item">
                                        @foreach($category as $listcate)
                                            @if($listcate->c_cate == 'living')
                                                <a href="{{ route('get.category.detail',$listcate->c_slug.'-'.$listcate->id) }}">{{ $listcate->c_name}}</a>
                                            @endif
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:" title="Kinh mat thoi trang">Phòng Ngủ</a>
                    <ul>
                        <li>
                            <div class="subMenu" style="width: 250px;">
                                <div class="group">
                                    <div class="item">
                                        @foreach($category as $listcate)
                                            @if($listcate->c_cate == 'bed')
                                                <a href="{{ route('get.category.detail',$listcate->c_slug.'-'.$listcate->id) }}">{{ $listcate->c_name}}</a>
                                            @endif
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="hasChild">
                    <a href="javascript:" title="Nội thất">Phòng Ăn</a>
                    <ul>
                        <li>
                            <div class="subMenu" style="width: 250px;">
                                <div class="group">
                                    <div class="item">
                                        @foreach($category as $listcate)
                                            @if($listcate->c_cate == 'dining')
                                                <a href="{{ route('get.category.detail',$listcate->c_slug.'-'.$listcate->id) }}">{{ $listcate->c_name}}</a>
                                            @endif
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:" title="Phu kien dong ho">HÀNG TRANG TRÍ</a>
                    <ul>
                        <li>
                            <div class="subMenu" style="width: 250px;">
                                <div class="group">
                                    <div class="item">
                                        @foreach($category as $listcate)
                                            @if($listcate->c_cate == 'decorating')
                                                <a href="{{ route('get.category.detail',$listcate->c_slug.'-'.$listcate->id) }}">{{ $listcate->c_name}}</a>
                                            @endif
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="hasChild">
                    <a href="javascript:" title="Nội thất">Ngoại Thất</a>
                    <ul>
                        <li>
                            <div class="subMenu" style="width: 250px;">
                                <div class="group">
                                    <div class="item">
                                        @foreach($category as $listcate)
                                            @if($listcate->c_cate == 'exterior')
                                                <a href="{{ route('get.category.detail',$listcate->c_slug.'-'.$listcate->id) }}">{{ $listcate->c_name}}</a>
                                            @endif
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="right">
            <a href="tel:18006005" class="item">
                <span class="icon">
                    <img src="{{ asset('view/img/hotline.png') }}" alt="Hotline"/>
                </span>
                <span class="text">
                    <span class="top">Hotline</span>
                    <span class="bot">077199841</span>
                </span>
            </a>
            <a href="{{ route('get.shopping.index')}}" class="btnCart">
                <i class="fa fa-shopping-cart"></i>
                <span class="number">{{  Cart::count() }}</span>
            </a>
        </div>
    </div>
</div>
<!-- <div class="zalo-chat-widget" data-oaid="3317742618024098879" data-welcome-message="Rất vui khi được hỗ trợ bạn!" data-autopopup="0" data-width="300" data-height="300"> </div> -->

<script src="https://sp.zalo.me/plugins/sdk.js"> </script> 
<!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<script>
    window.fbAsyncInit = function () {
        FB.init({
            xfbml: true,
            version: 'v10.0'
        });
    };

    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s);
        js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

<!-- Your Chat Plugin code -->
<div class="fb-customerchat"
     attribution="setup_tool"
     page_id="103980634638551">
</div>

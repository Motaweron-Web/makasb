<header>
    <nav class="navbar navbar-expand-xxl navbar-light navTop homenav">
        <div class="container ">
            <a class="navbar-brand logo ms-3" href="#"
            ><img class="LogoBrand" src="{{asset('assets/site/img')}}/logo.png" alt=""
                /></a>
            <button
                class="navbar-toggler togglers"
                id="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
            >
                <i class="fa-solid fa-bars-staggered"></i>

            </button>
            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav mx-auto mb-3 mb-lg-0 navTopLink  ">
                    <li class="nav-item ">
                        <a
                            class="nav-link me-3"
                            data-scroll="Home"
                            aria-current="page"
                            href="{{route('MySites')}}"
                        >{{trans('site.my_sites')}}</a
                        >
                    </li>
                    <li class="nav-item me-3 ">
                        <a class="nav-link" data-scroll="Features" href="{{route('subscription')}}">{{trans('site.subscription')}}</a>
                    </li>
                    <li class="nav-item me-3 ">
                        <a class="nav-link" data-scroll="coins" href="{{route('buyPoints')}}"> {{trans('site.buy_points')}}</a>
                    </li>
                    <li class="nav-item dropdown ">
                        <a
                            class="nav-link dropdown-toggle Facebook"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                        >
                            <i class="fa-brands fa-facebook-square me-1"></i>{{trans('site.facebook')}}
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="{{route('facebookShare')}}"> {{trans('site.facebook_share')}} </a></li>
                            <li>
                                <a class="dropdown-item" href="{{route('facebookFollowers')}}"> {{trans('site.facebook_followers')}} </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="{{route('facebookPostLike')}}"> {{trans('site.facebook_post_like')}}  </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="{{route('facebookPostShare')}}">{{trans('site.facebook_post_share')}}  </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown ">
                        <a
                            class="nav-link dropdown-toggle Instagram"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                        >
                            <i class="fa-brands fa-instagram me-1"></i> {{trans('site.instagram')}}
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li>
                                <a class="dropdown-item" href="{{route('instagram.followers')}}">{{trans('site.instagram_followers')}}  </a>
                            </li>
                            <li><a class="dropdown-item" href="{{route('instagram.likes')}}">{{trans('site.instagram_like')}}  </a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown ">
                        <a
                            class="nav-link dropdown-toggle Twitter"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                        >
                            <i class="fa-brands fa-twitter me-1"></i>{{trans('site.twitter')}}
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="{{route('twitter.tweets')}}"> {{trans('site.twitter_tweets')}}    </a></li>
                            <li>
                                <a class="dropdown-item" href="{{route('twitter.followers')}}">{{trans('site.twitter_followers')}}  </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="{{route('twitter.retweets')}}">{{trans('site.twitter_retweets')}}  </a>
                            </li>
                            <li><a class="dropdown-item" href="{{route('twitter.likes')}}">{{trans('site.twitter_likes')}}  </a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown ">
                        <a
                            class="nav-link dropdown-toggle YouTube"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                        >
                            <i class="fa-brands fa-youtube me-1"></i>{{trans('site.youtube')}}
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li>
                                <a class="dropdown-item" href="{{route('youtube.index','subscribe')}}">{{trans('site.youtube_subscribe')}}  </a>
                            </li>
                            <li><a class="dropdown-item" href="{{route('youtube.index','likes')}}">{{trans('site.youtube_likes')}}  </a></li>
                            <li><a class="dropdown-item" href="{{route('youtube.index','views')}}">{{trans('site.youtube_views')}} </a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown ">
                        <a
                            class="nav-link dropdown-toggle TikTok"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                        >
                            <i class="fa-brands fa-tiktok me-1"></i>{{trans('site.tiktok')}}
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li>
                                <a class="dropdown-item" href="{{route('tiktok.index','followers')}}">{{trans('site.tiktok_followers')}} </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="{{route('tiktok.index','likes')}}">{{trans('site.tiktok_video_likes')}}  </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown ">
                        <a
                            class="nav-link dropdown-toggle SoundCloud"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                        >
                            <i class="fa-brands fa-soundcloud me-1"></i>{{trans('site.soundcloud')}}
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li>
                                <a class="dropdown-item" href="{{route('soundcloud.index','likes')}}">{{trans('site.soundcloud_likes')}} </a>
                            </li>
                            <li>
                                <a class="dropdown-item " href="{{route('soundcloud.index','follows')}}">{{trans('site.soundcloud_follow')}} </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="{{route('soundcloud.index','plays')}}">{{trans('site.soundcloud_plays')}} </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown ">
                        <a
                            class="nav-link dropdown-toggle"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                        >
                            {{trans('site.other')}}
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item " href="{{route('otherSites.index','redditUpvotes')}}">Reddit Upvotes</a></li>
                            <li><a class="dropdown-item" href="{{route('otherSites.index','redditMembers')}}">Reddit Members</a></li>
                            <li>
                                <a class="dropdown-item" href="{{route('otherSites.index','telegram')}}">{{trans('site.telegram_channels')}}  </a>
                            </li>
                            <li><a class="dropdown-item" href="{{route('otherSites.index','pinterestSave')}}">Pinterest Save</a></li>
                            <li>
                                <a class="dropdown-item" href="{{route('otherSites.index','pinterestFollowers')}}">Pinterest Followers</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="{{route('otherSites.index','vkontakteGroups')}}">Vkontakte Groups</a>
                            </li>
                            <li><a class="dropdown-item" href="{{route('otherSites.index','vkontaktePages')}}">Vkontakte Pages</a></li>
                            <li>
                                <a class="dropdown-item" href="{{route('otherSites.index','okGroup')}}"> OK.ru Group Join</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="{{route('otherSites.index','Reverbnation')}}">Reverbnation Fans</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>


        </div>
    </nav>
</header>

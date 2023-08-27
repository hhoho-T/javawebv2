<%@page import="com.cdbk.qlsv.bmagbooklop1.entity.Profile"%>
<!DOCTYPE html>
<html>

<head>
    <title>BMAGBOOK - Connect your world</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="css/main.css">
</head>

<body>
    <%
        Profile user = (Profile)session.getAttribute("user");
    %>
    <nav class="container-fluid" id="main-nav-user-home">
        <div class="row">
            <div class="col-md-6" id="user-tools-left">
                <a id="main-logo">B</a>
                <div id="search-box">
                    <input type="text" name="search-friend">
                    <button><i class="fa fa-search"></i></button>
                </div>
            </div>
            <div class="col-md-6" id="user-tools-right">
                <ul>
                    <li>
                        <a href="/"><img src="img/avatar.jpg"> An</a>
                    </li>
                    <li><a href="/">Home <span>20+</span></a></li>
                    <li>
                        <a href="/"><i class="fa fa-users" aria-hidden="true"></i></a>
                        <span class="mess-notif">9</span>
                    </li>
                    <li>
                        <a id="show-chat-box-button" href="/"><i class="fa fa-weixin" aria-hidden="true"></i></a>
                        <span class="mess-notif">25</span>
                    </li>
                    <li>
                        <a href="/"><i class="fa fa-globe" aria-hidden="true"></i></a>
                        <span class="mess-notif">5</span>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <section class="container-fluid" id="main-body">
        <div class="row no-pad">
            <div class="col-md-2 no-pad">
                <div class="left-tool-section">
                    <a href="">
                        <img src="img/avatar.jpg"> <%= user.getLast_name() +" "+ user.getFirst_name()%>
                    </a>
                    <a href=""><i class="fa fa-pencil" aria-hidden="true"></i> Edit Profile</a>
                </div>

                <div class="left-tool-section">
                    <h4>FAVORITES</h4>
                    <a href=""><i class="fa fa-newspaper-o" aria-hidden="true"></i> News Feed</a>
                    <a href=""><i class="fa fa-globe" aria-hidden="true"></i> Messages</a>
                    <a href=""><i class="fa fa-weixin" aria-hidden="true"></i> Events</a>
                    <a href=""><i class="fa fa-life-ring" aria-hidden="true"></i> Sales Group</a>
                </div>

                <div class="left-tool-section">
                    <h4>FRIENDS</h4>
                    <a href=""><i class="fa fa-location-arrow" aria-hidden="true"></i> Ho Chi Minh City</a>
                    <a href=""><i class="fa fa-graduation-cap" aria-hidden="true"></i> Truong THPT Le Hong Phong</a>
                    <a href=""><i class="fa fa-building" aria-hidden="true"></i> GSC Corporation</a>
                    <a href=""><i class="fa fa-graduation-cap" aria-hidden="true"></i> BMAG</a>
                </div>

                <div class="left-tool-section">
                    <h4>APPS</h4>
                    <a href=""><i class="fa fa-industry" aria-hidden="true"></i> Live Videos</a>
                    <a href=""><i class="fa fa-gamepad" aria-hidden="true"></i> Games</a>
                    <a href=""><i class="fa fa-heart-o" aria-hidden="true"></i> On This Day</a>
                    <a href=""><i class="fa fa-picture-o" aria-hidden="true"></i> Photos</a>
                    <a href=""><i class="fa fa-gamepad" aria-hidden="true"></i> Games Feed</a>
                </div>

                <div class="left-tool-section">
                    <h4>EVENTS</h4>
                    <a href=""><i class="fa fa-bicycle" aria-hidden="true"></i> Live Videos</a>
                    <a href=""><i class="fa fa-music" aria-hidden="true"></i> Musics</a>
                    <a href=""><i class="fa fa-fax" aria-hidden="true"></i> Re-Union</a>
                    <a href=""><i class="fa fa-deaf" aria-hidden="true"></i> Company Trips</a>
                    <a href=""><i class="fa fa-credit-card-alt" aria-hidden="true"></i> Family Trips</a>
                </div>
            </div>
            <div class="col-md-5 no-pad">
                <div class="middle-section" id="post-form">
                    <div id="post-form-header">
                        <a href="#" id="button-upload-photo">
                            <i class="fa fa-file-image-o" aria-hidden="true"></i> Photo/Camera
                            <input type="file" class="masked-file-input" id="myfile" name="upload" />
                        </a>
                        |
                        <a href="#">
                            <i class="fa fa-file-video-o" aria-hidden="true"></i> Photo/Video Album
                        </a>
                        <span id="post-form-close-button">x</span>
                    </div>
                    <div id="post-form-body">
                        <img src="img/avatar_post.jpg">
                        <div id="post-form-editor" contenteditable>

                        </div>
                    </div>
                    <div id="post-form-footer">
                        <div class="row no-pad">
                            <div class="col-md-6 no-pad">
                                <a href="">
                                    <i class="fa fa-user-plus" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-smile-o" aria-hidden="true"></i>
                                </a>
                            </div>
                            <div class="col-md-6 no-pad" style="text-align:right;">
                                <a href="#" id="button-public">
                                    <i class="fa fa-globe" aria-hidden="true"></i> Public <i class="fa fa-caret-down" aria-hidden="true"></i>
                                </a>
                                <a href="#" id="button-post">
                                    Post
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="middle-section user-post">
                    <div class="user-post-header">
                        <img src="img/user.jpg">
                        <span>
                            <a href="/">Nguyễn Quốc Bảo</a>
                            <p class="help-block">22hrs <i class="fa fa-globe" aria-hidden="true"></i></p>
                        </span>
                    </div>
                    <div class="user-post-body">
                        Mưa gió bão bùng, làm bát phở là ấm lòng. P/S: bác sĩ là người dưng, dạ dày mới là người thân. :v
                        <img src="img/sample.jpg">
                    </div>

                    <div class="user-post-tool">
                        <a href=""><i class="fa fa-thumbs-up" aria-hidden="true"></i> Like</a>
                        <a href=""><i class="fa fa-comment" aria-hidden="true"></i> Comment</a>
                        <a href=""><i class="fa fa-share" aria-hidden="true"></i> Share</a>
                    </div>
                    <div class="user-post-info">
                        <span class="like-icon"><i class="fa fa-thumbs-up" aria-hidden="true"></i></span>
                        <a href="">Lê Thị Cà Chua, Trần Văn Ớt and 18 Others</a>
                    </div>

                    <div class="user-post-comment-list">
                        <div class="user-post-comment-item">
                            <img src="img/user-comment1.jpg">
                            <span>
                                <a href="/">Cà Chua</a> Mỡ ghê quá, ăn chắc ói chết
                                <div class="help-block">
                                    <a href="#">Like</a>.
                                    <a href="#">Reply</a>.
                                    21 hrs
                                </div>
                            </span>
                            <div class="user-post-reply-item">
                                <i class="fa fa-share" aria-hidden="true"></i>
                                <img src="img/user-comment3.jpg">
                                <a href="">Nguyễn Loan . 20 replies</a>
                            </div>
                        </div>
                        <div class="user-post-comment-item">
                            <img src="img/user_comment2.jpg">
                            <span>
                                <a href="/">Trần Văn Ớt</a> Tô này ăn xong ba ngày sau chưa dám ăn lại
                                <div class="help-block">
                                    <a href="#">Like</a>.
                                    <a href="#">Reply</a>.
                                    21 hrs
                                </div>
                            </span>
                        </div>
                        <div class="user-post-comment-item">
                            <img src="img/user-comment3.jpg">
                            <span>
                                <a href="/">Hạ Nhi</a> Tô này ăn xong ba ngày sau chưa dám ăn lại
                                <div class="help-block">
                                    <a href="#">Like</a>.
                                    <a href="#">Reply</a>.
                                    <span class="like-icon-small"><i class="fa fa-thumbs-up" aria-hidden="true"></i></span>. 21 hrs
                        </div>
                        </span>
                    </div>
                </div>

                <div class="user-post-reply-form">
                    <img src="img/avatar.jpg">
                    <div class="user-post-reply-editor" contenteditable="true">

                    </div>
                    <span>
                            <i class="fa fa-picture-o" aria-hidden="true"></i>
                            <input type="file" class="masked-file-input" name="upload-2"/>
                        </span>
                    <span>
                            <i class="fa fa-smile-o" aria-hidden="true"></i>
                        </span>

                </div>
            </div>
        </div>
        <div class="col-md-3 no-pad">
            <div class="middle-right-section">
                <div class="middle-right-section-header">
                    <span>
                            <i class="fa fa-gift" aria-hidden="true"></i>
                            <a href="#">3 event invitations today</a>
                        </span>
                    <span>
                            <i class="fa fa-calendar" aria-hidden="true"></i>
                            <a href="">Lê Thị Cà Chua</a>'s birthday is today
                        </span>
                </div>
                <div class="middle-right-section-body">
                    <div class="middle-right-section-body-title">
                        <label>PEOPLE YOU MAY KNOW</label>
                        <a href="#">See All</a>
                    </div>
                    <div class="friend-item">
                        <img src="img/friend1.jpg">
                        <span>
                                <a href="#">Trần Xuân Khôi</a> 
                                <span style="display:block;">123 mutual friends </span>
                        <button><i class="fa fa-user-plus" aria-hidden="true"></i> Add friend</button>
                        </span>
                        <a href="#" class="ignore-friend"><i class="fa fa-times" aria-hidden="true"></i></a>
                    </div>

                    <div class="friend-item">
                        <img src="img/friend2.jpg">
                        <span>
                                <a href="#">Trần Văn Ớt</a> 
                                <span style="display:block;">Le Thi Ca Chua ...</span>
                        <button><i class="fa fa-user-plus" aria-hidden="true"></i> Add friend</button>
                        </span>
                        <a href="#" class="ignore-friend"><i class="fa fa-times" aria-hidden="true"></i></a>
                    </div>

                    <div class="friend-item">
                        <img src="img/friend3.jpg">
                        <span>
                                <a href="#">Lê Xuân Xoạn</a> 
                                <span style="display:block;">A mutual friend...</span>
                        <button><i class="fa fa-user-plus" aria-hidden="true"></i> Add friend</button>
                        </span>
                        <a href="#" class="ignore-friend"><i class="fa fa-times" aria-hidden="true"></i></a>
                    </div>

                    <div class="friend-item">
                        <img src="img/friend2.jpg">
                        <span>
                                <a href="#">Trần Văn Ớt</a> 
                                <span style="display:block;">A mutual friend...</span>
                        <button><i class="fa fa-user-plus" aria-hidden="true"></i> Add friend</button>
                        </span>
                        <a href="#" class="ignore-friend"><i class="fa fa-times" aria-hidden="true"></i></a>
                    </div>

                    <div class="friend-item">
                        <img src="img/friend3.jpg">
                        <span>
                                <a href="#">Trần Văn Ớt</a> 
                                <span style="display:block;">A mutual friend...</span>
                        <button><i class="fa fa-user-plus" aria-hidden="true"></i> Add friend</button>
                        </span>
                        <a href="#" class="ignore-friend"><i class="fa fa-times" aria-hidden="true"></i></a>
                    </div>

                    <div class="friend-item">
                        <img src="img/friend1.jpg">
                        <span>
                                <a href="#">Trần Văn Ớt</a> 
                                <span style="display:block;">A mutual friend...</span>
                        <button><i class="fa fa-user-plus" aria-hidden="true"></i> Add friend</button>
                        </span>
                        <a href="#" class="ignore-friend"><i class="fa fa-times" aria-hidden="true"></i></a>
                    </div>
                    <div class="friend-item">
                        <img src="img/friend3.jpg">
                        <span>
                                <a href="#">Trần Văn Ớt</a> 
                                <span style="display:block;">A mutual friend...</span>
                        <button><i class="fa fa-user-plus" aria-hidden="true"></i> Add friend</button>
                        </span>
                        <a href="#" class="ignore-friend"><i class="fa fa-times" aria-hidden="true"></i></a>
                    </div>
                    <div class="friend-item">
                        <img src="img/friend3.jpg">
                        <span>
                                <a href="#">Trần Văn Ớt</a> 
                                <span style="display:block;">A mutual friend...</span>
                        <button><i class="fa fa-user-plus" aria-hidden="true"></i> Add friend</button>
                        </span>
                        <a href="#" class="ignore-friend"><i class="fa fa-times" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-2 no-pad">
            <div id="online-list">
                <div id="friend-detail-popup">
                    <span id="back-triange"></span>
                    <span id="front-triange"></span>
                    <img src="img/profile.jpg">
                    <div id="friend-detail-popup-detail">
                        <p>
                            <a href="/">Nguyễn Quốc Bảo</a>
                            <span>36 followers</span>
                        </p>
                        <p>
                            <i class="fa fa-user-plus" aria-hidden="true"></i> Became friends with <br><a href="/">Hien Tran and 3 others...</a>
                        </p>
                        <p>
                            <i class="fa fa-user-plus" aria-hidden="true"></i> Became friends with <br><a href="/">Ca Chua and 3 others...</a>
                        </p>
                    </div>
                </div>
                <ul>
                    <li>
                        <img src="img/friend1.jpg">
                        <span>Trung Hiếu</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/friend2.jpg">
                        <span>Hồng Ngọc</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/friend3.jpg">
                        <span>Ca Chua</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/avatar.jpg">
                        <span>Hà An</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/user-comment1.jpg">
                        <span>Hồng Ngọc</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/user_comment2.jpg">
                        <span>Hải Sơn</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/user-comment3.jpg">
                        <span>Hà Giang</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/friend1.jpg">
                        <span>Trung Hiếu</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/friend2.jpg">
                        <span>Hồng Ngọc</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/friend3.jpg">
                        <span>Ca Chua</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/avatar.jpg">
                        <span>Hà An</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/user-comment1.jpg">
                        <span>Hồng Ngọc</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/user_comment2.jpg">
                        <span>Hải Sơn</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/user-comment3.jpg">
                        <span>Hà Giang</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/friend1.jpg">
                        <span>Trung Hiếu</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/friend2.jpg">
                        <span>Hồng Ngọc</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/friend3.jpg">
                        <span>Ca Chua</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/avatar.jpg">
                        <span>Hà An</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/user-comment1.jpg">
                        <span>Hồng Ngọc</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/user_comment2.jpg">
                        <span>Hải Sơn</span>
                        <span></span>
                    </li>
                    <li>
                        <img src="img/user-comment3.jpg">
                        <span>Hà Giang</span>
                        <span></span>
                    </li>
                </ul>
            </div>
        </div>
        </div>
        <section id="chat-box">
            <div id="chat-box-header">
                <a href="/">Cà Chua</a>
                <span>
                    <i class="fa fa-plus" aria-hidden="true"></i>
                    <i class="fa fa-camera" aria-hidden="true"></i>
                    <i class="fa fa-volume-control-phone" aria-hidden="true"></i>
                    <i class="fa fa-cog" aria-hidden="true"></i>
                    <i id="close-chat-box-button" class="fa fa-times" aria-hidden="true"></i>
                </span>
            </div>
            <div id="chat-box-content-wrapper">
                <div id="chat-box-content">
                </div>
                <div id="chat-box-editor" contenteditable="true"></div>
            </div>
            <div id="chat-box-editor-tool">
                <span>
                    <i class="fa fa-picture-o" aria-hidden="true"></i>
                    <i class="fa fa-paperclip" aria-hidden="true"></i>
                    <i class="fa fa-smile-o" aria-hidden="true"></i>
                    <i class="fa fa-hand-peace-o" aria-hidden="true"></i>
                </span>
                <span>
                    <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                </span>
            </div>
        </section>
    </section>

    <!--Confirm dialog -This must be the child of body-->
    <div id="dialog-confirm">
        <div id="dialog-confirm-header">
            <a href="#" id="dc-btn-close">Close</a>
        </div>
        <div id="dialog-confirm-body">
            <p>Are you sure you want to remove this friend?</p>
            <p>Becareful! Because you will not be able to see this person again</p>
            <p>Why don't you take some time to think about this action?</p>
        </div>
        <div id="dialog-confirm-footer">
            <a href="#" id="dc-btn-yes">Yes, I do</a>
            <a href="#" id="dc-btn-no">No, This is a mistake</a>
            <a href="#" id="dc-btn-cancel">Cancel</a>
        </div>
    </div>

    <script>
        $(function() {
            var viewportHeight = $(window).height();
            $("#online-list ul").css("max-height", viewportHeight);
        });
    </script>
    <script src="js/app.js"></script>
</body>

</html>

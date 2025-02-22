<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>pulse - Music, Audio and Radio web application</title>
  <meta name="description" content="Music, Musician, Bootstrap" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimal-ui" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <!-- for ios 7 style, multi-resolution icon of 152x152 -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent">
  <link rel="apple-touch-icon" href="resources/images/logo.png">
  <meta name="apple-mobile-web-app-title" content="Flatkit">
  <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
  <meta name="mobile-web-app-capable" content="yes">
  <link rel="shortcut icon" sizes="196x196" href="resources/images/logo.png">
  
  <!-- style -->
  <link rel="stylesheet" href="resources/css/animate.css/animate.min.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/glyphicons/glyphicons.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/font-awesome/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/material-design-icons/material-design-icons.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/bootstrap/dist/css/bootstrap.min.css" type="text/css" />
  <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="resources/css/styles/style1.css" />
  

  <!-- build:css resources/css/styles/app.min.css -->
  <link rel="stylesheet" href="resources/css/styles/app.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/styles/style.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/styles/font.css" type="text/css" />
  
  <link rel="stylesheet" href="resources/libs/owl.carousel/dist/assets/owl.carousel.min.css" type="text/css" />
  <link rel="stylesheet" href="resources/libs/owl.carousel/dist/assets/owl.theme.css" type="text/css" />
  <link rel="stylesheet" href="resources/libs/mediaelement/build/mediaelementplayer.min.css" type="text/css" />
  <link rel="stylesheet" href="resources/libs/mediaelement/build/mep.css" type="text/css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
  
 

  <!-- endbuild -->
</head>
<body>
  
  <div class="app dk" id="app">

<!-- ############ LAYOUT START-->
<div id="play" class="app-aside modal fade nav-dropdown">
    <!-- fluid app aside -->
    <div class="bottom navside grey dk" data-layout="column">
      <div class="navbar no-radius">
        <!-- brand -->
        <a href="player.do" class="navbar-brand md">
        	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="32" height="32">
        		<circle cx="24" cy="24" r="24" fill="rgba(255,255,255,0.2)"/>
        		<circle cx="24" cy="24" r="22" fill="#1c202b" class="brand-color"/>
        		<circle cx="24" cy="24" r="10" fill="#ffffff"/>
        		<circle cx="13" cy="13" r="2"  fill="#ffffff" class="brand-animate"/>
        		<path d="M 14 24 L 24 24 L 14 44 Z" fill="#FFFFFF" />
        		<circle cx="24" cy="24" r="3" fill="#000000"/>
        	</svg>
        
        	<img src="resources/images/logo.png" alt="." class="hide">
        	<span class="hidden-folded inline">SoulFull</span>
        </a>
		<a data-dismiss="modal" class="text-muted text-lg1 p-x modal-close-btn">&times;</a>
        <!-- / brand -->
	</div>
  <div class="page_two">
  
    <main class="page_two__main">
     
        <div class="padding" style="width:100%; height: 200px;">
          <div style="width: 50%;  float: left; text-align: center;"">
            <div class="legend-div">
              <canvas id="pieChartCanvas2" style="width:150px; height:150px;"></canvas>
              
            </div>
            <h6 class="gg" style="text-align: center; margin-top: 12px; width: 100%;">감정 분석 결과</h6>
          </div>
          <div style="width: 50%; float:right; padding-top: 15px;">
            <div id='legend-div2' class="legend-div" style="text-align: center;">

            </div>
          </div>
        </div>
        <div class="padding" style="width:100%; height: 200px;">
          <div style="width: 50%; text-align: center; float: left;">
            <div class="legend-div">
              <canvas id="pieChartCanvas3" width="150px" height="150px"></canvas>
              
            </div>
            <h6 class="gg" style="text-align: center; margin-top: 12px; width: 100%;">분위기 분석 결과</h6>
          </div>
          <div style="width: 50%; float:right; padding-top: 15px;">
            <div id='legend-div3' class="legend-div"  style="text-align: center;">

            </div>
          </div>
        </div>
        <div class="b-b m-y1" style="width: 100%; margin: 10px 0;"></div>
      <div class="page_two__main__current_music_info">
        <span class="currrent_music_info__title">Lullaby</span>
        <span class="currrent_music_info__singer text-muted">적재</span>
      </div>
      <div class="page_two__main__play_time">
        <span>2:13</span>
        <span>3:28</span>
      </div>
      <div class="page_two__main__time_bar">
        <div class="time_bar__time_stamp"></div>
        <i class="fas fa-circle"></i>
      </div>
      <div class="page_two__main__controller">
        <i class="fas fa-sync-alt" style="color: whitesmoke;"></i>
        <button type="button" class="btn btn bg" style="color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_previous</i></button>
        <button class="btn-playpause" style="margin: 10px;">Play</button>
        <button type="button" class="btn btn bg" style=" color:#ffffffde;"><i class="material-icons" style="color: whitesmoke; font-size: 35px;">skip_next</i></button>
        <i class="fas fa-random" style="color: whitesmoke"></i>
      </div>
    </main>
  </div>
		


		  </div>
  </div>

 <!-- aside -->
 <div id="aside" class="app-aside modal fade nav-dropdown">
  <!-- fluid app aside -->
  <div class="left navside dark dk" data-layout="column">
    <div class="navbar no-radius">
      <!-- brand -->
      <a href="player.do" class="navbar-brand md">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="32" height="32">
          <circle cx="24" cy="24" r="24" fill="rgba(255,255,255,0.2)"/>
          <circle cx="24" cy="24" r="22" fill="#1c202b" class="brand-color"/>
          <circle cx="24" cy="24" r="10" fill="#ffffff"/>
          <circle cx="13" cy="13" r="2"  fill="#ffffff" class="brand-animate"/>
          <path d="M 14 24 L 24 24 L 14 44 Z" fill="#FFFFFF" />
          <circle cx="24" cy="24" r="3" fill="#000000"/>
        </svg>
      
        <img src="resources/images/logo.png" alt="." class="hide">
        <span class="hidden-folded inline">SoulFull</span>
      </a>
      <!-- / brand -->
</div>
<div data-flex class="hide-scroll">
  <nav class="scroll nav-stacked nav-active-primary">
    
    <ul class="nav" data-ui-nav>
      <li class="nav-header hidden-folded">
      <span class="text-xs text-muted">Main</span>
      </li>
      <li>
      <a href="player.do">
        <span class="nav-icon">
        <i class="material-icons">
          play_circle_outline
        </i>
        </span>
        <span class="nav-text">음악추천</span>
      </a>
      </li>
      <li>
      <a href="browse.html">
        <span class="nav-icon">
        <i class="material-icons">
          sort
        </i>
        </span>
        <span class="nav-text">장르 별</span>
      </a>
      </li>
      <li>
      <a href="chart.html">
        <span class="nav-icon">
        <i class="material-icons">
          trending_up
        </i>
        </span>
        <span class="nav-text">Top 10</span>
      </a>
      </li>
    
      <li>
      <a data-toggle="modal" data-target="#search-modal">
        <span class="nav-icon">
        <i class="material-icons">
          search
        </i>
        </span>
        <span class="nav-text">검색</span>
      </a>
      </li>
      
    
      <li class="nav-header hidden-folded m-t">
      <span class="text-xs text-muted">Your collection</span>
      </li>
      <li>
      <a href="profile.html#tracks">
        <span class="nav-label">
        <b class="label">8</b>
        </span>
        <span class="nav-icon">
        <i class="material-icons">
          list
        </i>
        </span>
        <span class="nav-text">나의 앨범</span>
      </a>
      </li>
      <li>
      <a href="profile.html#playlists">
        <span class="nav-icon">
        <i class="material-icons">
          queue_music
        </i>
        </span>
        <span class="nav-text">재생목록</span>
      </a>
      </li>
      <li>
      <a href="profile.html#playlists">
        <span class="nav-icon">
        <i class="material-icons">
          book
        </i>
      </span>
        <span class="nav-text">가사 모음집</span>
      </a>
    </li>
    <li>
      <a href="profile.html#profile">
        <span class="nav-icon">
        <i class="material-icons">
          account_circle
        </i>
        </span>
        <span class="nav-text">내 정보</span>
      </a>
    </li>
      <!--공백-->
      <li>
        <span class="area1"></span>
      </li>
      <!--공백끝-->
      <li>
      <a href="signin.html">
        <span class="nav-icon">
        <i class="fa fa-play">
          
        </i>
        </span>
        <span class="nav-text">로그인</span>
      </a>
      </li>
      <li>
      <a href="signup.html">
        <span class="nav-icon">
        <i class="material-icons">
          person_add
        </i>
        </span>
        <span class="nav-text">회원가입</span>
      </a>
      </li>
      <li>
      <a href="#">
        <span class="nav-icon">
        <i class="material-icons">
          stop
        </i>
        </span>
        <span class="nav-text">로그아웃</span>
      </a>
      </li>

    </ul>
    </nav>
  </div>
  <div data-flex-no-shrink>
    <div class="nav-fold dropup">
    <a data-toggle="dropdown">
      <span class="pull-left">
        <img src="resources/images/a3.jpg" alt="..." class="w-32 img-circle">
      </span>
      <span class="clear hidden-folded p-x p-y-xs">
        <span class="block _500 text-ellipsis">Rachel Platten</span>
      </span>
    </a>
    <div class="dropdown-menu w dropdown-menu-scale ">
      <a class="dropdown-item" href="profile.html#profile">
      <span>나의 정보</span>
      </a>
      <a class="dropdown-item" href="profile.html#tracks">
      <span>나의 앨범</span>
      </a>
      <a class="dropdown-item" href="profile.html#playlists">
      <span>나의 플레이리스트</span>
      </a>
      <a class="dropdown-item" href="profile.html#likes">
      <span>좋아요</span>
      </a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="docs.html">
      도와드릴까요?
      </a>
      <a class="dropdown-item" href="signin.html">로그아웃</a>
    </div>
    </div>
    
  </div>
  </div>
</div>
<!-- / -->

<!-- content -->
<div id="content" class="app-content dark bg box-shadow-z2" role="main">
  <div class="app-header hidden-lg-up dark lt box-shadow-z1">
      <div class="navbar">
      <!-- brand -->
      <a href="player.do" class="navbar-brand md">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="32" height="32">
          <circle cx="24" cy="24" r="24" fill="rgba(255,255,255,0.2)"/>
          <circle cx="24" cy="24" r="22" fill="#1c202b" class="brand-color"/>
          <circle cx="24" cy="24" r="10" fill="#ffffff"/>
          <circle cx="13" cy="13" r="2"  fill="#ffffff" class="brand-animate"/>
          <path d="M 14 24 L 24 24 L 14 44 Z" fill="#FFFFFF" />
          <circle cx="24" cy="24" r="3" fill="#000000"/>
        </svg>
      
        <img src="resources/images/logo.png" alt="." class="hide">
        <span class="hidden-folded inline">SoulFull</span>
      </a>
  
      <!-- / brand -->
      <!-- nabar right 상단 nav bar-->
  <ul class="nav navbar-nav pull-right">
    
    <a data-toggle="modal" data-target="#imoji-modal" >
      <span class="nav-icon1">
      <i class="material-icons">
      mood
      </i>
      </span>
    
      </a>
      <a data-toggle="modal" data-target="#search-modal" >
      <span class="nav-icon1">
        <i class="material-icons">
        search
        </i>
      </span>
      
      </a>

      <li class="nav-item">
        <!-- Open side - Naviation on mobile -->
          <a data-toggle="modal" data-target="#aside" class="nav-link">
        <i class="material-icons">menu</i>
        </a>
        <!-- / -->
      </li>
      </ul>
      <!-- / navbar right 하단버튼 -->
    </div>
    </div>
  <div class="app-footer app-player grey bg">
    <div class="playlist" style="width:100%"></div>
  
</div>
   <div class="app-body" id="view">

<!-- ############ PAGE START-->
<div class="pos-rlt">
  
<div class="page-content">
  <div class="padding b-b">
    <div class="col-lg-9 b-r no-border-md">
    <div class="row-col">
    
        <div class="col-sm w w-auto-xs m-b">
          <div class="item w r">
            <div class="item-media">
              <div class="item-media-content" style="background-image: url('resources/images/b0.jpg');"></div>
            </div>
          </div>
        </div>
        <div class="col-sm">
          <div class="p-l-md no-padding-xs">
            <div class="page-title">
              <h1 class="inline h2">Simple Place To Be</h1>
            </div>
            <p class="item-desc text-ellipsis text-muted" data-ui-toggle-class="text-ellipsis" style="font-weight: lighter; line-height: 23px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quamquam tu hanc copiosiorem etiam soles dicere. Nihil illinc huc pervenit. Verum hoc idem saepe faciamus. Quid ad utilitatem tantae pecuniae? Utram tandem linguam nescio? Sed hoc sane concedamus.</p>
            
           
          </div>
        </div>
    </div>
  </div>

  <div class="row-col">
    <div class="col-lg-9 b-r no-border-md">
      <div class="padding">

          
          <div id="tracks" class="row item-list item-list-xs item-list-li m-b">
                <div class="col-xs-12" data-toggle="modal" data-target="#play" class="nav-link">
                
                 
                  
                	<div class="item r" data-id="item-7" data-src="http://api.soundcloud.com/tracks/245566366/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
            		
                    <div class="item-media "> </a>
                       
                       
            				<a href="#" class="item-media-content" style="background-image: url('resources/images/b6.jpg');"></a>
            				<div class="item-overlay center">
            					<button  class="btn-playpause">Play</button>
            				</div>
            			</div>
            			<div class="item-info">
            				<div class="item-overlay bottom text-right">
            					<a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
            					<a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
            					<div class="dropdown-menu pull-right black lt"></div>
            				</div>
            				<div class="item-title text-ellipsis">
                      
            					<a href="#">Reflection (Deluxe)</a>
            				</div>
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="#" class="text-muted">Fifth Harmony</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">5:05</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
                	<div class="item r" data-id="item-9" data-src="http://api.soundcloud.com/tracks/264094434/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
            			<div class="item-media ">
            				<a href="trackDetail.do" class="item-media-content" style="background-image: url('resources/images/b8.jpg');"></a>
            				<div class="item-overlay center">
            					<button  class="btn-playpause">Play</button>
            				</div>
            			</div>
            			<div class="item-info">
            				<div class="item-overlay bottom text-right">
            					<a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
            					<a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
            					<div class="dropdown-menu pull-right black lt"></div>
            				</div>
            				<div class="item-title text-ellipsis">
            					<a href="trackDetail.do">All I Need</a>
            				</div>
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Pablo Nouvelle</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">3:10</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
                	<div class="item r" data-id="item-6" data-src="http://api.soundcloud.com/tracks/236107824/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
            			<div class="item-media ">
            				<a href="trackDetail.do" class="item-media-content" style="background-image: url('resources/images/b5.jpg');"></a>
            				<div class="item-overlay center">
            					<button  class="btn-playpause">Play</button>
            				</div>
            			</div>
            			<div class="item-info">
            				<div class="item-overlay bottom text-right">
            					<a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
            					<a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
            					<div class="dropdown-menu pull-right black lt"></div>
            				</div>
            				<div class="item-title text-ellipsis">
            					<a href="trackDetail.do">Body on me</a>
            				</div>
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Rita Ora</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">3:55</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
                	<div class="item r" data-id="item-3" data-src="http://api.soundcloud.com/tracks/79031167/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
            			<div class="item-media ">
            				<a href="trackDetail.do" class="item-media-content" style="background-image: url('resources/images/b2.jpg');"></a>
            				<div class="item-overlay center">
            					<button  class="btn-playpause">Play</button>
            				</div>
            			</div>
            			<div class="item-info">
            				<div class="item-overlay bottom text-right">
            					<a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
            					<a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
            					<div class="dropdown-menu pull-right black lt"></div>
            				</div>
            				<div class="item-title text-ellipsis">
            					<a href="trackDetail.do">I Wanna Be In the Cavalry</a>
            				</div>
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Jeremy Scott</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">2:50</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
                	<div class="item r" data-id="item-1" data-src="http://api.soundcloud.com/tracks/269944843/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
            			<div class="item-media ">
            				<a href="trackDetail.do" class="item-media-content" style="background-image: url('resources/images/b0.jpg');"></a>
            				<div class="item-overlay center">
            					<button  class="btn-playpause">Play</button>
            				</div>
            			</div>
            			<div class="item-info">
            				<div class="item-overlay bottom text-right">
            					<a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
            					<a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
            					<div class="dropdown-menu pull-right black lt"></div>
            				</div>
            				<div class="item-title text-ellipsis">
            					<a href="trackDetail.do">Pull Up</a>
            				</div>
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Summerella</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">2:50</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
                	<div class="item r" data-id="item-5" data-src="http://streaming.radionomy.com/JamendoLounge">
            			<div class="item-media ">
            				<a href="trackDetail.do" class="item-media-content" style="background-image: url('resources/images/b4.jpg');"></a>
            				<div class="item-overlay center">
            					<button  class="btn-playpause">Play</button>
            				</div>
            			</div>
            			<div class="item-info">
            				<div class="item-overlay bottom text-right">
            					<a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
            					<a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
            					<div class="dropdown-menu pull-right black lt"></div>
            				</div>
            				<div class="item-title text-ellipsis">
            					<a href="trackDetail.do">Live Radio</a>
            				</div>
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Radionomy</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">3:35</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
                	<div class="item r" data-id="item-2" data-src="http://api.soundcloud.com/tracks/259445397/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
            			<div class="item-media ">
            				<a href="trackDetail.do" class="item-media-content" style="background-image: url('resources/images/b1.jpg');"></a>
            				<div class="item-overlay center">
            					<button  class="btn-playpause">Play</button>
            				</div>
            			</div>
            			<div class="item-info">
            				<div class="item-overlay bottom text-right">
            					<a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
            					<a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
            					<div class="dropdown-menu pull-right black lt"></div>
            				</div>
            				<div class="item-title text-ellipsis">
            					<a href="trackDetail.do">Fireworks</a>
            				</div>
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Kygo</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">4:25</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
                	<div class="item r" data-id="item-8" data-src="http://api.soundcloud.com/tracks/236288744/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
            			<div class="item-media ">
            				<a href="trackDetail.do" class="item-media-content" style="background-image: url('resources/images/b7.jpg');"></a>
            				<div class="item-overlay center">
            					<button  class="btn-playpause">Play</button>
            				</div>
            			</div>
            			<div class="item-info">
            				<div class="item-overlay bottom text-right">
            					<a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
            					<a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
            					<div class="dropdown-menu pull-right black lt"></div>
            				</div>
            				<div class="item-title text-ellipsis">
            					<a href="trackDetail.do">Simple Place To Be</a>
            				</div>
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">RYD</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">4:20</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
                	<div class="item r" data-id="item-10" data-src="http://api.soundcloud.com/tracks/237514750/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
            			<div class="item-media ">
            				<a href="trackDetail.do" class="item-media-content" style="background-image: url('resources/images/b9.jpg');"></a>
            				<div class="item-overlay center">
            					<button  class="btn-playpause">Play</button>
            				</div>
            			</div>
            			<div class="item-info">
            				<div class="item-overlay bottom text-right">
            					<a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
            					<a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
            					<div class="dropdown-menu pull-right black lt"></div>
            				</div>
            				<div class="item-title text-ellipsis">
            					<a href="trackDetail.do">The Open Road</a>
            				</div>
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Postiljonen</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">5:20</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
                <div class="col-xs-12">
                	<div class="item r" data-id="item-12" data-src="http://api.soundcloud.com/tracks/174495152/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
            			<div class="item-media ">
            				<a href="trackDetail.do" class="item-media-content" style="background-image: url('resources/images/b11.jpg');"></a>
            				<div class="item-overlay center">
            					<button  class="btn-playpause">Play</button>
            				</div>
            			</div>
            			<div class="item-info">
            				<div class="item-overlay bottom text-right">
            					<a href="#" class="btn-favorite"><i class="fa fa-heart-o"></i></a>
            					<a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
            					<div class="dropdown-menu pull-right black lt"></div>
            				</div>
            				<div class="item-title text-ellipsis">
            					<a href="trackDetail.do">Happy ending</a>
            				</div>
            				<div class="item-author text-sm text-ellipsis hide">
            					<a href="artist.detail.html" class="text-muted">Postiljonen</a>
            				</div>
            				<div class="item-meta text-sm text-muted">
            		          <span class="item-meta-right">5:20</span>
            		        </div>
            
            
            			</div>
            		</div>
            	</div>
          </div>
       

<!-- ############ PAGE END-->

    </div>
  </div>
  <!-- / -->

  
  <div class="modal dark lt fade" id="search-modal" data-backdrop="false">
    <a data-dismiss="modal" class="text-muted text-lg p-x modal-close-btn">&times;</a>
    <div class="row-col">
      <div class="p-a-lg h-v row-cell v-m">
        <div class="row">
          <div class="col-md-8 offset-md-2">
            <form action="search.html" class="m-b-md">
              <div class="input-group input-group-lg">
                <input type="text" class="form-control" placeholder="Keyword" data-ui-toggle-class="hide" data-ui-target="#search-result">
                <span class="input-group-btn">
                  <button class="btn b-a no-shadow white" type="submit">검색</button>
                </span>
              </div>
            </form>
            <div id="search-result" class="animated fadeIn">
              <p class="m-b-md"><strong>23</strong> <span class="text-muted">Results found for: </span><strong>Keyword</strong></p>
              <div class="row">
                <div class="col-sm-6">
                  <div class="row item-list item-list-sm item-list-by m-b">
                        <div class="col-xs-12">
                          <div class="item r" data-id="item-3" data-src="http://api.soundcloud.com/tracks/79031167/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                          <div class="item-media ">
                            <a href="trackDetail.do" class="item-media-content" style="background-image: url('resources/images/b2.jpg');"></a>
                          </div>
                          <div class="item-info">
                            <div class="item-title text-ellipsis">
                              <a href="trackDetail.do">I Wanna Be In the Cavalry</a>
                            </div>
                            <div class="item-author text-sm text-ellipsis ">
                              <a href="artist.detail.html" class="text-muted">Jeremy Scott</a>
                            </div>
                            <div class="item-meta text-sm text-muted">
                                </div>
                    
                    
                          </div>
                        </div>
                      </div>
                        <div class="col-xs-12">
                          <div class="item r" data-id="item-6" data-src="http://api.soundcloud.com/tracks/236107824/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                          <div class="item-media ">
                            <a href="trackDetail.do" class="item-media-content" style="background-image: url('resources/images/b5.jpg');"></a>
                          </div>
                          <div class="item-info">
                            <div class="item-title text-ellipsis">
                              <a href="trackDetail.do">Body on me</a>
                            </div>
                            <div class="item-author text-sm text-ellipsis ">
                              <a href="artist.detail.html" class="text-muted">Rita Ora</a>
                            </div>
                            <div class="item-meta text-sm text-muted">
                                </div>
                    
                    
                          </div>
                        </div>
                      </div>
                        <div class="col-xs-12">
                          <div class="item r" data-id="item-2" data-src="http://api.soundcloud.com/tracks/259445397/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                          <div class="item-media ">
                            <a href="trackDetail.do" class="item-media-content" style="background-image: url('resources/images/b1.jpg');"></a>
                          </div>
                          <div class="item-info">
                            <div class="item-title text-ellipsis">
                              <a href="trackDetail.do">Fireworks</a>
                            </div>
                            <div class="item-author text-sm text-ellipsis ">
                              <a href="artist.detail.html" class="text-muted">Kygo</a>
                            </div>
                            <div class="item-meta text-sm text-muted">
                                </div>
                    
                    
                          </div>
                        </div>
                      </div>
                        <div class="col-xs-12">
                          <div class="item r" data-id="item-7" data-src="http://api.soundcloud.com/tracks/245566366/stream?client_id=a10d44d431ad52868f1bce6d36f5234c">
                          <div class="item-media ">
                            <a href="trackDetail.do" class="item-media-content" style="background-image: url('resources/images/b6.jpg');"></a>
                          </div>
                          <div class="item-info">
                            <div class="item-title text-ellipsis">
                              <a href="trackDetail.do">Reflection (Deluxe)</a>
                            </div>
                            <div class="item-author text-sm text-ellipsis ">
                              <a href="artist.detail.html" class="text-muted">Fifth Harmony</a>
                            </div>
                            <div class="item-meta text-sm text-muted">
                                </div>
                    
                    
                          </div>
                        </div>
                      </div>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="row item-list item-list-sm item-list-by m-b">
                        <div class="col-xs-12">
                          <div class="item">
                          <div class="item-media rounded ">
                            <a href="artist.detail.html" class="item-media-content" style="background-image: url('resources/images/a7.jpg');"></a>
                          </div>
                          <div class="item-info ">
                            <div class="item-title text-ellipsis">
                              <a href="artist.detail.html">Richard Carr</a>
                              <div class="text-sm text-muted">6 songs</div>
                            </div>
                          </div>
                        </div>
                      </div>
                        <div class="col-xs-12">
                          <div class="item">
                          <div class="item-media rounded ">
                            <a href="artist.detail.html" class="item-media-content" style="background-image: url('resources/images/a3.jpg');"></a>
                          </div>
                          <div class="item-info ">
                            <div class="item-title text-ellipsis">
                              <a href="artist.detail.html">Joe Holmes</a>
                              <div class="text-sm text-muted">24 songs</div>
                            </div>
                          </div>
                        </div>
                      </div>
                        <div class="col-xs-12">
                          <div class="item">
                          <div class="item-media rounded ">
                            <a href="artist.detail.html" class="item-media-content" style="background-image: url('resources/images/a5.jpg');"></a>
                          </div>
                          <div class="item-info ">
                            <div class="item-title text-ellipsis">
                              <a href="artist.detail.html">Judy Woods</a>
                              <div class="text-sm text-muted">23 songs</div>
                            </div>
                          </div>
                        </div>
                      </div>
                        <div class="col-xs-12">
                          <div class="item">
                          <div class="item-media rounded ">
                            <a href="artist.detail.html" class="item-media-content" style="background-image: url('resources/images/a4.jpg');"></a>
                          </div>
                          <div class="item-info ">
                            <div class="item-title text-ellipsis">
                              <a href="artist.detail.html">Judith Garcia</a>
                              <div class="text-sm text-muted">13 songs</div>
                            </div>
                          </div>
                        </div>
                      </div>
                  </div>
                </div>
              </div>
            </div>
    </div>
            <div id="top-search" class="btn-groups">
              <strong class="text-muted">Top searches: </strong>
              <a href="#" class="btn btn-xs white">Happy</a> 
              <a href="#" class="btn btn-xs white">Music</a> 
              <a href="#" class="btn btn-xs white">Weekend</a> 
              <a href="#" class="btn btn-xs white">Summer</a> 
              <a href="#" class="btn btn-xs white">Holiday</a> 
              <a href="#" class="btn btn-xs white">Blue</a> 
              <a href="#" class="btn btn-xs white">Soul</a> 
              <a href="#" class="btn btn-xs white">Calm</a> 
              <a href="#" class="btn btn-xs white">Nice</a> 
              <a href="#" class="btn btn-xs white">Home</a> 
              <a href="#" class="btn btn-xs white">SLeep</a> 
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ############ SEARCH END -->
<!-- 검색창 끝-->




<!-- ############ imoji Start 이모지 클릭창 시작 -->

<div class="modal dark lt fade" id="imoji-modal" data-backdrop="false">
	
	<div class="row-col">
	  <div class="p-a-lg h-v row-cell v-m">
		<a data-dismiss="modal" class="text-muted text-lg p-x modal-close-btn">&times;</a>
			<div style="position: static; width: 100%; height: 50%; text-align: center;"><h3>지금 기분 어떠신가요?</h3>
				<div style="width: 100%; height: 20px;"></div>
				<button type="button" class="btn bg" style="color:#ffffffde;"><input type='image' name="imoji" value="good" src="resources/images/imoji1.png"alt="Nothing" width="80px" height="80px"><br>기쁨</button>
				<button type="button" class="btn bg" style="color:#ffffffde;"><input type='image' name="imoji" value="good" src="resources/images/imoji2.png"alt="Nothing" width="80px" height="80px"><br>슬픔</button>
				<div style="width: 100%; height: 20px;"></div> 
				<button type="button" class="btn bg" style="color:#ffffffde;"><input type='image' name="imoji" value="good" src="resources/images/imoji3.png"alt="Nothing" width="80px" height="80px"><br>편안</button>
				<button type="button" class="btn bg" style="color:#ffffffde;"><input type='image' name="imoji" value="good" src="resources/images/imoji4.png"alt="Nothing" width="80px" height="80px"><br>흥분</button>
			
			
			
			</div>
			<div style="width: 100%; height: 30%; position: static;">

			</div>
			

			
			</div>
		  </div>
		</div>


<!-- ############ imoji 이모지 끝 END -->
  <!-- ############ SHARE START -->
  
  <!-- ############ SHARE END -->

<!-- ############ LAYOUT END-->
  </div>
  </div>

<!-- build:js resources/scripts/app.min.js -->
<!-- jQuery -->
  <script src="resources/libs/jquery/dist/jquery.js"></script>
<!-- Bootstrap -->
  <script src="resources/libs/tether/dist/js/tether.min.js"></script>
  <script src="resources/libs/bootstrap/dist/js/bootstrap.js"></script>
<!-- core -->
  <script src="resources/libs/jQuery-Storage-API/jquery.storageapi.min.js"></script>
  <script src="resources/libs/jquery.stellar/jquery.stellar.min.js"></script>
  <script src="resources/libs/owl.carousel/dist/owl.carousel.min.js"></script>
  <script src="resources/libs/jscroll/jquery.jscroll.min.js"></script>
  <script src="resources/libs/PACE/pace.min.js"></script>
  <script src="resources/libs/jquery-pjax/jquery.pjax.js"></script>

  <script src="resources/libs/mediaelement/build/mediaelement-and-player.min.js"></script>
  <script src="resources/libs/mediaelement/build/mep.js"></script>
  <script src="resources/scripts/player.js"></script>

  <script src="resources/scripts/config.lazyload.js"></script>
  <script src="resources/scripts/ui-load.js"></script>
  <script src="resources/scripts/ui-jp.js"></script>
  <script src="resources/scripts/ui-include.js"></script>
  <script src="resources/scripts/ui-device.js"></script>
  <script src="resources/scripts/ui-form.js"></script>
  <script src="resources/scripts/ui-nav.js"></script>
  <!-- <script src="resources/scripts/ui-screenfull.js"></script> -->
  <script src="resources/scripts/ui-scroll-to.js"></script>
  <script src="resources/scripts/ui-toggle-class.js"></script>
  <script src="resources/scripts/ui-taburl.js"></script>
  <script src="resources/scripts/app.js"></script>
  <script src="resources/scripts/site.js"></script>
  <script src="resources/scripts/ajax.js"></script>
  <script src="https://kit.fontawesome.com/6478f529f2.js" crossorigin="anonymous"></script>
  <script src="resources/scripts/graph3.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.min.js"></script>
  
<!-- endbuild -->
</body>

</html>

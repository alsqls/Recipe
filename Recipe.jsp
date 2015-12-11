<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
<%request.setCharacterEncoding("utf-8");%>
<%
    String mem_id = (String)session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="https://melodydemo.wordpress.com/xmlrpc.php">

<title>Recipe | Cook Together</title>
<meta name='robots' content='noindex,follow' />
<link rel="alternate" type="application/rss+xml" title="Melody &raquo; Feed"  />
<link rel="alternate" type="application/rss+xml" title="Melody &raquo; Comments Feed" />
<script type="text/javascript">
/* <![CDATA[ */
function addLoadEvent(func){var oldonload=window.onload;if(typeof window.onload!='function'){window.onload=func;}else{window.onload=function(){oldonload();func();}}}
/* ]]> */
</script>
<link rel='stylesheet' id='all-css-0' href='https://s0.wp.com/_static/??-eJx9kNFOwzAMRX+I4A1t014Q35KmZnUXx1HtUvXv8QZUm4r6Etk358iJYaohSTEsBjyGmscLFQVlyjjXQXpM9ty9JtUX+F/LdEWFHq3GdA33boU3WS6L0CKLkmGIyegrGq6TrXlUPqmQzUuxBWsngyVp/YVOgWbyspMpLBdbdpIBPeca7UYwthQxIzu2pXE9/Vm3svO9rFfywE/V6dA0dUDV4CfTyME6H7T2fmL4pYAxSzuD2pzvX/ng9/3hcDzv3067Y/8NRgO5dA==' type='text/css' media='all' />
<link rel='stylesheet' id='screen-css-1' href='https://s0.wp.com/wp-content/themes/premium/melody/inc/fontawesome/font-awesome.css?m=1440624119g' type='text/css' media='screen' />
<link rel='stylesheet' id='melody-fonts-css'  href='https://fonts.googleapis.com/css?family=Muli%3A+300%2C+400%2C+300italic%7CLibre+Baskerville%3A400%2C700%2C400italic%7CLora%3A400italic&#038;subset=latin%2Clatin-ext' type='text/css' media='all' />
<link rel='stylesheet' id='all-css-4' href='https://s2.wp.com/_static/??-eJx9i1EKgCAQRC+ULVZUP9FZSkxWdDfS6PoZQhREP8MbZh4cq1BMUVMEv4vV7QYpgPZsMWepQigAgThieoYb8vDtG83CsZoiMr2KWNyE25+66dmxSWggvR71kkY/yKZuu76uemlPbpZFwA==' type='text/css' media='all' />
<link rel='stylesheet' id='demosites-open-sans-css'  href='https://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic,700,700italic&#038;subset=latin,latin-ext' type='text/css' media='all' />
<link rel='stylesheet' id='print-css-7' href='https://s1.wp.com/wp-content/mu-plugins/global-print/global-print.css?m=1444132114g' type='text/css' media='print' />
<link rel='stylesheet' id='all-css-8' href='https://s0.wp.com/wp-content/themes/h4/global.css?m=1420737423g' type='text/css' media='all' />
<script type='text/javascript' src='https://s0.wp.com/_static/??-eJyNkV1OAzEMhC9ENqC2Ah4Qr1wjzQ5ZL3GSxk6rcnoCKqqgy49kyZL9jTW27aEYSj62EWLnHruGejylYZYr+xtgmEJ1ioEpfcI+J0XSd5bzliJME1QXeq0Pes4LXMmiDJEOLXS/WqK0Jxz+xGZocf7FVAi9XkzdxhxMiS1QEjuCs5DCOK+079tcVr7rdUL3a0sFU2PLiHk8nk0M7NRPT6Aw6b+l2DUXzfQhMuIrFV26v5TzqX9+3Il65Ieb9Xq1ub1e3d/Nb7DPuNA='></script>
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://melodydemo.wordpress.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://s1.wp.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress.com" />
<link rel='shortlink' href='http://wp.me/6Eg3j' />

<!-- Jetpack Open Graph Tags -->
<meta property="og:type" content="website" />
<meta property="og:title" content="Melody" />
<meta property="og:description" content="A theme with rhythm and harmony." />
<meta property="og:url" content="https://melodydemo.wordpress.com/" />
<meta property="og:site_name" content="Melody" />
<meta property="og:image" content="https://s0.wp.com/i/blank.jpg" />
<meta property="og:locale" content="en_US" />
<meta name="twitter:site" content="@wordpressdotcom" />
<meta property="fb:app_id" content="249643311490" />
<link rel="shortcut icon" type="image/x-icon" href="./sh.png" sizes="16x16 24x24 32x32 48x48" />
<link rel="icon" type="image/x-icon" href="./sh.png" sizes="16x16 24x24 32x32 48x48" />
<link rel="apple-touch-icon-precomposed" href="./sh.png" />
<link rel='openid.server' href='https://melodydemo.wordpress.com/?openidserver=1' />
<link rel='openid.delegate' href='https://melodydemo.wordpress.com/' />
<link rel="search" type="application/opensearchdescription+xml" href="https://melodydemo.wordpress.com/osd.xml" title="Melody" />
<link rel="search" type="application/opensearchdescription+xml" href="https://wordpress.com/opensearch.xml" title="WordPress.com" />
<meta name="application-name" content="Melody" /><meta name="msapplication-window" content="width=device-width;height=device-height" /><meta name="msapplication-tooltip" content="A theme with rhythm and harmony." /><meta name="msapplication-task" content="name=Subscribe;action-uri=https://melodydemo.wordpress.com/feed/;icon-uri=https://s2.wp.com/i/favicon.ico" /><meta name="msapplication-task" content="name=Sign up for a free blog;action-uri=http://wordpress.com/signup/;icon-uri=https://s2.wp.com/i/favicon.ico" /><meta name="msapplication-task" content="name=WordPress.com Support;action-uri=http://support.wordpress.com/;icon-uri=https://s2.wp.com/i/favicon.ico" /><meta name="msapplication-task" content="name=WordPress.com Forums;action-uri=http://forums.wordpress.com/;icon-uri=https://s2.wp.com/i/favicon.ico" /><meta name="title" content="Melody on WordPress.com" />
<meta name="description" content="A theme with rhythm and harmony." />
<style type="text/css" id="syntaxhighlighteranchor"></style>
			<style id="demo-site-activation">
				#infinite-footer {
					display: none !important;
				}

				@media screen and (max-width: 600px) {
					.demosite-activate {
						position: absolute;
					}
				}
			</style>
					<style id="demo-site-activation-logged-out">
				html {
					margin-top: 0px !important;
				}
				@media screen and (max-width: 620px) {
					html {
						margin-top: 100px !important;
					}
				}
				@media screen and (max-width: 600px) {
					.demosite-activate {
						position: absolute;
					}
				}
			</style>
		</head>

<body href='./css/cssStyle.css' class="home blog mp6 customizer-styles-applied intro-text-center sidebar-none row-three-post highlander-enabled highlander-light demo-site infinite-scroll">
<div id="page" class="hfeed site">
	<a class="skip-link screen-reader-text" href="#content">Skip to content</a>

	<header id="masthead" class="site-header" role="banner">
		<div class="header-search-form">
			<form role="search" method="get" class="search-form" action="http://www.naver.com/">
				<label>
					<span class="screen-reader-text">Search for:</span>
					<input type="search" class="search-field" placeholder="Search &hellip;" value="" name="s" title="Search for:" />
				</label>
				<input type="submit" class="search-submit" value="Search" />
			</form>			<a class="close-search" id="close-search" href="#"><span class="screen-reader-text">Close Search box</span></a>
		</div>
		<div class="siter-header-inner">
			<div class="site-branding">
								<div class="site-branding-text">
                                    <h1 class="site-title"><a href=./index.jsp rel="home" ><p font-family: "nanumGothicBold">요리하는 사람</p></a></h1>
										<p class="site-description">Cooking with happiness.</p>
				</div>	
			</div><!-- .site-branding -->

		</div><!-- end .site-header-inner -->
		<nav id="site-navigation" class="main-navigation" role="navigation">
			<button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false"><i class="fa fa-bars"></i>Menu</button>
			<a href="#" id="header-search-btn" class="header-search-btn"><i class="fa fa-search"></i><span class="screen-reader-text">Search</span></a>
			<ul id="primary-menu" class="menu">
            <%  
               if(mem_id != null){
            %>
                <li id="menu-item-120" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-120"><a href="./logout.jsp">Logout</a></li>
                <li id="menu-item-128" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-128"><a href="./profile.jsp">Profile</a></li>
            <%
               }else{
            %>
               <li id="menu-item-120" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-120"><a href="./login.jsp">Login</a></li>
            <%
               }
            %>
<li id="menu-item-126" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-126"><a href="./Recipe.jsp">Recipes</a></li>
<li id="menu-item-159" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-159"><a href="./List.jsp">Board</a></li>
</ul>	
		</nav><!-- #site-navigation -->

	</header><!-- #masthead -->

        <table width="200" height="400" border="1">
            <tr>
                <td>								
				<center><img width="300" height="200" src="./img/cook1.JPG"/></center><p>
                    <center>간장떡볶이</center>
                </td>
                <td>								
				<img width="300" height="200" src="./img/cook2.JPG"/><p>
                    <center>라볶이</center>
                </td>
                <td>								
				<img width="300" height="200" src="./img/cook3.jpg"/><p>
                    <center>명란오일파스타</center>
                </td>
                <td>								
				<img width="300" height="200" src="./img/cook4.JPG"/><p>
                    <center>토마토파스타</center>
                </td>
            </tr>
        </table>

	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="site-footer-inner match-height">

			<!-- Footer Block Left -->
							<div class="footer-block element-height">

										<div class="footer-widget-area" role="complementary">
							<aside id="text-2" class="widget widget_text"><h3 class="widget-title">About Cooking</h3>			
                                <div class="textwidget" font-family:"NanumGothicBold">요리를 잘하지만 하지 않는 아내보다 더 참을 수 없는 유일한 것은 요리를 못하면서 하는 아내이다. <br> by 로버트 프로스트
</div>
		</aside>						</div>
									</div>
			
			<!-- Footer Block Center -->
								<div class="footer-block footer-widget-area element-height" role="complementary">
									
            </div>	
				
			<!-- Footer Block Right -->
								<div class="footer-block footer-widget-area element-height" role="complementary">
						<aside id="nav_menu-2" class="widget widget_nav_menu"><h3 class="widget-title">Follow Me</h3>
                            <div class="menu-social-media-container"><ul id="menu-social-media" class="menu">
                                <li id="menu-item-131" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-131"><a href="http://twitter.com">Twitter</a></li>
                                <li id="menu-item-132" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-132"><a href="http://instagram.com">Instagram</a></li>

                                </ul></div></aside>					
                                </div>
				
		</div><!-- end .site-footer-inner -->

		<div class="site-info">
			JSP Project
			<span class="sep"> | </span>
			<title="Learn more about this theme">Make by <rel="designer">Sehee Kim.</div>

	</footer><!-- #colophon -->
</div><!-- #page -->

		
		<!-- wpcom_wp_footer -->
<script type='text/javascript' src='//0.gravatar.com/js/gprofiles.js?ver=201547y'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var WPGroHo = {"my_hash":""};
/* ]]> */
</script>
<script type='text/javascript' src='https://s2.wp.com/wp-content/mu-plugins/gravatar-hovercards/wpgroho.js?m=1380573781g'></script>

	<script>
		//initialize and attach hovercards to all gravatars
		jQuery( document ).ready( function( $ ) {

			if (typeof Gravatar === "undefined"){
				return;
			}

			if ( typeof Gravatar.init !== "function" ) {
				return;
			}			

			Gravatar.profile_cb = function( hash, id ) {
				WPGroHo.syncProfileData( hash, id );
			};
			Gravatar.my_hash = WPGroHo.my_hash;
			Gravatar.init( 'body', '#wp-admin-bar-my-account' );
		});
	</script>

		<div style="display:none">
	</div>

		
    
	
	<div id="carousel-reblog-box">
		<form action="" name="carousel-reblog">
			<textarea id="carousel-reblog-content" name="carousel-reblog-content" onclick="if ( this.value == 'Add your thoughts here... (optional)' ) { this.value = ''; }" onblur="if ( this.value == '' || this.value == '' ) { this.value = 'Add your thoughts here... (optional)'; }">Add your thoughts here... (optional)</textarea>
			<label for="carousel-reblog-to-blog-id" id="carousel-reblog-lblogid">Post to</label>
			<select name="carousel-reblog-to-blog-id" id="carousel-reblog-to-blog-id">
						</select>

			<div class="submit">
				<span class="canceltext"><a href="" class="cancel">Cancel</a></span>
				<input type="submit" name="carousel-reblog-submit" class="button" id="carousel-reblog-submit" value="Reblog Post" />
				<input type="hidden" id="carousel-reblog-blog-id" value="98252845" />
				<input type="hidden" id="carousel-reblog-blog-url" value="" />
				<input type="hidden" id="carousel-reblog-blog-title" value="SH" />
				<input type="hidden" id="carousel-reblog-post-url" value="" />
				<input type="hidden" id="carousel-reblog-post-title" value="" />
			</div>

			<input type="hidden" id="_wpnonce" name="_wpnonce" value="b7589c50d4" /><input type="hidden" name="_wp_http_referer" value="/" />		</form>

		<div class="arrow"></div>
	</div>
<link rel='stylesheet' id='all-css-0' href='https://s2.wp.com/wp-content/mu-plugins/carousel/jetpack-carousel.css?m=1438295886g' type='text/css' media='all' />
<!--[if lte IE 8]>
<link rel='stylesheet' id='jetpack-carousel-ie8fix-css'  href='https://s1.wp.com/wp-content/mu-plugins/carousel/jetpack-carousel-ie8fix.css?m=1412618825g&#038;ver=20121024' type='text/css' media='all' />
<![endif]-->
<link rel='stylesheet' id='all-css-2' href='https://s0.wp.com/wp-content/mu-plugins/tiled-gallery/tiled-gallery.css?m=1443731146g' type='text/css' media='all' />
<script type='text/javascript'>
/* <![CDATA[ */
var jetpackSlideshowSettings = {"spinner":"https:\/\/s1.wp.com\/wp-content\/mu-plugins\/shortcodes\/img\/slideshow-loader.gif","blog_id":"98252845","blog_subdomain":"melodydemo","user_id":"0"};
/* ]]> */
</script>
<script type='text/javascript'>
/* <![CDATA[ */
var screenReaderText = {"expand":"<span class=\"screen-reader-text\">expand child menu<\/span>","collapse":"<span class=\"screen-reader-text\">collapse child menu<\/span>"};
/* ]]> */
</script>
<script type='text/javascript'>
/* <![CDATA[ */
var JetpackEmojiSettings = {"base_url":"https:\/\/s0.wp.com\/wp-content\/mu-plugins\/emoji\/twemoji\/"};
/* ]]> */
</script>
<script type='text/javascript'>
/* <![CDATA[ */
var jetpackCarouselStrings = {"widths":[370,700,1000,1200,1400,2000],"is_logged_in":"","lang":"en","ajaxurl":"https:\/\/melodydemo.wordpress.com\/wp-admin\/admin-ajax.php","nonce":"b6bab4f8e6","display_exif":"1","display_geo":"1","background_color":"black","comment":"Comment","post_comment":"Post Comment","write_comment":"Write a Comment...","loading_comments":"Loading Comments...","download_original":"View full size <span class=\"photo-size\">{0}<span class=\"photo-size-times\">\u00d7<\/span>{1}<\/span>","no_comment_text":"Please be sure to submit some text with your comment.","no_comment_email":"Please provide an email address to comment.","no_comment_author":"Please provide your name to comment.","comment_post_error":"Sorry, but there was an error posting your comment. Please try again later.","comment_approved":"Your comment was approved.","comment_unapproved":"Your comment is in moderation.","camera":"Camera","aperture":"Aperture","shutter_speed":"Shutter Speed","focal_length":"Focal Length","comment_registration":"0","require_name_email":"1","login_url":"https:\/\/melodydemo.wordpress.com\/wp-login.php?redirect_to=https%3A%2F%2Fmelodydemo.wordpress.com%2F2015%2F07%2F25%2Foverhanging-images%2F","local_comments_commenting_as":"<fieldset><label for=\"email\">Email (Required)<\/label> <input type=\"text\" name=\"email\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-email-field\" \/><\/fieldset><fieldset><label for=\"author\">Name (Required)<\/label> <input type=\"text\" name=\"author\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-author-field\" \/><\/fieldset><fieldset><label for=\"url\">Website<\/label> <input type=\"text\" name=\"url\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-url-field\" \/><\/fieldset>","reblog":"Reblog","reblogged":"Reblogged","reblog_add_thoughts":"Add your thoughts here... (optional)","reblogging":"Reblogging...","post_reblog":"Post Reblog","stats_query_args":"blog=98252845&v=wpcom&tz=0&user_id=0&subd=melodydemo","is_public":"0"};
var jetpackCarouselStrings = {"widths":[370,700,1000,1200,1400,2000],"is_logged_in":"","lang":"en","ajaxurl":"https:\/\/melodydemo.wordpress.com\/wp-admin\/admin-ajax.php","nonce":"b6bab4f8e6","display_exif":"1","display_geo":"1","background_color":"black","comment":"Comment","post_comment":"Post Comment","write_comment":"Write a Comment...","loading_comments":"Loading Comments...","download_original":"View full size <span class=\"photo-size\">{0}<span class=\"photo-size-times\">\u00d7<\/span>{1}<\/span>","no_comment_text":"Please be sure to submit some text with your comment.","no_comment_email":"Please provide an email address to comment.","no_comment_author":"Please provide your name to comment.","comment_post_error":"Sorry, but there was an error posting your comment. Please try again later.","comment_approved":"Your comment was approved.","comment_unapproved":"Your comment is in moderation.","camera":"Camera","aperture":"Aperture","shutter_speed":"Shutter Speed","focal_length":"Focal Length","comment_registration":"0","require_name_email":"1","login_url":"https:\/\/melodydemo.wordpress.com\/wp-login.php?redirect_to=https%3A%2F%2Fmelodydemo.wordpress.com%2F2015%2F07%2F25%2Foverhanging-images%2F","local_comments_commenting_as":"<fieldset><label for=\"email\">Email (Required)<\/label> <input type=\"text\" name=\"email\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-email-field\" \/><\/fieldset><fieldset><label for=\"author\">Name (Required)<\/label> <input type=\"text\" name=\"author\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-author-field\" \/><\/fieldset><fieldset><label for=\"url\">Website<\/label> <input type=\"text\" name=\"url\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-url-field\" \/><\/fieldset>","reblog":"Reblog","reblogged":"Reblogged","reblog_add_thoughts":"Add your thoughts here... (optional)","reblogging":"Reblogging...","post_reblog":"Post Reblog","stats_query_args":"blog=98252845&v=wpcom&tz=0&user_id=0&subd=melodydemo","is_public":"0"};
/* ]]> */
</script>
<script type='text/javascript' src='https://s2.wp.com/_static/??-eJyNkdFWgzAMhl/Iru6IeuXxWVgILKVtKklhvL1sRzjb0MlV0/T/kvSPHZIBjopRrRNbYU+A6bRz8mSvnkI2yeeGoliKNUXScQkeaOXInQJXKOfi7itjN+5gBI+bIfE0RUcezJK/Z/WIYRKnDgPlYAN6rsYzG8uemlKJ42ZEWkrGU2xNzZDF1LTy4m8WOkoq2/X5YALGbJSbZm3J7xxF+GlkhgQcHhiJgR1ZHW7Of/UONZXQmm3qG9U0m8/z3oaaDw5B70vMfD/tlW0pgnoBLvfps7Iy8KoplB1nQb9MOScm5jN87Iui2L++vb88u2+roBNp'></script>
<script type='text/javascript' src='https://platform.twitter.com/widgets.js?ver=20111117'></script>
<script type='text/javascript' src='https://s0.wp.com/_static/??-eJyVy7EOQEAMANAfUnViYBDfgmsupepyivh7VpMY3/DwjDCuaqSGyw5R9sC6oZ1sRgkG6cd54OQhMqHSQYnUs4Z82jL8c+P3YyEPoRehdL31rG5pXVXUTVO70k03DU5D1g=='></script>
<script type="text/javascript">
// <![CDATA[
(function() {
try{
  if ( window.external &&'msIsSiteMode' in window.external) {
    if (window.external.msIsSiteMode()) {
      var jl = document.createElement('script');
      jl.type='text/javascript';
      jl.async=true;
      jl.src='/wp-content/plugins/ie-sitemode/custom-jumplist.php';
      var s = document.getElementsByTagName('script')[0];
      s.parentNode.insertBefore(jl, s);
    }
  }
}catch(e){}
})();
// ]]>
</script>
<script type="text/javascript">
_tkq = window._tkq || [];
_stq = window._stq || [];
_tkq.push(['storeContext', {'blog_id':'98252845','blog_tz':'0','user_lang':'en','blog_lang':'en','user_id':'0'}]);
_stq.push(['view', {'blog':'98252845','v':'wpcom','tz':'0','user_id':'0','subd':'melodydemo'}]);
_stq.push(['extra', {'crypt':'UE40eW5QN0p8M2Y/RE1oV0pFNEwueXFaVXlyMGwvVG9bYmZXaDJ1Nmx+ankzUUUvVlg4TU5OXUphZlE3NStyUS1GeE9CUGRzWnp3bl1ET2R4ckRIYlBxdEF2Tk1mNENtLU1JWj0uflIlcHhddVpLdVt6dWgtbF84LDNGU1E9elNIcmlZNiVlSE5DUzllcTh+MWd5WW0vOGVNTWZMWlAxWS5NTnZTTVpzSDJLSzFUQWpJTkJ8cVItSmR3Lmhnb3hPfGhyVHptaVVOUXUwbzhyLHVqSTJtbyVidC16NlhzTFNNL1hhaDRZek9BaT96UlIwQz9JdTAlZGx2UTFRRH45WGZiJmQmXVRFfg=='}]);
_stq.push([ 'clickTrackerInit', '98252845', '0' ]);
	</script>
<noscript><img src="https://pixel.wp.com/b.gif?v=noscript" style="height:0px;width:0px;overflow:hidden" alt="" /></noscript>
<script>
if ( 'object' === typeof wpcom_mobile_user_agent_info ) {

	wpcom_mobile_user_agent_info.init();
	var mobileStatsQueryString = "";
	
	if( false !== wpcom_mobile_user_agent_info.matchedPlatformName )
		mobileStatsQueryString += "&x_" + 'mobile_platforms' + '=' + wpcom_mobile_user_agent_info.matchedPlatformName;
	
	if( false !== wpcom_mobile_user_agent_info.matchedUserAgentName )
		mobileStatsQueryString += "&x_" + 'mobile_devices' + '=' + wpcom_mobile_user_agent_info.matchedUserAgentName;
	
	if( wpcom_mobile_user_agent_info.isIPad() )
		mobileStatsQueryString += "&x_" + 'ipad_views' + '=' + 'views';

	if( "" != mobileStatsQueryString ) {
		new Image().src = document.location.protocol + '//pixel.wp.com/g.gif?v=wpcom-no-pv' + mobileStatsQueryString + '&baba=' + Math.random();
	}
	
}
</script>
</body>
</html>
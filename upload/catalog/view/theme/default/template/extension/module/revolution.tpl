<div id="slideshow<?php echo $module; ?>" class="banner">
  <div class="home-section fullscreen-container" id="home">
      <div class="fullscreenbanner bg-dark" style="background:rgba(23,10,83, 0.3);">
          <ul>
            <?php foreach ($banners as $banner) { ?>
              <li data-transition="zoomout" data-slotamount="7" data-title="Intro Slide">
                  
				  <!--  -->
                  <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>"/>
				  
                  <!-- tp-resizeme hs-line-14 font-alt-->
                  <div class="caption customin customout tp-resizeme hs-line-14 font-alt" 
                     data-x="center" 
                     data-hoffset="0" 
                     data-y="center" 
                     data-voffset="-100" 
                     data-customin="x:0;y:-400;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;" 
                     data-customout="x:0;y:-400;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;" 
                     data-speed="800" 
                     data-start="1200" 
                     data-startslide="1" 
                     data-easing="Power4.easeOut" 
                     data-endspeed="500" 
                     data-endeasing="Power4.easeIn">
                      <h3><?php echo $banner['title']; ?></h3>
                  </div>
                  <div class="caption customin customout tp-resizeme hs-line-14 font-alt" 
                     data-x="center"
                     data-hoffset="0" 
                     data-y="center" 
                     data-voffset="0" 
                     data-customin="x:400;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;" 
                     data-customout="x:400;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;" 
                     data-speed="800" 
                     data-start="1400" 
                     data-startslide="1" 
                     data-easing="Power4.easeOut" 
                     data-endspeed="500" 
                     data-endeasing="Power4.easeIn">
                      <h4><?php echo $banner['subtitle']; ?></h4>
                  </div>
				  
                  <?php if ($banner['link']) { ?>
                  <div class="caption customin customout tp-resizeme hs-line-14 font-alt" 
                     data-x="center" 
                     data-hoffset="0" 
                     data-y="center" 
                     data-voffset="80" 
                     data-customin="x:0;y:400;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;" 
                     data-customout="x:0;y:400;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;" 
                     data-speed="800" 
                     data-start="1600" 
                     data-startslide="1" 
                     data-easing="Power4.easeOut" 
                     data-endspeed="500" 
                     data-endeasing="Power4.easeIn">
                      <a target="_blank" class="btn button" href="<?php echo $banner['link']; ?>"><?php echo $banner['link_text']; ?></a>
                  </div>
                  <?php }?>

              </li>
            <?php } ?>
          </ul>
          <div class="tp-bannertimer tp-bottom"></div> 
      </div>
  </div>
</div>

<script>

(function($){
  "use strict";
  
  $(document).ready(function(){
      $(".fullscreenbanner").revolution({
          dottedOverlay: "none",
          delay: 6000,
          startwidth: 1170,
          startheight: 370,
          hideThumbs: 200,
          
          thumbWidth: 100,
          thumbHeight: 50,
          thumbAmount: 5,
          
          navigationType: "bullet",
          navigationArrows: "solo",  //none, solo
          navigationStyle: "zeus",
          
          touchenabled: "on",
          onHoverStop: "on",
          
          swipe_velocity: 0.7,
          swipe_min_touches: 1,
          swipe_max_touches: 1,
          drag_block_vertical: false,
          
          parallax: "mouse",
          parallaxBgFreeze: "on",
          parallaxLevels: [7, 4, 3, 2, 5, 4, 3, 2, 1, 0],
          
          keyboardNavigation: "off",
          
          navigationHAlign: "center",
          navigationVAlign: "bottom",
          navigationHOffset: 0,
          navigationVOffset: 20,
          
          soloArrowLeftHalign: "left",
          soloArrowLeftValign: "center",
          soloArrowLeftHOffset: 20,
          soloArrowLeftVOffset: 0,
          
          soloArrowRightHalign: "right",
          soloArrowRightValign: "center",
          soloArrowRightHOffset: 20,
          soloArrowRightVOffset: 0,
                
          shadow: 0,
          fullWidth: "on",
          //fullScreen: "on",
          //fullScreenOffsetContainer: "header",
                
          spinner: "spinner4",
          
          stopLoop: "off",
          stopAfterLoops: -1,
          stopAtSlide: -1,
          
          shuffle: "off",
          
          autoHeight: "off",
          forceFullWidth: "off",
          
          hideThumbsOnMobile: "off",
          hideNavDelayOnMobile: 1500,
          hideBulletsOnMobile: "off",
          hideArrowsOnMobile: "off",
          hideThumbsUnderResolution: 0,
          
          hideSliderAtLimit: 0,
          hideCaptionAtLimit: 0,
          hideAllCaptionAtLilmit: 0,
          startWithSlide: 0
      });     
  });
})(jQuery);

</script>

<style>
 #home .caption h3{
	font-size: 25px;
    padding: 30px;
    text-transform: uppercase;
    font-weight: bold;
    text-align: center;
	background:rgba(23,10,83, 0.7);
	color:#FFF;
	letter-spacing: 1px !important;
 }
 #home .caption h4{
	background:rgba(23,10,83, 0.7);
	color:#FFF;
	padding:30px;
	font-size:14px;
	text-transform: uppercase;
    font-weight: 400;
	letter-spacing: 1px !important;
 }
 #home .caption .btn{
	background:rgba(23,10,83, 0.7);
	color:#FFF;
	padding:10px;
	font-size:12px;
	letter-spacing: 1px !important;
	text-transform: uppercase;
    font-weight: 300;
	border:none !important;
	border-radius:0 !important;
 }
.tp-bullets.simplebullets .bullet:hover, .tp-bullets.simplebullets .bullet.selected {
	background: rgb(23,10,83);
	
}
 
.tp-bullets.simplebullets .bullet{
	border: 3px solid rgb(23,10,83) !important;
	background: #fff;
}
</style>
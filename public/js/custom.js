/*-----------------------------------------------------------------------------------
/* Custom JavaScript
-----------------------------------------------------------------------------------*/
	  
/* ----------------- Start Document ----------------- */
jQuery(document).ready(function() {
 
  
			
    $('.sidebar-title').hover(
        function () {
            $(this).find('.rotate').addClass('icon-spin');
        },
        function () {
            $(this).find('.rotate').removeClass('icon-spin');			
        });

    /*----------------------------------------------------*/
    /*	Main Navigation
/*----------------------------------------------------*/

    /* Menu */
    (function() {

        var $mainNav    = $('#navigation').children('ul');

        $mainNav.on('mouseenter', 'li', function() {
            var $this    = $(this),
            $subMenu = $this.children('ul');
            if( $subMenu.length ) $this.addClass('hover');
            $subMenu.hide().stop(true, true).slideDown('fast');
        }).on('mouseleave', 'li', function() {
            $(this).removeClass('hover').children('ul').stop(true, true).slideUp('fast');
        });
		
    })();
	
    /* Responsive Menu */
    (function() {
        selectnav('nav', {
            label: 'Menu',
            nested: true,
            indent: '-'
        });
				
    })();

 
    /*----------------------------------------------------*/
    /*	Image Overlay
/*----------------------------------------------------*/

    $(document).ready(function () {
        $('.picture a').hover(function () {
            $(this).find('.image-overlay-zoom, .image-overlay-link').stop().fadeTo('fast', 1);
        },function () {
            $(this).find('.image-overlay-zoom, .image-overlay-link').stop().fadeTo('fast', 0);
        });
        
        $('.carousel').carousel({
            interval: 5000
  
        });
    //            $("#main-media").fitVids()
    });


    /*----------------------------------------------------*/
    /*	Back To Top Button
/*----------------------------------------------------*/
    jQuery(window).scroll(function(){
        if (jQuery(this).scrollTop() > 100) {
            jQuery('#scroll-to-top').fadeIn();
        } else {
            jQuery('#scroll-to-top').fadeOut();
        }
    }); 
 
    jQuery('#scroll-to-top').click(function(){
        jQuery("html, body").animate({
            scrollTop: 0
        }, 700);
        return false;
    });

 

    /*----------------------------------------------------*/
    /*	Fancybox
/*----------------------------------------------------*/
    
    
/* ------------------ End Document ------------------ */
});


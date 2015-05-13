 $(window).on('scroll', function() {
    windowTop = $(window).scrollTop();
    // _stop = (windowTop <= 100) ? true : false ;

    //if(dedug)
     //   console.log('windowTop = '+ windowTop, '_stop = '+_stop+' opts.start = '+opts.start);

     if((windowTop >= 50)) {
        $('header#header').css({'opacity': '0.8'});
        $('#MainHeader').addClass('fixed-top');
        $('#subnav').addClass('fixed').css({'top': '50px'});
     } else if((windowTop < 50) || _stop) { 
        $('header#header').css({'opacity': '1'});
        $('#MainHeader').removeClass('fixed-top');
        $('#subnav').removeClass('fixed').css({'top': '0px'});
     }
     
    

});
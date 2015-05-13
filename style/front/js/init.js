// globa variable
$data_hash = [];

// anchor
//jQuery(function(){
//    jQuery(window).hashchange(function(){ 
//		if(document.location.hash == '') return;
//                var hash = location.hash.split('#');
//                if(hash.length > 1) {
//                    $data_hash = hash[1];
//                    hashchange_onLoadInit();
//                    
//                    // if($('.box-anchor #'+hash[1]).length)
//                    //if(typeof $('.box-anchor #'+hash[1]) == "object")
//                    //    $('html, body').animate({scrollTop: $('.box-anchor #'+hash[1]).offset().top}, 800);
//                }
//                
//    });
//    jQuery(window).hashchange();
//});

function cookie_clear() {
    if($.cookie('popUp')) {
        $.removeCookie('popUp', { path: '/' });
    }
}

function setCookie(name, value) {
    $.cookie(name, value, { expires: 7, path: '/' });
}

function getCookie( name ) {
    if($.cookie(name)) {
        return $.cookie(name); 
    } else
        return false;
}

// init hashchange ( init bPopUp )
function hashchange_onLoadInit() {
    
}

function hashchange_AfterInit() { 
    var _data = _parceHash( $data_hash );
}

function _parceHash( hash ) {
    var _data = {};
    if(hash.length) {
        var pair = (hash).split('&');
        for(var i = 0; i < pair.length; i ++) {
            var param = pair[i].split('=');
           _data[param[0]] = param[1];
        }
    }
    return _data;
}


function isset(element) {
    if(typeof element != 'undefined') {
        return element.length > 0;
    } else
        return false;
}

// toggleClicked
jQuery.fn.clickToggle = function(a,b) {
  var ab=[b,a];
  function cb(){ ab[this._tog^=1].call(this); return false; }
  return this.on("click", cb);
};

/*
 * parce url
 **/
function parseUrlQuery() {
    var data = {};
    if(location.search) {
        var pair = (location.search.substr(1)).split('&');
        for(var i = 0; i < pair.length; i ++) {
            var param = pair[i].split('=');
            data[param[0]] = param[1];
        }
    }
    return data;
}

/*
 * parce string serilize
 **/
function parseQuery( str ) {
    var data = {};
    if(typeof str == 'string') {
        var pair = (str).split('&');
        for(var i = 0; i < pair.length; i ++) {
            var param = pair[i].split('=');
            data[param[0]] = param[1];
        }
    } else if(typeof str == 'object') {
        $.each(str, function(_k, _val) {
            if(_val.name)
                data[ _val.name ] = (_val.value) ? _val.value : null;
        });
    }
    return data;
}

/*
 * Display error massenge
 * @param {type} $_msg
 * @returns {undefined}
 */
function die( $_msg ) {
    console.log( $_msg );
}

/*
* Ajax function.
* return json result
**/
function getAjaxForm(path, params, options) {
    if(!options) options = {};
    var settings = $.extend( {
        'dataType': 'json',
        'async': false,
        'crossDomain': false,
        'type': 'POST',
        'cache': true
    }, options || {});
    console.log( settings );
    if(!path) {
        console.log('enter url AJAX!');
        return null;
    }
    var res = $.ajax({
        url: path,
        dataType: settings.dataType,
        async: settings.async,
        crossDomain: settings.crossDomain,
        type: settings.type,
        cache: settings.cache,
//        success: function() {
//        },
//        complete: function(){
//        },
        data: {
            params: params
        }
    }).responseText;
    console.log(res);
    res = eval('['+res+']');
    var obj = res[0];
    return obj;
}
/*
* JSONP
*
*/
function _getAJAX( path, params, options ) {
    if(!options) options = {};
    var settings = $.extend( {
        'dataType': 'jsonp',
        'jsonp': "callback",
        'async': false,
        'crossDomain': false,
        'type': 'POST',
        'cache': true
    }, options || {});
    console.log( settings );
    if(!path) {
        console.log('enter url AJAX!');
        return null;
    }
    return $.ajax({
        type: settings.type,
        async: settings.async,
        url: path,
        data: params,
        dataType: settings.dataType,
        jsonp: settings.jsonp,
        crossDomain: settings.crossDomain,
        cache: settings.cache,
    });
}
/*
*
* @param {type} $_msg
* @returns {undefined}
*/
function getJsonp( _url, _data ) {
    if(typeof _data != 'object') {
        die('Data not object!');
        return;
    }
    return $.ajax({
        type: "GET",
        async: false,
        url: _url,
        data:_data,
        dataType: "jsonp",
        jsonp: "callback",
        crossDomain: true
    });
}

$(document).ready(function(){
    // $.noConflict();
    $('html, body').on('click', function() {
        if($('#hedare-phones ul').is(':visible'))
            $('#hedare-phones ul').fadeOut();
    });
    
    $('#hedare-phones a').on('click', function(event) {
       event.preventDefault();
       var _list_phone = $(this).next();
       // alert('bal');
       if(_list_phone.is(':visible')) {
           _list_phone.fadeOut();
       } else {
           _list_phone.fadeIn();
       }
       
       return false;
    });
    
    // nivoSlider
    jQuery('.sliderHome').nivoSlider({
            effect: 'fold', // Specify sets like: 'fold,fade,sliceDown'
            slices: 15, // For slice animations
            boxCols: 8, // For box animations
            boxRows: 4, // For box animations
            animSpeed: 500, // Slide transition speed
            pauseTime: 3000, // How long each slide will show
            startSlide: 2, // Set starting Slide (0 index)
            directionNav: false, // Next & Prev navigation
            controlNav: false, // 1,2,3... navigation
            controlNavThumbs: false, // Use thumbnails for Control Nav
            pauseOnHover: true, // Stop animation while hovering
            manualAdvance: false, // Force manual transitions
            prevText: 'Prev', // Prev directionNav text
            nextText: 'Next', // Next directionNav text
            randomStart: true, // Start on a random slide
            beforeChange: function(){}, // Triggers before a slide transition
            afterChange: function(){}, // Triggers after a slide transition
            slideshowEnd: function(){}, // Triggers after all slides have been shown
            lastSlide: function(){}, // Triggers when last slide is shown
            afterLoad: function(){} // Triggers when slider has loaded
    });
	
});
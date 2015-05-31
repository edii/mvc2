(function($) {
	$.fn.scrollPagination = function(options) {
		var callbacks = $.Callbacks();
		var settings = { 
			nop     : 3, 
			offset  : 0, 
			error   : 'empty products!', 
			delay   : 500, 
			scroll  : true,
                        data    : false,
                        json    : false,
                        _bpage  : true,
                        append  : '.box-filter-content',
                        item    : '.box-filter-content a',
                        load_filter : 'all',
                        _sort       : 'asc',    
                        _callback: function( $this, items ) {},
		}
		
		if(options) {
			$.extend(settings, options);
		}
		
                function setCallback( $this, data ) {
                    $settings._callback( $this, data );
                }
                
		return this.each(function() {		
			
			$this = $(this);
			$settings = settings;
			var offset = $settings.offset;
			var busy = false, $filterActive = 'all'; 
			
			if($settings.scroll == true) $initmessage = 'Load <span class="loader-effects"></span>';
			else $initmessage = 'Done <span class="loader-effects"></span>';
			
                        if(!$this.find($settings.append).length)
                            $this.append('<div class="col-lg-12 col-md-12 col-sm-12 left"><div class="box-filter-content"></div></div>');
                        if(!$this.find('.loading-bar').length)
                            $this.append('<div class="col-lg-12 col-md-12 col-sm-12 left"><div class="loading-bar">'+$initmessage+'</div></div>');
			
                        $('.master-container .filter').on('click', function() {
                            if($(this).attr('data-filter')) 
                                $filterActive = $(this).attr('data-filter');
                            return $filterActive;
                        });
                        
			function getData( status ) {
                            // callbacks.add( setCallback );
                            var state = false, 
                                _shows = false, 
                                _data = {
                                    minID: false,
                                    maxID: false
                                },
                                _countShows = false;

                            if(_data) {
                                $settings.data = $.extend($settings.data, _data);
                            }    

                            $.post('/shop/ajax/', {
                                number        : $settings.nop,
                                offset        : offset,
                                data          : $settings.data,
                                json          : ($settings.json) ? 1 : 0,
                            }, function(data) {
                                var _data = false;
                                if($settings.json) {
                                    _data = data.result;
                                } else {
                                    _data = data;
                                }

                                console.log( _data );

                                $this.find('.loading-bar').html($initmessage);

                                //console.log( 'Start!' );
                                offset = offset+$settings.nop;        
                                busy = false;        

                            });
					
			}	
			
			getData();
			
                        if(!$this.find( $settings.item ).length) {
                            $this.find('.loading-bar').html('Load <span class="loader-effects"></span>');
                        }
                        
			if($settings.scroll == true) {
				$(window).scroll(function() {
					
					if($(window).scrollTop() + $(window).height() > $this.height() && !busy) {
						busy = true;
						$this.find('.loading-bar').html('Load <span class="loader-effects"></span>');
						setTimeout(function() {
                                                    getData();
						}, $settings.delay);
							
					}	
				});
			}
			
			$this.find('.loading-bar').click(function() {
				if(busy == false) {
					busy = true;
					getData();
				}
			
			});
			
		});
	}

})(jQuery);
/* end */
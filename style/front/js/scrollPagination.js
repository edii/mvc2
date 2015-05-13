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
                            $this.append('<div class="box-filter-content"></div>');
                        if(!$this.find('.loading-bar').length)
                            $this.append('<div class="loading-bar">'+$initmessage+'</div>');
			
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
                                if($this.mixItUp('isLoaded')){
                                    var state = $this.mixItUp('getState'),
                                         _shows = $('.box-filter-content .mix:visible');
                                }
                                if(_shows.length) {
                                    var _ids = new Array;
                                    $.each(_shows, function(key, value){
                                        console.log(value);
                                        if(value && $(value).attr('data-sort').length) {
                                            var id = parseInt($(value).attr('data-sort'));
                                            _ids.push(id);
                                        }
                                    });
                                    _countShows = (_ids.length > 0) ? _ids.length : 0;
                                    _data.maxID = Math.max.apply(Math,_ids);
                                    _data.minID = Math.min.apply(Math,_ids); 
                                    
                                    console.log(_countShows);
                                    if(_countShows != offset )
                                         offset = _countShows;
                                    
                                }
                                if(_data) {
                                    $settings.data = $.extend($settings.data, _data);
                                }    
                                
                                $settings._sort = (state) ? state.activeSort.replace(/^sort:/, '') : $settings._sort;
                                
                                console.log( $settings.data );
				$.post('/modules/mod_ajax/ajax.php', {
                                    
                                        number        : $settings.nop,
                                        offset        : offset,
                                        data          : $settings.data,
                                        json          : ($settings.json) ? 1 : 0,
                                        _sort         : $settings._sort,
                                        _filters      : ($filterActive != 'all') ? $filterActive : $filterActive,
                                        _type         : 'AJAX_CATALOG_PRODUCTS',  
                                        // _filter       : (state) ? state.activeFilter : false,
                                        //_category : ($filterActive != 'all') ? $filterActive.replace(/^.category-/,'') : $filterActive,
					    
				}, function(data) {
                                        var html = 'undefined';
                                        if($settings.json) {
                                            html = data.result;
                                        } else {
                                            html = data;
                                        }

					$this.find('.loading-bar').html($initmessage);
						
					if(html == "" 
                                                || html == "\n"
                                                || typeof html == 'undefined') { 
                                                $this.find('.loading-bar').hide();
					} else {
						
					    offset = offset+$settings.nop; 
						
                                            if(html) {
                                                $.each(html, function(key, value) {
                                                    var _el = value._html;
//                                                    var _el = $('<li></li>')
//                                                    .attr({ "data-sort" : value._id })
//                                                    .attr({"data-category": value._category})
//                                                    .addClass("mix")
//                                                    .addClass('manufacture-'+value._category)
//                                                    .html( value._id );
                                                      //$this.find( $settings.append ).append(_el);
                                                    if($this.mixItUp('isLoaded')) {  
                                                        $this.find( $settings.append ).append(_el);
                                                        // $this.mixItUp('append', value._id, _el, {filter: $filterActive, sort: $settings._sort}); // {filter: 'all'}
                                                        $this.mixItUp('update_targets');
                                                    } else {
                                                        $this.find( $settings.append ).append(_el);
                                                        $this.mixItUp({
                                                                selectors: {
                                                                    target: '.box-filter-content .mix',
                                                                    filter: '.filter',
                                                                    sort: '.sort'
                                                                },
                                                                callbacks: {
                                                                    onMixLoad: function(){
                                                                        console.log('MixItUp ready!');
                                                                    },
                                                                    onMixFail: function(){
                                                                        console.log("No elements found matching");
                                                                    }
                                                                },
                                                                debug: {
                                                                    enable: true,
                                                                    mode: 'verbose'
                                                                },
                                                                _activeSort: 'asc',
                                                                _activeFilter: 'all',
                                                            });
                                                    }
                                                    // $('#SandBox').append(mixDiv);
                                                });
                                                //$this.mixItUp('update_targets');
                                            }
                                                    
//                                                    if($this.mixItUp('isLoaded')){
//                                                        var s = $this.mixItUp('getState'),
//                                                             s_shows = s.$show;
//                                                         console.log('---------- S SHOW --------------');
//                                                         console.log(s_shows);
//                                                         console.log('-----------S END -----------');
//                                                    }
                                                    
                                            busy = false;
					}	
						
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
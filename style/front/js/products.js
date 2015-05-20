$(document).ready(function(){
    $toggleLayout = $('#ToggleLayout'), $senbox = $('.box-category-products');
    $mode = '';
    
    /* ---- init scrollPagination ---- */
    if($senbox.length) {

        if(!$senbox.mixItUp('isLoaded') && $('.box-filter-content .mix').length){
            $senbox.mixItUp({
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

//                                animation: {
//                                    animateChangeLayout: true, // Animate the positions of targets as the layout changes
//                                    animateResizeTargets: true, // Animate the width/height of targets as the layout changes
//                                    effects: 'fade rotateX(-40deg) translateZ(-100px)'
//                                },

//                                controls: {
//                                    toggleFilterButtons: true,
//                                    toggleLogic: 'and'
//                                },
            });
        }

        $senbox.scrollPagination({

            nop     : 4,
            offset  : 0, 
            error   : 'empty products!', 
            delay   : 100, 
            scroll  : true, 
            item    : '.box-filter-content .mix',
            data    : { 
                'category': $senbox.attr('data-load-category-id'),
            },
            _callback: function(elements, data) {
                //$('#SandBox').mixItUp('forceRefresh');
            },
            json  : true,
            _bpage: false,

        });
    }
    /* ---- END ---- */
    
    $toggleLayout.on("click",function(){
        
        if(""=== $mode){
            $mode = 'list';
            $senbox.mixItUp('changeLayout', {
                    display: 'block',
                    containerClass: 'list'
            }, function(state){
                    $toggleLayout.addClass("grid-icon");
            });
            
        } else {
            $mode = '';
            $senbox.mixItUp('changeLayout', {
                    display: 'inline-block',
                    containerClass: ''
            }, function(state){
                    $toggleLayout.removeClass("grid-icon");
            });
        }    
        
                
    });
    
    // $('#SandBox').mixItUp();
});
<div id="box-products" class="row">
    <div class="col-lg-12 col-md-12 col-sm-12 left">
        <?php foreach($products as $product): ?>
        <div class="col-sm-6 col-md-4 product-item">
            <div class="thumbnail">
                <h4 class="text-center">
                    <span class="label label-info"><a href="/<?php echo $BaseUrl; ?>/<?= $product -> alias ?>"><?= $product -> name ?></a></span>
                </h4>
                <img src="http://placehold.it/650x450&amp;text=Galaxy S5" class="img-responsive">
                <div class="caption">
                    <div class="row">
                        <div class="col-md-6 col-xs-6">
                            <h3><?= $product -> name ?></h3>
                        </div>
                        <div class="col-md-6 col-xs-6 price">
                            <h3>
                            <label>$<?= $product -> price ?></label></h3>
                        </div>
                    </div>
                    <p><?= $product -> description ?></p>
                    <div class="row">
                        <div class="col-md-6">
                            <a class="btn btn-primary btn-product"><span class="glyphicon glyphicon-thumbs-up"></span> Like</a> 
                        </div>
                        <div class="col-md-6">
                            <a href="#" class="btn btn-success btn-product">
                                <span class="glyphicon glyphicon-shopping-cart"></span> Buy</a>
                        </div>
                    </div>

                    <p> </p>
                </div>
            </div>
        </div>
	<?php endforeach; ?>		
    </div>
</div>



<?php /*
<div class="master-container">
        <section>
            <div class="control-bar cetegoties-control-bar">
                    <div class="group left">
                            <label>Sort:</label>
                            <span data-sort="random" class="btn btn-default sort active">Random</span>
                            <span data-sort="sort:asc" class="btn btn-default sort">Ascending</span>
                            <span data-sort="sort:desc" class="btn btn-default sort">Descending</span>
                    </div>
                    <div class="group left">
                            <label>Filter:</label>
                            <span data-filter="all" class="btn btn-default filter active">All</span>
                            <span data-filter=".manufacture-10" 
                                  class="btn btn-default filter">
                                Test 1
                            </span>
<!--                            <span data-filter=".manufacture-1" class="btn btn-default filter">Blue</span>
                            <span data-filter=".manufacture-2" class="btn btn-default filter">Green</span>-->
                            <span data-filter="none" class="btn btn-default filter">None</span>
                            <span class="btn btn-default toggle-layout" id="ToggleLayout">&nbsp;<i class="glyphicon glyphicon-th-list" aria-hidden="true"></i></span>
                            <!-- glyphicon glyphicon-th -->
                    </div>
            </div>

<div class='box-category-products' data-load-category-id="1">
    <ul id="box-list-products" 
        class="large-block-grid-4 products-grid box-filter-content">
        <li class="mix manufacture-1" data-sort="1" data-category="1">1</li>
        <li class="mix manufacture-2" data-sort="2" data-category="2">2</li>
        <li class="mix manufacture-3" data-sort="3" data-category="3">3</li>
        <li class="mix manufacture-4" data-sort="4" data-category="4">4</li>
        <li class="mix manufacture-5" data-sort="5" data-category="5">5</li>
        <li class="mix manufacture-6" data-sort="6" data-category="6">6</li>
        <li class="mix manufacture-7" data-sort="7" data-category="7">7</li>
    </ul> 
    <div class="gap"></div>
    <div class='loading-bar'></div>
</div> 
            
  */ ?>         
            
<?php
   // $this->getBox('hello/test');
?>

<?php
    // $this->renderView('db', ['dataProvider' => 'test render']);
?>
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
<?php
   // $this->getBox('hello/test');
?>

<hr /> db

<?php
    // $this->renderView('db', ['dataProvider' => 'test render']);
?>
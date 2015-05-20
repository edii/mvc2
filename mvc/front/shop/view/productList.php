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
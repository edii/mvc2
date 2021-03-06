<?php
$_class = (!isset($parent) and !$parent) ? 'sub': '';
?>
<?php if(is_array($tree) and count($tree) > 0 and $validate): ?>
<div class="sidenav">

    <div class="sidebar-widget" style="margin: -1px 0 0 0;">
        <h5 class="title" style="margin-bottom:0">Navigation</h5>
    </div><!-- End .sidenav-widget -->

    <div class="mainnav">
        <ul>
            <?php foreach ($tree as $_items): ?>
                <li>
                    <div class="section-item">
                        <a href="/<?= _request_uri ?>/<?= $_items['url'] ?>">
                            <span class="icon16 icomoon-icon-stats-up"></span>
                            <?= $_items['name'] ?> 
                        </a>
                        <?php if(is_array($_items['childs']) and count($_items['childs']) > 0) { ?> 
                            <span class="notification red section-item-control">sub<?= count($_items['childs']) ?></span> 
                        <?php } ?> 
                    </div>
                    <?php if(is_array($_items['childs']) and count($_items['childs']) > 0): 
                            $this->render('tree', array('tree' => $_items['childs'], 'validate' => $validate));
                         endif; 
                     ?>
                </li>
            <?php endforeach; ?>
            
        </ul>
    </div>
</div><!-- End sidenav -->
<?php endif; ?>
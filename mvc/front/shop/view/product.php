<div id="box-product" class="row">
    <div class="col-lg-12 col-md-12 col-sm-12 left">
        
        <h1 class="detail-title"> 
            <?= $product['name'] ?> <?php if(isset($product['model'])): ?>(<?= $product['model'] ?>)<?php endif; ?> 
        </h1>
        <div class="detail-code pos-abs">
            Код товара
            <span class="detail-code-i block" name="goods_code"><?= $product['code'] ?></span>
            <meta content="<?= $product['code'] ?>" itemprop="sku">
        </div>
        
        <div class="detail-content">
            <div class="detail-main-col clearfix row">
                <div class="col-lg-8 col-md-8 col-sm-8">
                    
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <!-- images gallery -->
                            <div id="image_block" class="detail-img">
                        <div id="preview_scroller" class="detail-img-thumbs">
                            <div name="screen" class="menu-view-slider">
				<div class="slider-at">
                                    <a data-direction="left" 
                                       name="controls" 
                                       class="sprite-side slider-at-link hidden" 
                                       href="#">up</a>
				</div>
				<div class="slider-ab">
                                    <a data-direction="right" 
                                       name="controls" 
                                       class="sprite-side slider-ab-link" href="#">down</a>
				</div>

				<div id="preview_container" 
                                     class="slider-inner-h detail-img-thumbs-slider" 
                                     style="height: 150px;">
                                    <div name="elems-container" 
                                         class="detail-img-thumbs-l" 
                                         style="height: 225px;">

                                            <div name="scroll-element" class="clearfix">
                                                <div class="detail-img-thumbs-l-i">
                                                    <a onclick="document.fireEvent('photoPopup', {extend_event: [{name: 'eventContext', value: 'miniPhoto'}, {name: 'goods_id', value: 637710}]});" class="detail-img-thumbs-l-i-link" target="_blank" href="http://i2.rozetka.ua/goods/48470/record_48470360.jpg"><img width="40" height="36" style="border: medium none; visibility: visible; opacity: 1;" title="Asus N750JK (N750JK-T4024H)" alt="Asus N750JK (N750JK-T4024H)" src="http://i1.rozetka.ua/goods/48470/record_48470405.jpg"></a>
                                                </div>
                                            </div>
																												
													
                                    </div>
				</div>
                            </div>
                        </div>

                        <figure class="detail-img-inner">
                            <div class="pos-fix">
                                <a title="Акция MasterCard" id="promo_tag_2_637710" href="#">
                                    <i class="g-addprice-label">
                                        <img alt="Акция" 
                                             src="http://i1.rozetka.ua/promotions/tags/0/54.png" 
                                             class="g-addprice-label-img">
                                    </i>
                                </a>
                                <a target="_blank" 
                                   href="http://i1.rozetka.ua/goods/48470/record_48470295.jpg" 
                                   class="responsive-img">
                                    <img width="400" height="266" 
                                         itemprop="image" title="Asus N750JK (N750JK-T4024H)" 
                                         alt="Asus N750JK (N750JK-T4024H)" 
                                         src="http://i1.rozetka.ua/goods/48470/record_48470305.jpg">
                                </a>
                            </div>
                            <div style="display: none" class="g-id">637710</div>
                        </figure>
                    </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6"></div>
                    </div>
                    <!-- DESCRIPTIONS -->
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="descriptions">
                                <?= $product['description'] ?>
                            </div>    
                        </div>
                    </div>
                    
                    
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4"></div>
            </div>
        </div>
        <?php
            echo "<pre>"; var_dump( $product ); echo "</pre>";
        ?>
        
    </div>
</div>
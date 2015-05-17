<div id="menu-subnav">
      <div class="container">
          <div class="row">
              
              <div class="col-lg-12">
                  <div class="subnavStaticPage">
                      <ul class="nav navbar-nav right">
                          <li>
                              <a href="#">Static page!</a>
                          </li>
                      </ul> 
                  </div>
              </div>
          </div>
          <div class="row">
              <div class="col-lg-12">
                  <div class="subnav">
                      <div id="bs-example-navbar-collapse-subnav" class="collapse navbar-collapse"> 
                          <ul class="nav navbar-nav left">
                            <?php foreach ($sections as $section_item): ?>
                                <li class="item <?php echo ($sections_actual['id'] === $section_item['id'])?"active":""; ?>" >
                                    <a href="/<?php echo $section_item['url']; ?>"><?php echo $section_item['name']; ?></a>
                                    <?php if(isset($sections_actual['childs'])) : ?>
                                        <?= $this -> renderView('menu_subnavList', array(
                                                'sections'=> $sections_actual['childs'],
                                                '_child' => true,
                                            )) ?>
                                    <?php endif; ?>
                                </li>
                            <?php endforeach; ?>
                         </ul>
                      </div>
                  </div>
              </div>
                
          </div>
      </div>
  </div>
<?php if(is_array($sections) and count($sections) > 0): ?>
<div id="menu-subnav">
      <div class="container">
          <div class="row">
              
              <div class="col-lg-12">
                  <div class="subnavStaticPage clearfix">
                      <ul class="nav navbar-nav right">
                          <?php foreach ($sections as $section_secondery): 
                                    if($section_secondery['styleMenu'] == 'secondery') { ?>
                          <li class="item <?php echo ($sections_actual['id'] === $section_secondery['id'])?"active":""; ?>" >
                            <a href="/<?php echo $section_secondery['url']; ?>"><?php echo $section_secondery['name']; ?></a>
                          </li>
                                    <?php } 
                            endforeach;
                          ?>
                      </ul> 
                  </div>
              </div>
          </div>
          <div class="row">
              <div class="col-lg-12">
                  <div class="subnav">
                      <div id="bs-example-navbar-collapse-subnav" class="collapse navbar-collapse"> 
                          <ul class="nav navbar-nav left">
                            <?php 
                            
                            foreach ($sections as $section_first): 
                               
                                    if($section_first['styleMenu'] == 'first' || !$section_first['styleMenu']) { ?>
                                <li class="item <?php echo ($sections_actual['id'] === $section_first['id'])?"active":""; ?>" >
                                    <a href="/<?php echo $section_first['url']; ?>"><?php echo $section_first['name']; ?></a>
                                    <?php if(isset($section_first['childs'])) : ?>
                                        <?= $this -> renderView('menu_subnavList', array(
                                                'sections'=> $section_first['childs'],
                                                '_child' => true,
                                            )) ?>
                                    <?php endif; ?>
                                </li>
                                    <?php }
                            endforeach; ?>
                         </ul>
                      </div>
                  </div>
              </div>
                
          </div>
      </div>
  </div>
<?php endif; ?>
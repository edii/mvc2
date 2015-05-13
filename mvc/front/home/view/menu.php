 <ul class="nav navbar-nav">
    <!--<li class="active"><a href="#">Home</a></li>-->
    <?php foreach ($front_section as $front_section_item): ?>
        <li class="<?php echo ($sections_actual['id'] === $front_section_item->id)?"active":""; ?>" >
            <a href="/<?php echo $front_section_item->url; ?>"><?php echo $front_section_item->name; ?></a>
        </li>
    <?php endforeach; ?>
 </ul>
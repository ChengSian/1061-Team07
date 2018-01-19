<div class="links">
    <hr>
   <?php 
    $create=route('brands.create');
    $index=route('brands.index');
    $quit=route('brands.quit');
    $show=route('brands.upshow');
    echo "<a href='$index'>品牌</a>";
    echo "<a href='$create'>新增品牌</a>";
    echo "<a href='$show'>上架品牌</a>";
    echo "<a href='$quit'>下架品牌</a>";
   ?>
</div>
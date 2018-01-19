<div class="title m-b-md animated fadeInUp"
     style="font-family: 'Press Start 2P', cursive; color:chocolate; padding-top: 15px">
    {{--智慧型手機資料系統--}}
    Smart Phones DB
</div>
<div class="links">
    <?php
    $create = route('phones.create');
    $index = route('phones.index');
    $quit = route('phones.quit');
    $show = route('phones.upshow');
    echo "<a href='$index'>手機</a>";
    echo "<a href='$create'>新增手機</a>";
    echo "<a href='$show'>上架手機</a>";
    echo "<a href='$quit'>下架手機</a>";
    ?>
    <hr>
</div>
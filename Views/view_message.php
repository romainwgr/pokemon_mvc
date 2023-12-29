<?php require 'view_begin.php';
if(isset($data)){
    foreach($data as $d){
        echo htmlspecialchars($d);
    }
    
}


require 'view_end.php';
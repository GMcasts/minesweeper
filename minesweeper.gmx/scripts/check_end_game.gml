valid = true;
for(i=0;i<o_board.bombs;i++){
    coords = o_board.bomb_location[i];
    rx = coords[0];
    ry = coords[1];
    o = instance_nearest(rx*128, ry*128, o_tile);
    if(o.image_index == 6 && ds_grid_get(o_board.board, rx, ry)==2){
        //alright
    }else{
        valid = false;
    }
}
return valid;
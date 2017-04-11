valid = true;
for (i=0;i<o_board.bombs;i++) {
    coords = o_board.bomb_location[i];
    
    comma_location = string_pos(",", coords);
    first = real(string_copy(coords, 1, comma_location-1));
    second = real(string_copy(coords, comma_location+1, string_width(coords)));

    rx = first;
    ry = second;
    o = ds_grid_get(o_board.tile_object_grid, rx, ry);
    //o = instance_nearest(rx*128, ry*128, o_tile);
    if(o.image_index == 6 && ds_grid_get(o_board.board, rx, ry)==2){
        //alright
    }else{
        valid = false;
    }
}
return valid;

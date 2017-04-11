rx = argument[0];
ry = argument[1];
terminate = argument[2];
if(rx-1 >= 0){
    tx = (rx-1)*o_board.TILE_WIDTH;
    ty = ry*o_board.TILE_WIDTH;

    o = instance_nearest(tx, ty, o_tile)
    if(o.image_index != 2){
        val = ds_grid_get(o_board.board, rx-1, ry);
        if(val != 2 && val != 6){
            if(o.image_index == 6) {
                o_board.flags += 1;
            }        
            o.image_index = val;
            open_left_tiles(rx-1,ry, false);
            //open_right_tiles(rx-1,ry, false);
            //open_top_tiles(rx-1,ry, false);
            //open_bottom_tiles(rx-1,ry,false);
        }
    }
}


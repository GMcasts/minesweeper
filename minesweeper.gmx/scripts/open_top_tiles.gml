rx = argument[0];
ry = argument[1];
terminate = argument[2];
if(ry-1 >= 0){
    dx = rx*o_board.TILE_WIDTH;
    dy = (ry-1)*o_board.TILE_WIDTH;
    
    q = instance_nearest(dx, dy, o_tile)
    if(q.image_index != 2){

        val = ds_grid_get(o_board.board, rx, ry-1);
        if(val != 2 && val != 6){
            if(q.image_index == 6) {
                o_board.flags += 1;
            }        
            q.image_index = val;
            //open_left_tiles(rx,ry-1, false);
            //open_right_tiles(rx,ry-1, false);
            open_top_tiles(rx,ry-1, false);
            //open_bottom_tiles(rx,ry-1,false);
            //open_top_tiles(rx, ry-1, false);
        }
    }
}

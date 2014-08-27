//ARGS: coordinates
//RETURNS: true (success)
/*
  _ _ _ _ _ _
0|x|o|1|1|1|_|
1|o|o|1|B|1|_|
2|_|_|1|1|1|_|
3|_|_|_|_|_|_|
4|_|_|_|_|_|_|
5|_|_|_|_|_|_|
  0 1 2 3 4 5

  _ _ _ _ _ _
0|o|x|1|1|1|_|
1|o|o|1|B|1|_|
2|o|o|1|1|1|_|
3|o|o|1|1|1|_|
4|o|1|2|B|1|_|
5|o|1|B|2|1|_|
  0 1 2 3 4 5

*/

// fails because of locking?

rx = argument[0];
ry = argument[1];
terminate = argument[2];

if(rx+1 <= 5){
    dx = (rx+1)*128;
    dy = ry*128;
    
    q = instance_nearest(dx, dy, o_tile)
    if(q.image_index == 0){
        if(ds_grid_get(o_board.board, rx+1, ry) == 1){
            q.image_index = 1;
            open_adjacent_tiles(rx+1,ry, false);
        }
    }
}

if(rx-1 >= 0){
    tx = (rx-1)*128;
    ty = ry*128;

    o = instance_nearest(tx, ty, o_tile)
    if(o.image_index == 0){
        if(ds_grid_get(o_board.board, rx-1, ry) == 1){
            o.image_index = 1;
            open_adjacent_tiles(rx-1,ry, false);
        }
    }
}






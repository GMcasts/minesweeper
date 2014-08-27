// ARGS: coordinates to the board
// RET: count of bombs adjacent to that piece
/*
(0,0)
valid points = [ (0,1), (1,0), (1,1) ] 
  _ _ _ _ _ _
0|x|o|_|_|_|_|
1|o|o|_|_|_|_|
2|_|_|_|_|_|_|
3|_|_|_|_|_|_|
4|_|_|_|_|_|_|
5|_|_|_|_|_|_|
  0 1 2 3 4 5

  (2,2)
valid points = [ (1,1), (1,2), (1,3), (2,1), (2,3), (3,1), (3,2), (3,3) ]
  _ _ _ _ _ _
0|_|_|_|_|_|_|
1|_|o|o|o|_|_|
2|_|o|x|o|_|_|
3|_|o|o|o|_|_|
4|_|_|_|_|_|_|
5|_|_|_|_|_|_|
  0 1 2 3 4 5

-1,-1
-1, 0
-1, 1
0, -1
0, 1
1, -1
1, 0
1, 1
*/
count = 0;
rx = argument[0];
ry = argument[1];
// right side checking
if((rx+1 <= 5 && ry-1 >= 0) && ds_grid_get(o_board.board, rx+1, ry-1)) {
    if(bomb(rx+1,ry-1)){
        count += 1;
    }  
}

if((rx+1 <= 5 && ry >= 0) && ds_grid_get(o_board.board, rx+1, ry)) {
    if(bomb(rx+1,ry)){
        count += 1;
    }
}

if((rx+1 <= 5 && ry+1 >= 0) && ds_grid_get(o_board.board, rx+1, ry+1)) {
    if(bomb(rx+1,ry+1)){
        count += 1;
    }
}
//middle
if(ry-1>=0 && ds_grid_get(o_board.board, rx,ry-1)) {
    if(bomb(rx,ry-1)){
        count += 1;
    }
}
if(ry+1<=5 && ds_grid_get(o_board.board, rx,ry+1)) {
    if(bomb(rx,ry+1)){
        count += 1;
    }
}
// left side checking
if((rx-1 >= 0 && ry-1 >= 0) && ds_grid_get(o_board.board, rx-1, ry-1)) {
    if(bomb(rx-1,ry-1)){
        count += 1;
    }  
}

if((rx-1 >= 0 && ry >= 0) && ds_grid_get(o_board.board, rx-1, ry)) {
    if(bomb(rx-1,ry)){
        count += 1;
    }
}

if((rx-1 >= 0 && ry+1 >= 0 && ry+1 <=5) && ds_grid_get(o_board.board, rx-1, ry+1)) {
    if(bomb(rx-1,ry+1)){
        count += 1;
    }
}


switch count{
    case 1: ds_grid_set(o_board.board,rx,ry,3); break;
    case 2: ds_grid_set(o_board.board,rx,ry,4); break;
    case 3: ds_grid_set(o_board.board,rx,ry,5); break;
    case 4: ds_grid_set(o_board.board,rx,ry,7); break;
    case 5: ds_grid_set(o_board.board,rx,ry,8); break;
    case 6: ds_grid_set(o_board.board,rx,ry,9); break;
    case 7: ds_grid_set(o_board.board,rx,ry,10); break;
    case 8: ds_grid_set(o_board.board,rx,ry,11); break;

    default: ds_grid_set(o_board.board,rx,ry,1); break;
}

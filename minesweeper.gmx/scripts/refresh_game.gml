instance_destroy();
with(o_board){
    instance_destroy();
}
with(o_tile){
    instance_destroy();
}
instance_create(0,0,o_board);
if(argument[0])
  {
    global.wins += 1;
  }


global.attempts += 1;


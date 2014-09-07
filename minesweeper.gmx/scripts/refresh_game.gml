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
    o_score.TOTAL_WINS += 1;
    global.wins += 1;
    if(global.wins >= 5 && !o_score.TIMED_MODE_UNLOCKED)
      {
      o_score.TIMED_MODE_UNLOCKED = true;
      }
  }

o_score.TOTAL_ATTEMPTS += 1;
global.attempts += 1;

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
    write_to_ini("total_wins", o_score.TOTAL_WINS);
    global.wins += 1;
    if(global.wins >= 5 && !o_score.TIMED_MODE_UNLOCKED)
      {
      o_score.TIMED_MODE_UNLOCKED = 1;
      write_to_ini("time_mode_unlocked", o_score.TIMED_MODE_UNLOCKED);
      }
  }

o_score.TOTAL_ATTEMPTS += 1;
write_to_ini("total_attempts", o_score.TOTAL_ATTEMPTS);
global.attempts += 1;
